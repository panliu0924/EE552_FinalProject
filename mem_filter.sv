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

module FF_data_4X(
input [WIDTH_data-1:0] Ldata,
input [WIDTH_addr-1:0] Laddr,
input [WIDTH_dest-1:0] Ldest,
input [WIDTH_datatype-1:0] Ldatatype,
input DFF_clk,
output reg [WIDTH_data-1:0] Rdata,
output reg [WIDTH_addr-1:0] Raddr,
output reg [WIDTH_dest-1:0] Rdest,
output reg [WIDTH_datatype-1:0] Rdatatype,);
parameter WIDTH_data = 8;
parameter WIDTH_addr = 12;
parameter WIDTH_dest = 4;
parameter WIDTH_datatype = 2;

always @(posedge DFF_clk) begin
Rdata <= #2 Ldata;
Raddr <= #2 Laddr;
Rdest <= #2 Ldest;
Rdatatype <= #2 Ldatatype;
end
endmodule

module click_controller_mem_filter(input Lreq, input Rack, output Lack, output reg Rreq, 
input [WIDTH_data-1:0] Ldata, output [WIDTH_data-1:0] Rdata
input [WIDTH_addr-1:0] Laddr, output [WIDTH_addr-1:0] Raddr)
input [WIDTH_dest-1:0] Ldest, output [WIDTH_dest-1:0] Rdest)
input [WIDTH_datatype-1:0] Ldatatype, input [WIDTH_datatype-1:0] Rdatatype);
parameter WIDTH_data = 8;
parameter WIDTH_addr = 12;
parameter WIDTH_dest = 4;
parameter WIDTH_datatype = 2;
logic out1, out2, DFF_clk, Rreq_in, Rreq_out;
AND_Gates AND0(.Lreq(Lreq), .Rack(Rack), .Rreq(Rreq), .out1(out1), .out2(out2));
OR OR0(.in1(out1), .in2(out2), .DFF_clk(DFF_clk));
Invert INVERT(.Rreq(Rreq), .Rreq_inverted(Rreq_in));
FF_req FF0(.Rreq_in(Rreq_in),.Rreq_out(Rreq_out), .DFF_clk(DFF_clk));
FF_data_4X FF_4X(.Ldata(Ldata), .Rdata(Rdata), 
.Laddr(Laddr), .Raddr(Raddr), 
.Ldest(Ldest), .Rdest(Rdest),
.Ldatatype(Ldatatype), Rdatatype(Rdatatype),
.DFF_clk(DFF_clk));
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
parameter WIDTH_dest = 4;
parameter WIDTH_datatype = 2;
parameter WIDTH_out_data = 13;
parameter DEPTH_F= 5;
parameter DEPTH_I =25;
parameter DEPTH_R =21;
//-------------------------------------------------------------//
//Data Signals
logic [WIDTH_addr-1:0] f_addr;
logic [WIDTH_data-1:0] f_data;
logic [WIDTH_addr-1:0] Raddr;
logic [WIDTH_data-1:0] Rdata;
logic [WIDTH_data-1:0] mem_filter[DEPTH_F*DEPTH_F-1:0];
logic [WIDTH_datatype-1:0] Ldatatype;
logic [WIDTH_datatype-1:0] Rdatatype;
logic [WIDTH_dest-1:0] Ldest; 
logic [WIDTH_dest-1:0] Rdest; 
//-------------------------------------------------------------//
//Click Controller Signals
logic Lreq, Rack, Rreq, Lack;
logic Lpacket, Rpacket;
click_controller_mem_filter CCT_M_filter(.Lreq(Lreq), .Rack(Rack), .Rreq(Rreq), .Lack(Lack), 
.Ldata(f_data), .Rdata(Rdata), 
.Laddr(f_addr), .Raddr(Raddr), 
.Ldest(Ldest), .Rdest(Rdest),
.Ldatatype(Ldatatype), Rdatatype(Rdatatype),);
packetize_mem_filter PCK_filter(interface router, .addr(), .data(), .dest(), .datatype());
//-------------------------------------------------------------//
initial begin
f_data = 0;
f_addr = 0;
Ldest = 0;
Ldatatype = 0;
end

always @(*) begin
#BL;
Lreq = 1;
noc_snn.Receive(f_addr);
noc_snn.Receive(f_data);
L_addr = f_addr;
L_data = f_data;
Ldest = 4'b1111;
Ldatatype = 0; //Filter
#FL;
wait(Lack == 1);
//send data
#BL;
Lreq = 0;
noc_snn.Receive(f_addr);
noc_snn.Receive(f_data);
L_addr = f_addr;
L_data = f_data;
Ldest = 4'b1111;
Ldatatype = 0; //Filter
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

module packetize_mem_filter(output reg [63:0] packet)
always begin

#BL


end


endmodule