module shift_click_controller_tb;
logic Lreq, Rack, Lack, Rreq;
logic [7:0] Ldata, Rdata;
shift_click_controller SHIFT_CCT(.Lreq(Lreq), .Rack(Rack), .Ldata(Ldata), .Rreq(Rreq), .Lack(Lack), .Rdata(Rdata));

initial begin
Ldata = 0;  
end

always begin
Lreq = 1;
Ldata = Ldata + 1;
wait(Lack == 1);
Lreq = 0;
Ldata = Ldata + 1;
wait(Lack==0);
end

always begin
Rack = 0;
wait(Rreq == 1);
Rack = 1;
wait(Rreq == 0);
end
endmodule

module copy_click_controller_tb;
logic Lreq, Rack2, Rack3, Lack, Rreq2, Rreq3;
logic [7:0] Ldata1, Rdata2, Rdata3;
copy_click_controller COPY_CCT(.Lreq1(Lreq), .Rack2(Rack2), .Rack3(Rack3), .Ldata1(Ldata1), .Lack1(Lack), .Rreq2(Rreq2), .Rreq3(Rreq3), .Rdata2(Rdata2), .Rdata3(Rdata3));

initial begin
Ldata1 = 0;  
end

always begin
Lreq = 1;
Ldata1 = Ldata1 + 1;
wait(Lack == 1);
Lreq = 0;
wait(Lack==0);
end

always begin
Rack3 = 0;
wait(Rreq3 == 1);
Rack3 = 1;
wait(Rreq3 == 0);
end

always begin
Rack2 = 0;
wait(Rreq2 == 1);
Rack2 = 1;
wait(Rreq2 == 0);
end
endmodule

module subtractor_merge_click_controller_tb;
logic Lreq1, Lreq2, Rack3, Lack1, Lack2, delayed_Rreq3;
logic [7:0] Ldata1, Ldata2, difference;
subtractor_merge_click_controller SUB_MERGE_CCT(.Lreq1(Lreq1), .Lreq2(Lreq2), .Ldata1(Ldata1), .Ldata2(Ldata2), .Rack3(Rack3), .Lack1(Lack1), .Lack2(Lack2), .delayed_Rreq3(delayed_Rreq3), .difference(difference));

initial begin
Ldata1 = 0;  
Ldata2 = 0;
Lreq1 = 0;
Lreq2 = 0;
Rack3 = 0;
Lack1 = 0;
Lack2 = 0;
delayed_Rreq3 =0;
end

always begin
Lreq1 = 1;
Ldata1 = Ldata1 + 2;
wait(Lack1 == 1);
Lreq1 = 0;
Ldata1 = Ldata1 + 2;
wait(Lack1 == 0);
end

always begin
Lreq2 = 1;
Ldata2 = Ldata2 + 1;
wait(Lack2 == 1);
Lreq2 = 0;
Ldata2 = Ldata2 + 1;
wait(Lack2 == 0);
end

always begin
Rack3 = 0;
wait(delayed_Rreq3 == 1);
Rack3 = 1;
wait(delayed_Rreq3 == 0);
end
endmodule
