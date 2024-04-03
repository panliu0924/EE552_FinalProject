interface intf;
logic ack, req;
logic [7:0] data;
endinterface

module AND_Gates(intf a, intf b, output logic out1, output logic out2);
logic areq_invert, aack_invert, back_invert;

initial begin
    b.req = 0;
    a.req = 0;
end
always @(*) begin 
areq_invert <= #1 ~a.req;
aack_invert <= #1 ~a.ack;
back_invert <= #1 ~b.ack;
a.ack <= b.req;
end
always @(*) begin
out1 <= #2 areq_invert & a.ack & b.ack;
out2 <= #2 a.req & aack_invert & back_invert;
end
endmodule

module OR(input logic in1, input logic in2, output logic DFF_clk);
always @(*) begin
DFF_clk <= #2 in1 | in2;
end
endmodule

module FF_req(intf b, input DFF_clk);
always @(posedge DFF_clk) begin
    b.req <= #3 ~b.req;
end
endmodule

module FF_data(intf a, intf b, input DFF_clk);
always @(posedge DFF_clk) begin
    b.data <= #2 a.data;
end
endmodule

module click_controller_2phase_tb();
logic out1, out2, DFF_clk;
intf a();
intf b();
AND_Gates AND0(.a(a), .b(b), .out1(out1), .out2(out2));
OR OR0(.in1(out1), .in2(out2), .DFF_clk(DFF_clk));
FF_req FF0(.b(b), .DFF_clk(DFF_clk));
FF_data FF1(.a(a), .b(b), .DFF_clk(DFF_clk));

initial begin
    a.data = 0;
    DFF_clk = 0;
    a.req = 0;
    b.ack = 0;
    b.req = 0;
end

always begin
a.req = 1;
//b.ack = 0;
a.data = a.data + 1;
wait(a.ack == 1);
a.req = 0;
//b.ack = 1;
a.data = a.data + 1;
wait(a.ack == 0);
end

always begin
b.ack = 0;
wait(b.req == 1);
b.ack = 1;
wait(b.req == 0);
end
endmodule

module click_controller_2phase(intf a, intf b);
logic out1, out2, DFF_clk;

AND_Gates AND0(.a(a), .b(b), .out1(out1), .out2(out2));
OR OR0(.in1(out1), .in2(out2), .DFF_clk(DFF_clk));
FF_req FF0(.b(b), .DFF_clk(DFF_clk));
FF_data FF1(.a(a), .b(b), .DFF_clk(DFF_clk));

initial begin
    a.data = 0;
    DFF_clk = 0;
    a.req = 0;
    b.ack = 0;
    b.req = 0;
end
endmodule

module click_controller_3stage_buffer_tb;
intf a();
intf b();
intf c();
intf d();
click_controller_2phase Click_CT0(a, b);
click_controller_2phase Click_CT1(b, c);
click_controller_2phase Click_CT2(c, d);


// always begin
// a.req = 1;
// d.ack = 0;
// a.data = a.data + 1;
// wait(a.ack == 1)
// a.req = 0;
// d.ack = 1;
// a.data = a.data + 1;
// wait(a.ack == 0);
// end


always begin
a.req = 1;
a.data = a.data + 1;
wait(a.ack == 1);
a.req = 0;
a.data = a.data + 1;
wait(a.ack == 0);
end

always begin
d.ack = 0;
wait(d.req == 1);
d.ack = 1;
wait(d.req == 0);
end

endmodule