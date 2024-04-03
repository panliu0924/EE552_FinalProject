

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

module click_controller_subtract(input Lreq, input Rack, input [7:0] Ldata1, input [7:0] Ldata2, output Lack, output reg Rreq, output [7:0] Rdata1, output [7:0] Rdata2);
logic out1, out2, DFF_clk, Rreq_in;
AND_Gates AND0(.Lreq(Lreq), .Rack(Rack), .Rreq(Rreq), .out1(out1), .out2(out2));
OR OR0(.in1(out1), .in2(out2), .DFF_clk(DFF_clk));
Invert INVERT(.Rreq(Rreq), .Rreq_inverted(Rreq_in));
FF_req FF0(.Rreq_in(Rreq_in),.Rreq_out(Rreq), .DFF_clk(DFF_clk));
FF_data_2X FF1(.Ldata1(Ldata1), .Ldata2(Ldata2),.Rdata1(Rdata1), .Rdata2(Rdata2), .DFF_clk(DFF_clk));
initial begin
    DFF_clk = 0;
    Rreq = 0;
end
assign Lack = Rreq;
endmodule

module Muller_C_Element(input A, input B, output reg C);
always @(*) begin 
    if(A == B)begin
        C <= #2 A;
        end
end
endmodule

module delayline_subtract(input din, output dout);
reg delayed_din;
assign dout = delayed_din;
always @(*) begin
  delayed_din <= #10 din;
end
endmodule

module subtractor(input [7:0] Rdata1, input [7:0] Rdata2, output reg [7:0]  difference);
always @(*) begin
    difference <= #12 Rdata1 - Rdata2;
end
endmodule


module subtractor_merge_click_controller(
input Lreq1, 
input Lreq2, 
input [7:0]Ldata1, 
input [7:0]Ldata2, 
input Rack3,
output Lack1,
output Lack2,
output delayed_Rreq3,
output [7:0] difference);
logic Rreq1, Rreq2, C_Rreq, Lack3, Rreq3;
logic [7:0] Rdata_join1, Rdata_join2, Rdata1, Rdata2;
click_controller CC0_merge(.Lreq(Lreq1), .Rack(Lack3), .Ldata(Ldata1), .Rreq(Rreq1), .Lack(Lack1), .Rdata(Rdata_join1));
click_controller CC1_merge(.Lreq(Lreq2), .Rack(Lack3), .Ldata(Ldata2), .Rreq(Rreq2), .Lack(Lack2), .Rdata(Rdata_join2));
click_controller_subtract CC0_subtract(.Lreq(C_Rreq), .Rack(Rack3), .Ldata1(Rdata_join1), .Ldata2(Rdata_join2), .Rreq(Rreq3), .Lack(Lack3), .Rdata1(Rdata1), .Rdata2(Rdata2));
Muller_C_Element C_Element_subtract0(.A(Rreq1), .B(Rreq2), .C(C_Rreq));
delayline_subtract Delay_subtract0(.din(Rreq3), .dout(delayed_Rreq3));
subtractor SUBTRACTOR0(.Rdata1(Rdata1), .Rdata2(Rdata2), .difference(difference));
endmodule

module copy_click_controller(
input Lreq1,
input Rack2,
input Rack3,
input [7:0] Ldata1,
output Lack1,
output Rreq2,
output Rreq3,
output [7:0] Rdata2,
output [7:0] Rdata3
);
logic Rreq1, C_Rack, Lack2, Lack3;
logic [7:0] Rdata1;
click_controller CCT0_copy(.Lreq(Lreq1), .Rack(C_Rack), .Ldata(Ldata1), .Rreq(Rreq1), .Lack(Lack1), .Rdata(Rdata1));
Muller_C_Element C_Element_subtract0(.A(Lack2), .B(Lack3), .C(C_Rack));
click_controller CCT1_copied(.Lreq(Rreq1), .Rack(Rack2), .Ldata(Rdata1), .Rreq(Rreq2), .Lack(Lack2), .Rdata(Rdata2));
click_controller CCT2_copied(.Lreq(Rreq1), .Rack(Rack3), .Ldata(Rdata1), .Rreq(Rreq3), .Lack(Lack3), .Rdata(Rdata3));
endmodule

module shift_click_controller(
input Lreq,
input Rack,
input [7:0] Ldata,
output Lack,
output Rreq,
output [7:0] Rdata
);
logic [7:0] shifted_Ldata;
click_controller CT_shift(.Lreq(Lreq), .Rack(Rack), .Ldata(shifted_Ldata), .Rreq(Rreq), .Lack(Lack), .Rdata(Rdata));
always @(*) begin
shifted_Ldata = Ldata << 1;
end
endmodule