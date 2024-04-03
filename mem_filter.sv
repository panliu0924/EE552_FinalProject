`timescale 1ns/1fs
module AND_Gates(input Lreq, input Rack, input Rreq, output logic out1, output logic out2);
logic Lack, Lreq_invert, Lack_invert, Rack_invert;
initial begin
Lack = 0;
end

always @(*) begin 
Lreq_invert <= #1 ~Lreq;
Lack_invert <= #1 ~Lack;
Rack_invert <= #1 ~Rack;
Lack <= Rack;
end
always @(*) begin
out1 <= #2 Lreq_invert & Lack & Rack;
out2 <= #2 Lreq & Lack_invert & Rack_invert;
end
endmodule

module OR(input logic in1, input logic in2, output logic DFF_clk);
always @(*) begin
DFF_clk <= #2 in1 | in2;
end
endmodule

module FF_req(input Rreq_in, output reg Rreq_out, input DFF_clk);
initial begin
Rreq_out = 0;
end
always @(posedge DFF_clk) begin
    Rreq_out <= Rreq_in;
end
endmodule

module Invert(input Rreq, output reg Rreq_inverted);
always @(*) begin
    Rreq_inverted <= #1 ~Rreq;
end
endmodule

module FF_data(input [7:0] Ldata, output reg [7:0] Rdata, input DFF_clk);
always @(posedge DFF_clk) begin
    Rdata <= #2 Ldata;
end
endmodule

module FF_data_2X(
input [7:0] Ldata1,
input [7:0] Ldata2,
input DFF_clk,
output reg [7:0] Rdata1,
output reg [7:0] Rdata2);
always @(posedge DFF_clk) begin
Rdata1 <= #2 Ldata1;
Rdata2 <= #2 Ldata2;
end
endmodule

module click_controller(input Lreq, input Rack, input [7:0] Ldata, output Lack, output reg Rreq, output [7:0] Rdata);
logic out1, out2, DFF_clk, Rreq_in, Rreq_out;
AND_Gates AND0(.Lreq(Lreq), .Rack(Rack), .Rreq(Rreq), .out1(out1), .out2(out2));
OR OR0(.in1(out1), .in2(out2), .DFF_clk(DFF_clk));
Invert INVERT(.Rreq(Rreq), .Rreq_inverted(Rreq_in));
FF_req FF0(.Rreq_in(Rreq_in),.Rreq_out(Rreq_out), .DFF_clk(DFF_clk));
FF_data FF1(.Ldata(Ldata), .Rdata(Rdata), .DFF_clk(DFF_clk));
initial begin
    DFF_clk = 0;
    Rreq = 0;
    Rreq_in = 0;
end
assign Lack = Rreq_out;
always @(*) begin
Rreq = Rreq_out;
end
endmodule


module mem_filter(interface noc_snn);
parameter FL = 12;
parameter BL = 4;
parameter WIDTH_data = 8;
parameter WIDTH_addr = 12;
parameter WIDTH_out_data = 13;
parameter DEPTH_F= 5;
parameter DEPTH_I =25;
parameter DEPTH_R =21;
//-------------------------------------------------------------//
//Data Signals
logic [WIDTH_addr-1:0] f_addr;
logic [WIDTH_data-1:0] f_data;
logic [WIDTH_data-1:0] mem_filter[DEPTH_F*DEPTH_F-1:0];
logic [1:0] Datatype; //Sent to Packetize
logic [1:0] Dest; //Sent to Packetize
//-------------------------------------------------------------//
//Click Controller Signals
logic Lreq, Rack, Rreq, Lack;
logic Lpacket, Rpacket;
click_controller CCT0(.Lreq(Lreq), .Rack(Rack), .Ldata(Lpacket), .Rreq(Rreq), .Lack(Lack), .Rdata(Rpacket));
//-------------------------------------------------------------//
initial begin


end

always @(*) begin
//send data
#BL;
Lreq = 1;
noc_snn.Receive(f_addr);
noc_snn.Receive(f_data);
mem_filter[f_addr] = f_data;
Datatype = 0;
Dest = 1;
#FL;

wait(Lack == 1);
//send data
#BL;
Lreq = 0;
noc_snn.Receive(f_addr);
noc_snn.Receive(f_data);
Ldata_f_addr = f_addr;
Ldata_f_data = f_data;
mem_filter[f_addr] = f_data;
#FL;
wait(Lack==0);
end

always begin
Rack = 0;
wait(Rreq == 1);
Rack = 1;
wait(Rreq == 0);
end

endmodule