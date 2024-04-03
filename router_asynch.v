module router(clk, reset, polarity, 
N_S_di_v0, N_S_di_v1, N_S_si_v0, N_S_si_v1, N_S_ri_v0, N_S_ri_v1, S_N_do_v0, S_N_do_v1, S_N_so_v0, S_N_so_v1, S_N_ro_v0, S_N_ro_v1, //North direction        
S_N_di_v0, S_N_di_v1, S_N_si_v0, S_N_si_v1, S_N_ri_v0, S_N_ri_v1, N_S_do_v0, N_S_do_v1, N_S_so_v0, N_S_so_v1, N_S_ro_v0, N_S_ro_v1, //South direction
E_W_di_v0, E_W_di_v1, E_W_si_v0, E_W_si_v1, E_W_ri_v0, E_W_ri_v1, W_E_do_v0, W_E_do_v1, W_E_so_v0, W_E_so_v1, W_E_ro_v0, W_E_ro_v1, //East direction
W_E_di_v0, W_E_di_v1, W_E_si_v0, W_E_si_v1, W_E_ri_v0, W_E_ri_v1, E_W_do_v0, E_W_do_v1, E_W_so_v0, E_W_so_v1, E_W_ro_v0, E_W_ro_v1, //West direction
pedi_v0, pedi_v1, pesi_v0, pesi_v1, peri_v0, peri_v1, pedo_v0, pedo_v1, peso_v0, peso_v1, pero_v0, pero_v1                          //PE direction
);

input clk, reset;
output polarity;
reg polarity;
// North direction input and output;
//input comb;
input[63:0] N_S_di_v0, N_S_di_v1;
input N_S_si_v0, N_S_si_v1;
output N_S_ri_v0, N_S_ri_v1;
//output comb;
output[63:0] S_N_do_v0, S_N_do_v1;
output S_N_so_v0, S_N_so_v1;
input S_N_ro_v0, S_N_ro_v1;
//////////////////////////////////
// South direction input and output;
//input comb;
input[63:0] S_N_di_v0, S_N_di_v1;
input S_N_si_v0, S_N_si_v1;
output S_N_ri_v0, S_N_ri_v1;
//output comb;
output[63:0] N_S_do_v0, N_S_do_v1;
output N_S_so_v0, N_S_so_v1;
input N_S_ro_v0, N_S_ro_v1;
//////////////////////////////////
// East direction input and output;
//input comb;
input[63:0] E_W_di_v0, E_W_di_v1;
input E_W_si_v0, E_W_si_v1;
output E_W_ri_v0, E_W_ri_v1;
//output comb;
output[63:0] W_E_do_v0, W_E_do_v1;
output W_E_so_v0, W_E_so_v1;
input W_E_ro_v0, W_E_ro_v1;
//////////////////////////////////
// West direction input and output;
//input comb;
input[63:0] W_E_di_v0, W_E_di_v1;
input W_E_si_v0, W_E_si_v1;
output W_E_ri_v0, W_E_ri_v1;
//output comb;
output[63:0] E_W_do_v0, E_W_do_v1;           
output E_W_so_v0, E_W_so_v1;                 
input E_W_ro_v0, E_W_ro_v1;
//////////////////////////////////
//PE direction input and output;
//input comb;
input[63:0] pedi_v0, pedi_v1;
input pesi_v0, pesi_v1;
output peri_v0, peri_v1;
//output comb;
output[63:0] pedo_v0, pedo_v1;
output peso_v0, peso_v1;
input pero_v0, pero_v1;
//////////////////////////////////
reg[63:0] N_S_dir_v0, N_S_dir_v1;//N_S input buffers with ready signals;
reg N_S_ri_v0, N_S_ri_v1;

reg[63:0] S_N_dir_v0, S_N_dir_v1;//S_N input buffers with ready signals;
reg S_N_ri_v0, S_N_ri_v1;

reg[63:0] E_W_dir_v0, E_W_dir_v1;//E_W input buffers with ready signals;
reg E_W_ri_v0, E_W_ri_v1;

reg[63:0] W_E_dir_v0, W_E_dir_v1;//W_E input buffers with ready signals;
reg W_E_ri_v0, W_E_ri_v1;

reg[63:0] pedir_v0, pedir_v1;//PE input buffers with ready signals;
reg peri_v0, peri_v1;


//v0 and v1 OUTPUT of E_W direction;
reg E_W_so_v0, E_W_so_v1;
reg[63:0] E_W_do_v0, E_W_do_v1;

//v0 and v1 OUTPUT of W_E direction;
reg W_E_so_v0, W_E_so_v1;
reg[63:0] W_E_do_v0, W_E_do_v1;

//v0 and v1 OUTPUT of S_N direction;
reg S_N_so_v0, S_N_so_v1;
reg[63:0] S_N_do_v0, S_N_do_v1;

//v0 and v1 OUTPUT of N_S direction;
reg N_S_so_v0, N_S_so_v1;
reg[63:0] N_S_do_v0, N_S_do_v1;

//v0 and v1 OUTPUT of PE direction;
reg peso_v0, peso_v1;
reg[63:0] pedo_v0, pedo_v1;

always@(posedge clk)
begin
if(reset) 
       begin
	   polarity <= 0;
	   //////////////////////////INPUT CHANNELS///////////////////////////////////////////////////////
	   N_S_ri_v1 <= 1; N_S_ri_v0 <= 1; N_S_dir_v0 <= 64'hFFFFFFFF_FFFFFFFF; N_S_dir_v1 <= 64'hFFFFFFFF_FFFFFFFF;	   // N_S_virtual channel;
	   S_N_ri_v1 <= 1; S_N_ri_v0 <= 1; S_N_dir_v0 <= 64'hFFFFFFFF_FFFFFFFF; S_N_dir_v1 <= 64'hFFFFFFFF_FFFFFFFF;	   // S_N_virtual channel;
	   E_W_ri_v1 <= 1; E_W_ri_v0 <= 1; E_W_dir_v0 <= 64'hFFFFFFFF_FFFFFFFF; E_W_dir_v1 <= 64'hFFFFFFFF_FFFFFFFF;	   // E_W_virtual channel;
	   W_E_ri_v1 <= 1; W_E_ri_v0 <= 1; W_E_dir_v0 <= 64'hFFFFFFFF_FFFFFFFF; W_E_dir_v1 <= 64'hFFFFFFFF_FFFFFFFF;	   // W_E_virtual channel;
	   peri_v1 <= 1; peri_v0 <= 1; pedir_v0 <= 64'hFFFFFFFF_FFFFFFFF; pedir_v1 <= 64'hFFFFFFFF_FFFFFFFF;	   // PE_input_virtual channel;
	   //////////////////////////OUTPUT CHANNELS///////////////////////////////////////////////////////
	   E_W_so_v0 <= 0; E_W_so_v1 <= 0;    E_W_do_v0 <=64'hFFFFFFFF_FFFFFFFF; E_W_do_v1 <=64'hFFFFFFFF_FFFFFFFF; //E_W virtual channels; 
	   W_E_so_v0 <= 0; W_E_so_v1 <= 0;    W_E_do_v0 <=64'hFFFFFFFF_FFFFFFFF; W_E_do_v1 <=64'hFFFFFFFF_FFFFFFFF; //W_E virtual channels; 
	   S_N_so_v0 <= 0; S_N_so_v1 <= 0;    S_N_do_v0 <=64'hFFFFFFFF_FFFFFFFF; S_N_do_v1 <=64'hFFFFFFFF_FFFFFFFF; //S_N virtual channels;
	   N_S_so_v0 <= 0; N_S_so_v1 <= 0;    N_S_do_v0 <=64'hFFFFFFFF_FFFFFFFF; N_S_do_v1 <=64'hFFFFFFFF_FFFFFFFF; //N_S virtual channels;
	   peso_v0 <= 0;   peso_v1 <= 0;      pedo_v0 <=64'hFFFFFFFF_FFFFFFFF;   pedo_v1 <=64'hFFFFFFFF_FFFFFFFF;   //PE virtual channels;
	   //////////////////////////Hanshake registers///////////////////////////////////////////////////////

	   end
else // reset not active;                         //di[63] means direction of W(0) or E(1), di[62] means direction of N(0) or S(1),
       begin
	   polarity <= ~polarity;
	   // /////////////N_S_virtual channel INPUT///////////////////////////;
	   if( (polarity==0) & (N_S_di_v0[63]==0)&(N_S_si_v0==1)&(N_S_ri_v0==1)   ) //even clk, and packet is using vc0(vc0 is ready) 
	      begin
		  //N_S_di_vc0 <=  N_S_di; N_S_ri_v0 <= 0;      --X remaining steps--          --Y remaining steps-1--
		  N_S_dir_v0[63:56] <= N_S_di_v0[63:56]; N_S_dir_v0[55:52] <= {N_S_di_v0[55:52]}; N_S_dir_v0[51:48] <= {1'b0,  N_S_di_v0[51:49]}; 
		  N_S_dir_v0[47:0] <= N_S_di_v0[47:0];                      N_S_ri_v0 <= 0; // data coming in, ready =0 ;
		  end
	   if( (polarity==1) & (N_S_di_v1[63]==1)&(N_S_si_v1==1)&(N_S_ri_v1==1)   ) //odd clk, and packet is using vc1(vc1 is ready) 
	      begin
		  //N_S_di_vc1 <=  N_S_di; N_S_ri_v1 <= 0;      --X remaining steps--          --Y remaining steps-1--
		  N_S_dir_v1[63:56] <= N_S_di_v1[63:56]; N_S_dir_v1[55:52] <= {N_S_di_v1[55:52]}; N_S_dir_v1[51:48] <= {1'b0,  N_S_di_v1[51:49]}; 
		  N_S_dir_v1[47:0] <= N_S_di_v1[47:0];                      N_S_ri_v1 <= 0; // data coming in, ready =0 ;
		  end
       
	   //////////////////S_N_virtual channel INPUT/////////////////////////;
	   if( (polarity==0) & (S_N_di_v0[63]==0)&(S_N_si_v0==1)&(S_N_ri_v0==1)  ) //even clk, and packet is using vc0(vc0 is ready) 
	      begin
		  //S_N_di_vc0 <=  S_N_di; S_N_ri_v0 <= 0;      --X remaining steps--          --Y remaining steps-1--
		  S_N_dir_v0[63:56] <= S_N_di_v0[63:56]; S_N_dir_v0[55:52] <= {S_N_di_v0[55:52]}; S_N_dir_v0[51:48] <= {1'b0,  S_N_di_v0[51:49]}; 
		  S_N_dir_v0[47:0] <= S_N_di_v0[47:0];                      S_N_ri_v0 <= 0; // data coming in, ready =0 ;
		  end
	   if( (polarity==1) & (S_N_di_v1[63]==1)&(S_N_si_v1==1)&(S_N_ri_v1==1)  ) //odd clk, and packet is using vc1(vc1 is ready) 
	      begin
		  //S_N_di_vc1 <=  S_N_di; S_N_ri_v1 <= 0;      --X remaining steps--          --Y remaining steps-1--
		  S_N_dir_v1[63:56] <= S_N_di_v1[63:56]; S_N_dir_v1[55:52] <= {S_N_di_v1[55:52]}; S_N_dir_v1[51:48] <= {1'b0,  S_N_di_v1[51:49]}; 
		  S_N_dir_v1[47:0] <= S_N_di_v1[47:0];                      S_N_ri_v1 <= 0; // data coming in, ready =0 ;		  
		  end
       
	   ////////////////////E_W_virtual channel INPUT////////////////////////;
	   if( (polarity==0) & (E_W_di_v0[63]==0)&(E_W_si_v0==1)&(E_W_ri_v0==1)   ) //even clk, and packet is using vc0(vc0 is ready) 
	      begin                                            
		  //E_W_di_vc0 <=  E_W_di; E_W_ri_v0 <= 0;          --X remaining steps -1 --          --Y remaining steps--
		  E_W_dir_v0[63:56] <= E_W_di_v0[63:56]; E_W_dir_v0[55:52] <= {1'b0, E_W_di_v0[55:53]}; E_W_dir_v0[51:48] <= {E_W_di_v0[51:48]}; 
		  E_W_dir_v0[47:0] <= E_W_di_v0[47:0];                      E_W_ri_v0 <= 0; // data coming in, ready =0 ;
		  end
	   if( (polarity==1) & (E_W_di_v1[63]==1)&(E_W_si_v1==1)&(E_W_ri_v1==1)   ) //odd clk, and packet is using vc1(vc1 is ready) 
	      begin
		  //E_W_di_vc1 <=  E_W_di; E_W_ri_v1 <= 0;          --X remaining steps -1 --          --Y remaining steps--
		  E_W_dir_v1[63:56] <= E_W_di_v1[63:56]; E_W_dir_v1[55:52] <= {1'b0, E_W_di_v1[55:53]}; E_W_dir_v1[51:48] <= {E_W_di_v1[51:48]}; 
		  E_W_dir_v1[47:0] <= E_W_di_v1[47:0];                      E_W_ri_v1 <= 0; // data coming in, ready =0 ;
		  end

	   // //////////////////W_E_virtual channel INPUT///////////////////////;
	   if( (polarity==0) & (W_E_di_v0[63]==0)&(W_E_si_v0==1)&(W_E_ri_v0==1)   ) //even clk, and packet is using vc0(vc0 is ready) 
	      begin
		  //W_E_di_vc0 <=  W_E_di; W_E_ri_v0 <= 0;          --X remaining steps -1 --          --Y remaining steps--
		  W_E_dir_v0[63:56] <= W_E_di_v0[63:56]; W_E_dir_v0[55:52] <= {1'b0, W_E_di_v0[55:53]}; W_E_dir_v0[51:48] <= {W_E_di_v0[51:48]}; 
		  W_E_dir_v0[47:0] <= W_E_di_v0[47:0];                      W_E_ri_v0 <= 0; // data coming in, ready =0 
		  end
	   if( (polarity==1) & (W_E_di_v1[63]==1)&(W_E_si_v1==1)&(W_E_ri_v1==1) ) //odd clk, and packet is using vc1(vc1 is ready) 
          begin
		  //W_E_di_vc1 <=  W_E_di; W_E_ri_v1 <= 0;          --X remaining steps -1 --          --Y remaining steps--
		  W_E_dir_v1[63:56] <= W_E_di_v1[63:56]; W_E_dir_v1[55:52] <= {1'b0,  W_E_di_v1[55:53]}; W_E_dir_v1[51:48] <= {W_E_di_v1[51:48]}; 
		  W_E_dir_v1[47:0] <= W_E_di_v1[47:0];                      W_E_ri_v1 <= 0; // data coming in, ready =0 ;	
		  end	   

	   // ///////////////////PE_virtual channel INPUT////////////////////////;
	   if( (polarity==0) & (pedi_v0[63]==0)&(pesi_v0==1)&(peri_v0==1)   ) //even clk, and packet is using vc0(vc0 is ready) 
	      begin
		  pedir_v0 <=  pedi_v0; peri_v0 <= 0;
		  end
	   if( (polarity==1) & (pedi_v1[63]==1)&(pesi_v1==1)&(peri_v1==1)   ) //odd clk, and packet is using vc1(vc1 is ready) 
	      begin
		  pedir_v1 <=  pedi_v1; peri_v1 <= 0;
		  end
//---------------------------------------------------------INPUT CHANNELS FINISHED--------------------------------------------------------------------------//		  



      //////////////////////////////////////To output for E_W direction////////////////////////////////
	  if(  (polarity==1) & (E_W_so_v0==0)   )  // vc0 ready and polariity = 1;
	       begin
    	   if(  (E_W_ri_v0==0) & (E_W_dir_v0[63]==0) & (E_W_dir_v0[62]==0) & (E_W_dir_v0[55:52]!=4'b0000)   )//E_W full;
                begin 
				E_W_do_v0 <= E_W_dir_v0;  E_W_ri_v0 <= 1;
                E_W_so_v0 <= 1;
                end				
    	   else if(   (peri_v0==0) & (pedir_v0[63]==0) & (pedir_v0[62]==0) & (pedir_v0[55:52]!=4'b0000)   )//PE full;
                begin 
				E_W_do_v0 <= pedir_v0;  peri_v0 <= 1;
                E_W_so_v0 <= 1;
                end				                 		   
           end

      else if(  (polarity==0) & (E_W_so_v1==0)   )  // vc1 ready and polariity = 1;
		   begin
    	   if(  (E_W_ri_v1==0) & (E_W_dir_v1[63]==1) & (E_W_dir_v1[62]==0) & (E_W_dir_v1[55:52]!=4'b0000)   )//E_W full;
                begin 
				E_W_do_v1 <= E_W_dir_v1;  E_W_ri_v1 <= 1;
                E_W_so_v1 <= 1;
                end				
    	   else if(   (peri_v1==0) & (pedir_v1[63]==1) & (pedir_v1[62]==0) & (pedir_v1[55:52]!=4'b0000)   )//PE full;
                begin 
				E_W_do_v1 <= pedir_v1;  peri_v1 <= 1;
                E_W_so_v1 <= 1;
                end				                 		   
           end


      //////////////////////////////////////To output for W_E direction////////////////////////////////
	  if(  (polarity==1) & (W_E_so_v0==0)   )  // vc0 ready and polariity = 1;
	       begin
    	   if(  (W_E_ri_v0==0) & (W_E_dir_v0[63]==0) & (W_E_dir_v0[62]==1) & (W_E_dir_v0[55:52]!=4'b0000)   )//W_E full;
                begin 
				W_E_do_v0 <= W_E_dir_v0;  W_E_ri_v0 <= 1;
                W_E_so_v0 <= 1;
                end				
    	   else if(   (peri_v0==0) & (pedir_v0[63]==0) & (pedir_v0[62]==1) & (pedir_v0[55:52]!=4'b0000)   )//PE full;
                begin 
				W_E_do_v0 <= pedir_v0;  peri_v0 <= 1;
                W_E_so_v0 <= 1;
                end				                 		   
           end

      else if(  (polarity==0) & (W_E_so_v1==0)   )  // vc1 ready and polariity = 1;
		   begin
    	   if(  (W_E_ri_v1==0) & (W_E_dir_v1[63]==1) & (W_E_dir_v1[62]==1) & (W_E_dir_v1[55:52]!=4'b0000)   )//W_E full;
                begin 
				W_E_do_v1 <= W_E_dir_v1;  W_E_ri_v1 <= 1;
                W_E_so_v1 <= 1;
                end				
    	   else if(   (peri_v1==0) & (pedir_v1[63]==1) & (pedir_v1[62]==1) & (pedir_v1[55:52]!=4'b0000)   )//PE full;
                begin 
				W_E_do_v1 <= pedir_v1;  peri_v1 <= 1;
                W_E_so_v1 <= 1;
                end				                 		   
           end


      //////////////////////////////////////To output for S_N direction////////////////////////////////  
	  if(  (polarity==1) & (S_N_so_v0==0)   )  // vc0 ready and polariity = 1;
	       begin                                    // heading to N,    X direction finished,     Y direction not finished;
		   if( (S_N_ri_v0==0) & (S_N_dir_v0[63]==0) & (S_N_dir_v0[61]==0) & (S_N_dir_v0[55:52]==4'b0000) & (S_N_dir_v0[51:48]!=4'b0000) )//S_N input full;
                begin 
				S_N_do_v0 <= S_N_dir_v0;  S_N_ri_v0 <= 1; S_N_so_v0 <= 1;
				end
		   else if( (W_E_ri_v0==0) & (W_E_dir_v0[63]==0) & (W_E_dir_v0[61]==0) & (W_E_dir_v0[55:52]==4'b0000) & (W_E_dir_v0[51:48]!=4'b0000) )//W_E input full;
		        begin
				S_N_do_v0 <= W_E_dir_v0;  W_E_ri_v0 <= 1; S_N_so_v0 <= 1;
				end
		   else if( (E_W_ri_v0==0) & (E_W_dir_v0[63]==0) & (E_W_dir_v0[61]==0) & (E_W_dir_v0[55:52]==4'b0000) & (E_W_dir_v0[51:48]!=4'b0000) )//E_W input full;
		        begin
				S_N_do_v0 <= E_W_dir_v0;  E_W_ri_v0 <= 1; S_N_so_v0 <= 1;
				end
		   else if( (peri_v0==0) & (pedir_v0[63]==0) & (pedir_v0[55:52]==4'b0000)& (pedir_v0[61]==0) & (pedir_v0[51:48]!=4'b0000) )//PE input full;
		        begin
				S_N_do_v0 <= pedir_v0;  peri_v0 <= 1; S_N_so_v0 <= 1;
				end				
				
		   end
	  else if(  (polarity==0) & (S_N_so_v1==0)   )  // vc1 ready and polarity = 1;	
		   begin                                   // heading to N,    X direction finished,     Y direction not finished;
		   if( (S_N_ri_v1==0) & (S_N_dir_v1[63]==1) & (S_N_dir_v1[61]==0) & (S_N_dir_v1[55:52]==4'b0000) & (S_N_dir_v1[51:48]!=4'b0000) )//S_N input full;
                begin 
				S_N_do_v1 <= S_N_dir_v1;  S_N_ri_v1 <= 1; S_N_so_v1 <= 1;
				end
		   else if( (W_E_ri_v1==0) & (W_E_dir_v1[63]==1) & (W_E_dir_v1[61]==0) & (W_E_dir_v1[55:52]==4'b0000) & (W_E_dir_v1[51:48]!=4'b0000) )//W_E input full;
		        begin
				S_N_do_v1 <= W_E_dir_v1;  W_E_ri_v1 <= 1; S_N_so_v1 <= 1;
				end
		   else if( (E_W_ri_v1==0) & (E_W_dir_v1[63]==1) & (E_W_dir_v1[61]==0) & (E_W_dir_v1[55:52]==4'b0000) & (E_W_dir_v1[51:48]!=4'b0000) )//E_W input full;
		        begin
				S_N_do_v1 <= E_W_dir_v1;  E_W_ri_v1 <= 1; S_N_so_v1 <= 1;
				end
		   else if( (peri_v1==0) & (pedir_v1[63]==1) & (pedir_v1[55:52]==4'b0000) & (pedir_v1[61]==0) & (pedir_v1[51:48]!=4'b0000) )//PE input full;
		        begin
				S_N_do_v1 <= pedir_v1;  peri_v1 <= 1; S_N_so_v1 <= 1;
				end						
		   end	



      //////////////////////////////////////To output for N_S direction////////////////////////////////  
	  if(  (polarity==1) & (N_S_so_v0==0)   )  // vc0 ready and polarity = 1;
	       begin                                    // heading to S,    X direction finished,     Y direction not finished;
		   if( (N_S_ri_v0==0) & (N_S_dir_v0[63]==0) & (N_S_dir_v0[61]==1) & (N_S_dir_v0[55:52]==4'b0000) & (N_S_dir_v0[51:48]!=4'b0000) )//N_S input full;
                begin 
				N_S_do_v0 <= N_S_dir_v0;  N_S_ri_v0 <= 1; N_S_so_v0 <= 1;
				end
		   else if( (W_E_ri_v0==0) & (W_E_dir_v0[63]==0) & (W_E_dir_v0[61]==1) & (W_E_dir_v0[55:52]==4'b0000) & (W_E_dir_v0[51:48]!=4'b0000) )//W_E input full;
		        begin
				N_S_do_v0 <= W_E_dir_v0;  W_E_ri_v0 <= 1; N_S_so_v0 <= 1;
				end
		   else if( (E_W_ri_v0==0) & (E_W_dir_v0[63]==0) & (E_W_dir_v0[61]==1) & (E_W_dir_v0[55:52]==4'b0000) & (E_W_dir_v0[51:48]!=4'b0000) )//E_W input full;
		        begin
				N_S_do_v0 <= E_W_dir_v0;  E_W_ri_v0 <= 1; N_S_so_v0 <= 1;
				end
		   else if( (peri_v0==0) & (pedir_v0[63]==0) & (pedir_v0[55:52]==4'b0000) &(pedir_v0[61]==1)& (pedir_v0[51:48]!=4'b0000) )//PE input full;
		        begin
				N_S_do_v0 <= pedir_v0;  peri_v0 <= 1; N_S_so_v0 <= 1;
				end				
				
		   end
	  else if(  (polarity==0) & (N_S_so_v1==0)   )  // vc1 ready and polarity = 1;	
		   begin                                   // heading to S,    X direction finished,     Y direction not finished;
		   if( (N_S_ri_v1==0) & (N_S_dir_v1[63]==1) & (N_S_dir_v1[61]==1) & (N_S_dir_v1[55:52]==4'b0000) & (N_S_dir_v1[51:48]!=4'b0000) )//N_S input full;
                begin 
				N_S_do_v1 <= N_S_dir_v1;  N_S_ri_v1 <= 1; N_S_so_v1 <= 1;
				end
		   else if( (W_E_ri_v1==0) & (W_E_dir_v1[63]==1) & (W_E_dir_v1[61]==1) & (W_E_dir_v1[55:52]==4'b0000) & (W_E_dir_v1[51:48]!=4'b0000) )//W_E input full;
		        begin
				N_S_do_v1 <= W_E_dir_v1;  W_E_ri_v1 <= 1; N_S_so_v1 <= 1;
				end
		   else if( (E_W_ri_v1==0) & (E_W_dir_v1[63]==1) & (E_W_dir_v1[61]==1) & (E_W_dir_v1[55:52]==4'b0000) & (E_W_dir_v1[51:48]!=4'b0000) )//E_W input full;
		        begin
				N_S_do_v1 <= E_W_dir_v1;  E_W_ri_v1 <= 1; N_S_so_v1 <= 1;
				end
		   else if( (peri_v1==0) & (pedir_v1[63]==1) & (pedir_v1[55:52]==4'b0000)& (pedir_v1[61]==1) & (pedir_v1[51:48]!=4'b0000) )//PE input full;
		        begin
				N_S_do_v1 <= pedir_v1;  peri_v1 <= 1; N_S_so_v1 <= 1;
				end						
		   end


      //////////////////////////////////////To output for PE direction////////////////////////////////  
	  if(  (polarity==1) & (peso_v0==0)   )  // vc0 ready and polarity = 1;
	       begin                                    //         X direction finished,     Y direction finished;
		   if( (N_S_ri_v0==0) & (N_S_dir_v0[63]==0) & (N_S_dir_v0[55:52]==4'b0000) & (N_S_dir_v0[51:48]==4'b0000) )      //N_S input full;
                begin 
				pedo_v0 <= N_S_dir_v0;  N_S_ri_v0 <= 1; peso_v0 <= 1;
				end
		   else if( (W_E_ri_v0==0) & (W_E_dir_v0[63]==0) & (W_E_dir_v0[55:52]==4'b0000) & (W_E_dir_v0[51:48]==4'b0000) ) //W_E input full;
		        begin
				pedo_v0 <= W_E_dir_v0;  W_E_ri_v0 <= 1; peso_v0 <= 1;
				end
		   else if( (E_W_ri_v0==0) & (E_W_dir_v0[63]==0) & (E_W_dir_v0[55:52]==4'b0000) & (E_W_dir_v0[51:48]==4'b0000) ) //E_W input full;
		        begin
				pedo_v0 <= E_W_dir_v0;  E_W_ri_v0 <= 1; peso_v0 <= 1;
				end
		   else if( (S_N_ri_v0==0) & (S_N_dir_v0[63]==0) & (S_N_dir_v0[55:52]==4'b0000) & (S_N_dir_v0[51:48]==4'b0000) )//S_N input full;
		        begin
				pedo_v0 <= S_N_dir_v0;  S_N_ri_v0 <= 1; peso_v0 <= 1;
				end				
				
		   end
	  else if(  (polarity==0) & (peso_v1==0)   )  // vc1 ready and polarity = 1;	
		   begin                                   //     X direction finished,     Y direction finished;
		   if( (N_S_ri_v1==0) & (N_S_dir_v1[63]==1) &  (N_S_dir_v1[55:52]==4'b0000) & (N_S_dir_v1[51:48]==4'b0000) )//N_S input full;
                begin 
				pedo_v1 <= N_S_dir_v1;  N_S_ri_v1 <= 1; peso_v1 <= 1;
				end
		   else if( (W_E_ri_v1==0) & (W_E_dir_v1[63]==1) &  (W_E_dir_v1[55:52]==4'b0000) & (W_E_dir_v1[51:48]==4'b0000) )//W_E input full;
		        begin
				pedo_v1 <= W_E_dir_v1;  W_E_ri_v1 <= 1; peso_v1 <= 1;
				end
		   else if( (E_W_ri_v1==0) & (E_W_dir_v1[63]==1) &  (E_W_dir_v1[55:52]==4'b0000) & (E_W_dir_v1[51:48]==4'b0000) )//E_W input full;
		        begin
				pedo_v1 <= E_W_dir_v1;  E_W_ri_v1 <= 1; peso_v1 <= 1;
				end
		   else if( (S_N_ri_v1==0) & (S_N_dir_v1[63]==1) &  (S_N_dir_v1[55:52]==4'b0000) & (S_N_dir_v1[51:48]==4'b0000) )//S_N input full;
		        begin
				pedo_v1 <= S_N_dir_v1;  S_N_ri_v1 <= 1; peso_v1 <= 1;
				end						
		   end
//-------------------------------------------------------OUTPUT CHANNELS FINISHED-------------------------------------------------------------


         //E_W direction handshake signals;
		 if(  (polarity == 0)&(E_W_ro_v0==1)&(E_W_so_v0==1)    )
               	E_W_so_v0 <= 0;  				//if polarity=0(vc0), send=1 and next router ready , send the data to input of next router;
		 else if(  (polarity == 1)&(E_W_ro_v1==1)&(E_W_so_v1==1)   ) //if polarity=1(vc1), send=1 and next router ready , send the data to input of next router;
                E_W_so_v1 <= 0;		            //if polarity=0(vc1), send=1 and next router ready , send the data to input of next router;

         //W_E direction handshake signals;
		 if(  (polarity == 0)&(W_E_ro_v0==1)&(W_E_so_v0==1)    )
               	W_E_so_v0 <= 0;  				//if polarity=0(vc0), send=1 and next router ready , send the data to input of next router;
		 else if(  (polarity == 1)&(W_E_ro_v1==1)&(W_E_so_v1==1)   ) //if polarity=1(vc1), send=1 and next router ready , send the data to input of next router;
                W_E_so_v1 <= 0;		            //if polarity=0(vc1), send=1 and next router ready , send the data to input of next router;

         //S_N direction handshake signals;
		 if(  (polarity == 0)&(S_N_ro_v0==1)&(S_N_so_v0==1)    )
               	S_N_so_v0 <= 0;  				//if polarity=0(vc0), send=1 and next router ready , send the data to input of next router;
		 else if(  (polarity == 1)&(S_N_ro_v1==1)&(S_N_so_v1==1)   ) //if polarity=1(vc1), send=1 and next router ready , send the data to input of next router;
                S_N_so_v1 <= 0;		            //if polarity=0(vc1), send=1 and next router ready , send the data to input of next router;				

         //N_S direction handshake signals;
		 if(  (polarity == 0)&(N_S_ro_v0==1)&(N_S_so_v0==1)    )
               	N_S_so_v0 <= 0;  				//if polarity=0(vc0), send=1 and next router ready , send the data to input of next router;
		 else if(  (polarity == 1)&(N_S_ro_v1==1)&(N_S_so_v1==1)   ) //if polarity=1(vc1), send=1 and next router ready , send the data to input of next router;
                N_S_so_v1 <= 0;		            //if polarity=0(vc1), send=1 and next router ready , send the data to input of next router;	

         //PE direction handshake signals;
		 if(  (polarity == 0)&(pero_v0==1)&(peso_v0==1)    )
               	peso_v0 <= 0;  				//if polarity=0(vc0), send=1 and next router ready , send the data to input of next router;
		 else if(  (polarity == 1)&(pero_v1==1)&(peso_v1==1)   ) //if polarity=1(vc1), send=1 and next router ready , send the data to input of next router;
                peso_v1 <= 0;		            //if polarity=0(vc1), send=1 and next router ready , send the data to input of next router;	
		
		end// end of else(no reset)
end//end of always block;



endmodule