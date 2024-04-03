`timescale 1ns/1fs

module next_state_logic(interface INPUT, interface current_state,  interface next_state);
logic inputBit;
parameter BL = 8;
parameter FL = 2;
parameter IDLE = 3'b000;
parameter COUNT_0 = 3'b001;
parameter COUNT_1 = 3'b010;
parameter EVEN_0 = 3'b011;
parameter EVEN_1 = 3'b100;
logic [2:0] nextState;
logic [2:0] currentState;

always
begin
    //$display
    fork
        INPUT.Receive(inputBit);
        current_state.Receive(currentState);
    join
    //$display
 //   if (currentState == 3'bx) begin
        // state_initialize.Receive(currentState);
        // currentState = 0;
        // end  
//     else begin
    case (currentState)
        IDLE: nextState = (inputBit == 1) ? COUNT_1 : COUNT_0;
        COUNT_1: nextState = (inputBit == 1) ? EVEN_1 : COUNT_0;
        COUNT_0: nextState = (inputBit == 1) ? COUNT_1 : EVEN_0;
        EVEN_1: nextState = (inputBit == 1) ? COUNT_1 : COUNT_0;
        EVEN_0: nextState = (inputBit == 1) ? COUNT_1 : COUNT_0;
        3'bx:nextState = IDLE;
        default: nextState = IDLE;
    endcase
    // end
#FL;
    
    
next_state.Send(nextState);
#BL;
end
endmodule

