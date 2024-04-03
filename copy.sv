`timescale 1ns/1fs
module copy(interface receive, interface send1, interface send2);
logic [2:0] in = 0;
parameter BL = 8;
parameter FL = 2;

always
begin
    receive.Receive(in);
    #FL;
    fork
        send1.Send(in);
        send2.Send(in);   
    join
    #BL;
end

endmodule

