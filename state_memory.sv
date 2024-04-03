`timescale 1ns/1fs
module state_memory (interface next_state, interface internal_state);
logic [2:0] internalState;
logic [2:0] nextState;
parameter FL=2;
parameter BL=8;

initial begin 
internalState = 0;
end

always
begin
        internal_state.Send(internalState);
        #BL;
        next_state.Receive(nextState);
        internalState = nextState;
        #FL;
     
end
endmodule
