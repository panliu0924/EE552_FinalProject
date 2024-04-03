`timescale 1ns/1ns
module double_port_mem (interface Write, interface Read,  output logic [7:0] W, output logic [7:0] R, input[$clog2(DEPTH)-1:0] WA, input[$clog2(DEPTH)-1:0]RA, input [1:0] RWC);
logic [7:0] Write_Data;
logic [7:0] Read_Data;
assign W = Write_Data;
assign R = Read_Data;

parameter WIDTH=8;
parameter DEPTH=1024; 
parameter FL=20;
parameter BL=4;
reg [WIDTH-1:0] mem [$clog2(DEPTH)-1:0];

always
begin
#BL;
    if (RWC == 1) begin //Write Operation
    Write.Receive(Write_Data);
    mem[WA] = Write_Data;
    #FL;
    end

    else if (RWC == 2) begin //Read Operation
    Read_Data = mem[RA];
    Read.Send(Read_Data);
    #BL;
    end

    else if (RWC == 3) begin //Bypass (Both Read and Write)
    Write.Receive(Write_Data);
    Read_Data = Write_Data;
    #FL;
    Read.Send(Read_Data);
    #BL;
    end

    else begin
      Read_Data = Write_Data;
    end
end
endmodule


