`include "./design/gold_router.v" 
module gold_mesh( clk, reset, polarity,

/////////////////////////////////////router 33 signals
//input comb;
r33_pedi, r33_pesi, r33_peri,      
//output comb;
r33_pedo, r33_peso, r33_pero,         

/////////////////////////////////////router 32 signals
//input comb;
r32_pedi, r32_pesi, r32_peri,      
//output comb;
r32_pedo, r32_peso, r32_pero, 
 
/////////////////////////////////////router 31 signals
//input comb;
r31_pedi, r31_pesi, r31_peri,      
//output comb;
r31_pedo, r31_peso, r31_pero,          

/////////////////////////////////////router 30 signals
//input comb;
r30_pedi, r30_pesi, r30_peri,      
//output comb;
r30_pedo, r30_peso, r30_pero,
  
//------------------------------------------------------3rd floor------------------------------------------- 
/////////////////////////////////////router 23 signals
//input comb;
r23_pedi, r23_pesi, r23_peri,      
//output comb;
r23_pedo, r23_peso, r23_pero,          

/////////////////////////////////////router 22 signals
//input comb;
r22_pedi, r22_pesi, r22_peri,      
//output comb;
r22_pedo, r22_peso, r22_pero, 

/////////////////////////////////////router 21 signals
//input comb;
r21_pedi, r21_pesi, r21_peri,      
//output comb;
r21_pedo, r21_peso, r21_pero,     

/////////////////////////////////////router 20 signals
//input comb;
r20_pedi, r20_pesi, r20_peri,      
//output comb;
r20_pedo, r20_peso, r20_pero,

//------------------------------------------------------2nd floor------------------------------------------- 
/////////////////////////////////////router 13 signals
//input comb;
r13_pedi, r13_pesi, r13_peri,      
//output comb;
r13_pedo, r13_peso, r13_pero,  

/////////////////////////////////////router 12 signals
//input comb;
r12_pedi, r12_pesi, r12_peri,      
//output comb;
r12_pedo, r12_peso, r12_pero, 

/////////////////////////////////////router 11 signals
//input comb;
r11_pedi, r11_pesi, r11_peri,      
//output comb;
r11_pedo, r11_peso, r11_pero,  

/////////////////////////////////////router 10 signals
//input comb;
r10_pedi, r10_pesi, r10_peri,      
//output comb;
r10_pedo, r10_peso, r10_pero, 

//------------------------------------------------------1st floor------------------------------------------- 
/////////////////////////////////////router 03 signals
//input comb;
r03_pedi, r03_pesi, r03_peri,      
//output comb;
r03_pedo, r03_peso, r03_pero,       

/////////////////////////////////////router 02 signals
//input comb;
r02_pedi, r02_pesi, r02_peri,      
//output comb;
r02_pedo, r02_peso, r02_pero,  

/////////////////////////////////////router 01 signals
//input comb;
r01_pedi, r01_pesi, r01_peri,      
//output comb;
r01_pedo, r01_peso, r01_pero,    

/////////////////////////////////////router 00 signals
//input comb;
r00_pedi, r00_pesi, r00_peri,      
//output comb;
r00_pedo, r00_peso, r00_pero, 
//------------------------------------------------------0 floor---------------------------------------------
);

input clk, reset;
output polarity;

/////////////////////////////////////router 33 signals
//input comb;
input[63:0] r33_pedi;  
input r33_pesi;
wire r33_peri_v0, r33_peri_v1;       output r33_peri;
//output comb;
wire[63:0] r33_pedo_v0, r33_pedo_v1; output[63:0] r33_pedo;
wire r33_peso_v0, r33_peso_v1;       output r33_peso;
input r33_pero;        

/////////////////////////////////////router 32 signals
//input comb;
input[63:0] r32_pedi;  
input r32_pesi;        
wire  r32_peri_v0, r32_peri_v1;     output r32_peri;  
//output comb; 
wire[63:0] r32_pedo_v0, r32_pedo_v1;output[63:0] r32_pedo;
wire r32_peso_v0, r32_peso_v1;      output r32_peso; 
input r32_pero;   

/////////////////////////////////////router 31 signals
//input comb;
input[63:0] r31_pedi;  
input r31_pesi;        
wire r31_peri_v0, r31_peri_v1;      output r31_peri;  
//output comb; 
wire[63:0] r31_pedo_v0, r31_pedo_v1;output[63:0] r31_pedo; 
wire r31_peso_v0, r31_peso_v1;      output r31_peso; 
input r31_pero;  

/////////////////////////////////////router 30 signals
//input comb;
input[63:0] r30_pedi;  
input r30_pesi;        
wire r30_peri_v0, r30_peri_v1;      output r30_peri;
//output comb; 
wire[63:0] r30_pedo_v0, r30_pedo_v1;output[63:0] r30_pedo; 
wire r30_peso_v0, r30_peso_v1;      output r30_peso;
input r30_pero;   






/////////////////////////////////////router 23 signals
//input comb;
input[63:0] r23_pedi;  
input r23_pesi;
wire r23_peri_v0, r23_peri_v1;      output r23_peri; 
//output comb;
wire[63:0] r23_pedo_v0, r23_pedo_v1;output[63:0] r23_pedo; 
wire r23_peso_v0, r23_peso_v1;      output r23_peso;
input r23_pero;        

/////////////////////////////////////router 22 signals
//input comb;
input[63:0] r22_pedi;  
input r22_pesi;        
wire r22_peri_v0, r22_peri_v1;      output r22_peri;   
//output comb; 
wire[63:0] r22_pedo_v0, r22_pedo_v1;output[63:0] r22_pedo;  
wire r22_peso_v0, r22_peso_v1;      output r22_peso;
input r22_pero;   

/////////////////////////////////////router 21 signals
//input comb;
input[63:0] r21_pedi;  
input r21_pesi;        
wire r21_peri_v0, r21_peri_v1;      output r21_peri;  
//output comb; 
wire[63:0] r21_pedo_v0, r21_pedo_v1;output[63:0] r21_pedo; 
wire r21_peso_v0, r21_peso_v1;      output r21_peso;
input r21_pero;  

/////////////////////////////////////router 20 signals
//input comb;
input[63:0] r20_pedi;  
input r20_pesi;        
wire r20_peri_v0, r20_peri_v1;      output r20_peri;   
//output comb; 
wire[63:0] r20_pedo_v0, r20_pedo_v1;output[63:0] r20_pedo;
wire r20_peso_v0, r20_peso_v1;      output r20_peso; 
input r20_pero;






/////////////////////////////////////router 13 signals
//input comb;
input[63:0] r13_pedi;  
input r13_pesi;  
wire r13_peri_v0, r13_peri_v1;      output r13_peri;     
//output comb;
wire[63:0] r13_pedo_v0, r13_pedo_v1;output[63:0] r13_pedo;
wire r13_peso_v0, r13_peso_v1;      output r13_peso; 
input r13_pero;        

/////////////////////////////////////router 12 signals
//input comb;
input[63:0] r12_pedi;  
input r12_pesi;        
wire r12_peri_v0, r12_peri_v1;      output r12_peri; 
//output comb;  
wire[63:0] r12_pedo_v0, r12_pedo_v1;output[63:0] r12_pedo;
wire r12_peso_v0, r12_peso_v1;      output r12_peso; 
input r12_pero;               

/////////////////////////////////////router 11 signals
//input comb;
input[63:0] r11_pedi;  
input r11_pesi;        
wire r11_peri_v0, r11_peri_v1;      output r11_peri; 
//output comb; 
wire[63:0] r11_pedo_v0, r11_pedo_v1;output[63:0] r11_pedo;
wire r11_peso_v0, r11_peso_v1;      output r11_peso;
input r11_pero;  

/////////////////////////////////////router 10 signals
//input comb;
input[63:0] r10_pedi;  
input r10_pesi;        
wire r10_peri_v0, r10_peri_v1;      output r10_peri;  
//output comb; 
wire[63:0] r10_pedo_v0, r10_pedo_v1;output[63:0] r10_pedo;
wire r10_peso_v0, r10_peso_v1;      output r10_peso; 
input r10_pero;






/////////////////////////////////////router 03 signals
//input comb;
input[63:0] r03_pedi;  
input r03_pesi;
wire r03_peri_v0, r03_peri_v1;      output r03_peri; 
//output comb;
wire[63:0] r03_pedo_v0, r03_pedo_v1;output[63:0] r03_pedo; 
wire r03_peso_v0, r03_peso_v1;      output r03_peso;  
input r03_pero;        

/////////////////////////////////////router 02 signals
//input comb;
input[63:0] r02_pedi;  
input r02_pesi;        
wire r02_peri_v0, r02_peri_v1;      output r02_peri; 
//output comb; 
wire[63:0] r02_pedo_v0, r02_pedo_v1;output[63:0] r02_pedo; 
wire r02_peso_v0, r02_peso_v1;      output r02_peso; 
input r02_pero;   

/////////////////////////////////////router 01 signals
//input comb;
input[63:0] r01_pedi;  
input r01_pesi;        
wire r01_peri_v0, r01_peri_v1;      output r01_peri; 
//output comb; 
wire[63:0] r01_pedo_v0, r01_pedo_v1;output[63:0] r01_pedo; 
wire r01_peso_v0, r01_peso_v1;      output r01_peso; 
input r01_pero;  

/////////////////////////////////////router 00 signals
//input comb;
input[63:0] r00_pedi;  
input r00_pesi;        
wire r00_peri_v0, r00_peri_v1;      output r00_peri;  
//output comb; 
wire[63:0] r00_pedo_v0, r00_pedo_v1;output[63:0] r00_pedo; 
wire r00_peso_v0, r00_peso_v1;      output r00_peso;
input r00_pero;

//------------------------------------------horizontal internal connections;--------------------------
// from 33 output to 32 input
wire[63:0] r33_r32_d_v0, r33_r32_d_v1;
wire r33_r32_s_v0, r33_r32_s_v1, r33_r32_r_v0, r33_r32_r_v1;
// from 32 output to 33 input
wire[63:0] r32_r33_d_v0, r32_r33_d_v1;
wire r32_r33_s_v0, r32_r33_s_v1, r32_r33_r_v0, r32_r33_r_v1;
////////////////////////////////////////////////////////////
// from 32 output to 31 input
wire[63:0] r32_r31_d_v0, r32_r31_d_v1;
wire r32_r31_s_v0, r32_r31_s_v1, r32_r31_r_v0, r32_r31_r_v1;
// from 31 output to 32 input
wire[63:0] r31_r32_d_v0, r31_r32_d_v1;
wire r31_r32_s_v0, r31_r32_s_v1, r31_r32_r_v0, r31_r32_r_v1;
////////////////////////////////////////////////////////////
// from 31 output to 30 input
wire[63:0] r31_r30_d_v0, r31_r30_d_v1;
wire r31_r30_s_v0, r31_r30_s_v1, r31_r30_r_v0, r31_r30_r_v1;
// from 30 output to 31 input
wire[63:0] r30_r31_d_v0, r30_r31_d_v1;
wire r30_r31_s_v0, r30_r31_s_v1, r30_r31_r_v0, r30_r31_r_v1;



// from 23 output to 22 input
wire[63:0] r23_r22_d_v0, r23_r22_d_v1;
wire r23_r22_s_v0, r23_r22_s_v1, r23_r22_r_v0, r23_r22_r_v1;
// from 22 output to 23 input
wire[63:0] r22_r23_d_v0, r22_r23_d_v1;
wire r22_r23_s_v0, r22_r23_s_v1, r22_r23_r_v0, r22_r23_r_v1;
////////////////////////////////////////////////////////////
// from 22 output to 21 input
wire[63:0] r22_r21_d_v0, r22_r21_d_v1;
wire r22_r21_s_v0, r22_r21_s_v1, r22_r21_r_v0, r22_r21_r_v1;
// from 21 output to 22 input
wire[63:0] r21_r22_d_v0, r21_r22_d_v1;
wire r21_r22_s_v0, r21_r22_s_v1, r21_r22_r_v0, r21_r22_r_v1;
////////////////////////////////////////////////////////////
// from 21 output to 20 input
wire[63:0] r21_r20_d_v0, r21_r20_d_v1;
wire r21_r20_s_v0, r21_r20_s_v1, r21_r20_r_v0, r21_r20_r_v1;
// from 20 output to 21 input
wire[63:0] r20_r21_d_v0, r20_r21_d_v1;
wire r20_r21_s_v0, r20_r21_s_v1, r20_r21_r_v0, r20_r21_r_v1;





// from 13 output to 12 input
wire[63:0] r13_r12_d_v0, r13_r12_d_v1;
wire r13_r12_s_v0, r13_r12_s_v1, r13_r12_r_v0, r13_r12_r_v1;
// from 12 output to 13 input
wire[63:0] r12_r13_d_v0, r12_r13_d_v1;
wire r12_r13_s_v0, r12_r13_s_v1, r12_r13_r_v0, r12_r13_r_v1;
////////////////////////////////////////////////////////////
// from 12 output to 11 input
wire[63:0] r12_r11_d_v0, r12_r11_d_v1;
wire r12_r11_s_v0, r12_r11_s_v1, r12_r11_r_v0, r12_r11_r_v1;
// from 11 output to 12 input
wire[63:0] r11_r12_d_v0, r11_r12_d_v1;
wire r11_r12_s_v0, r11_r12_s_v1, r11_r12_r_v0, r11_r12_r_v1;
////////////////////////////////////////////////////////////
// from 11 output to 10 input
wire[63:0] r11_r10_d_v0, r11_r10_d_v1;
wire r11_r10_s_v0, r11_r10_s_v1, r11_r10_r_v0, r11_r10_r_v1;
// from 10 output to 11 input
wire[63:0] r10_r11_d_v0, r10_r11_d_v1;
wire r10_r11_s_v0, r10_r11_s_v1, r10_r11_r_v0, r10_r11_r_v1;



// from 03 output to 02 input
wire[63:0] r03_r02_d_v0, r03_r02_d_v1;
wire r03_r02_s_v0, r03_r02_s_v1, r03_r02_r_v0, r03_r02_r_v1;
// from 02 output to 03 input
wire[63:0] r02_r03_d_v0, r02_r03_d_v1;
wire r02_r03_s_v0, r02_r03_s_v1, r02_r03_r_v0, r02_r03_r_v1;
////////////////////////////////////////////////////////////
// from 02 output to 01 input
wire[63:0] r02_r01_d_v0, r02_r01_d_v1;
wire r02_r01_s_v0, r02_r01_s_v1, r02_r01_r_v0, r02_r01_r_v1;
// from 01 output to 02 input
wire[63:0] r01_r02_d_v0, r01_r02_d_v1;
wire r01_r02_s_v0, r01_r02_s_v1, r01_r02_r_v0, r01_r02_r_v1;
////////////////////////////////////////////////////////////
// from 01 output to 00 input
wire[63:0] r01_r00_d_v0, r01_r00_d_v1;
wire r01_r00_s_v0, r01_r00_s_v1, r01_r00_r_v0, r01_r00_r_v1;
// from 00 output to 01 input
wire[63:0] r00_r01_d_v0, r00_r01_d_v1;
wire r00_r01_s_v0, r00_r01_s_v1, r00_r01_r_v0, r00_r01_r_v1;

//--------------------------------------------------------------------------------------------------------


//------------------------------------------------ vertical interconnections------------------------------
// from 33 output to 23 input
wire[63:0] r33_r23_d_v0, r33_r23_d_v1;
wire r33_r23_s_v0, r33_r23_s_v1, r33_r23_r_v0, r33_r23_r_v1;
// from 23 output to 33 input
wire[63:0] r23_r33_d_v0, r23_r33_d_v1;
wire r23_r33_s_v0, r23_r33_s_v1, r23_r33_r_v0, r23_r33_r_v1;
////////////////////////////////////////////////////////////
// from 32 output to 22 input
wire[63:0] r32_r22_d_v0, r32_r22_d_v1;
wire r32_r22_s_v0, r32_r22_s_v1, r32_r22_r_v0, r32_r22_r_v1;
// from 22 output to 32 input
wire[63:0] r22_r32_d_v0, r22_r32_d_v1;
wire r22_r32_s_v0, r22_r32_s_v1, r22_r32_r_v0, r22_r32_r_v1;
////////////////////////////////////////////////////////////
// from 31 output to 21 input
wire[63:0] r31_r21_d_v0, r31_r21_d_v1;
wire r31_r21_s_v0, r31_r21_s_v1, r31_r21_r_v0, r31_r21_r_v1;
// from 21 output to 31 input
wire[63:0] r21_r31_d_v0, r21_r31_d_v1;
wire r21_r31_s_v0, r21_r31_s_v1, r21_r31_r_v0, r21_r31_r_v1;
////////////////////////////////////////////////////////////
// from 30 output to 20 input
wire[63:0] r30_r20_d_v0, r30_r20_d_v1;
wire r30_r20_s_v0, r30_r20_s_v1, r30_r20_r_v0, r30_r20_r_v1;
// from 20 output to 30 input
wire[63:0] r20_r30_d_v0, r20_r30_d_v1;
wire r20_r30_s_v0, r20_r30_s_v1, r20_r30_r_v0, r20_r30_r_v1;




// from 23 output to 13 input
wire[63:0] r23_r13_d_v0, r23_r13_d_v1;
wire r23_r13_s_v0, r23_r13_s_v1, r23_r13_r_v0, r23_r13_r_v1;
// from 13 output to 23 input
wire[63:0] r13_r23_d_v0, r13_r23_d_v1;
wire r13_r23_s_v0, r13_r23_s_v1, r13_r23_r_v0, r13_r23_r_v1;
////////////////////////////////////////////////////////////
// from 22 output to 12 input
wire[63:0] r22_r12_d_v0, r22_r12_d_v1;
wire r22_r12_s_v0, r22_r12_s_v1, r22_r12_r_v0, r22_r12_r_v1;
// from 12 output to 22 input
wire[63:0] r12_r22_d_v0, r12_r22_d_v1;
wire r12_r22_s_v0, r12_r22_s_v1, r12_r22_r_v0, r12_r22_r_v1;
////////////////////////////////////////////////////////////
// from 21 output to 11 input
wire[63:0] r21_r11_d_v0, r21_r11_d_v1;
wire r21_r11_s_v0, r21_r11_s_v1, r21_r11_r_v0, r21_r11_r_v1;
// from 11 output to 21 input
wire[63:0] r11_r21_d_v0, r11_r21_d_v1;
wire r11_r21_s_v0, r11_r21_s_v1, r11_r21_r_v0, r11_r21_r_v1;
////////////////////////////////////////////////////////////
// from 20 output to 10 input
wire[63:0] r20_r10_d_v0, r20_r10_d_v1;
wire r20_r10_s_v0, r20_r10_s_v1, r20_r10_r_v0, r20_r10_r_v1;
// from 10 output to 20 input
wire[63:0] r10_r20_d_v0, r10_r20_d_v1;
wire r10_r20_s_v0, r10_r20_s_v1, r10_r20_r_v0, r10_r20_r_v1;




// from 13 output to 03 input
wire[63:0] r13_r03_d_v0, r13_r03_d_v1;
wire r13_r03_s_v0, r13_r03_s_v1, r13_r03_r_v0, r13_r03_r_v1;
// from 03 output to 13 input
wire[63:0] r03_r13_d_v0, r03_r13_d_v1;
wire r03_r13_s_v0, r03_r13_s_v1, r03_r13_r_v0, r03_r13_r_v1;
////////////////////////////////////////////////////////////
// from 12 output to 02 input
wire[63:0] r12_r02_d_v0, r12_r02_d_v1;
wire r12_r02_s_v0, r12_r02_s_v1, r12_r02_r_v0, r12_r02_r_v1;
// from 02 output to 12 input
wire[63:0] r02_r12_d_v0, r02_r12_d_v1;
wire r02_r12_s_v0, r02_r12_s_v1, r02_r12_r_v0, r02_r12_r_v1;
////////////////////////////////////////////////////////////
// from 11 output to 01 input
wire[63:0] r11_r01_d_v0, r11_r01_d_v1;
wire r11_r01_s_v0, r11_r01_s_v1, r11_r01_r_v0, r11_r01_r_v1;
// from 01 output to 11 input
wire[63:0] r01_r11_d_v0, r01_r11_d_v1;
wire r01_r11_s_v0, r01_r11_s_v1, r01_r11_r_v0, r01_r11_r_v1;
////////////////////////////////////////////////////////////
// from 10 output to 00 input
wire[63:0] r10_r00_d_v0, r10_r00_d_v1;
wire r10_r00_s_v0, r10_r00_s_v1, r10_r00_r_v0, r10_r00_r_v1;
// from 00 output to 10 input
wire[63:0] r00_r10_d_v0, r00_r10_d_v1;
wire r00_r10_s_v0, r00_r10_s_v1, r00_r10_r_v0, r00_r10_r_v1;

//-------------------------------------------------------------select signals for output-------------------------------------------
assign r33_peri = polarity ? r33_peri_v1 : r33_peri_v0; assign r33_pedo = polarity ? r33_pedo_v1 : r33_pedo_v0; assign r33_peso = polarity ? r33_peso_v1 : r33_peso_v0;
assign r32_peri = polarity ? r32_peri_v1 : r32_peri_v0; assign r32_pedo = polarity ? r32_pedo_v1 : r32_pedo_v0; assign r32_peso = polarity ? r32_peso_v1 : r32_peso_v0;
assign r31_peri = polarity ? r31_peri_v1 : r31_peri_v0; assign r31_pedo = polarity ? r31_pedo_v1 : r31_pedo_v0; assign r31_peso = polarity ? r31_peso_v1 : r31_peso_v0;
assign r30_peri = polarity ? r30_peri_v1 : r30_peri_v0; assign r30_pedo = polarity ? r30_pedo_v1 : r30_pedo_v0; assign r30_peso = polarity ? r30_peso_v1 : r30_peso_v0;
//
assign r23_peri = polarity ? r23_peri_v1 : r23_peri_v0; assign r23_pedo = polarity ? r23_pedo_v1 : r23_pedo_v0; assign r23_peso = polarity ? r23_peso_v1 : r23_peso_v0;
assign r22_peri = polarity ? r22_peri_v1 : r22_peri_v0; assign r22_pedo = polarity ? r22_pedo_v1 : r22_pedo_v0; assign r22_peso = polarity ? r22_peso_v1 : r22_peso_v0;
assign r21_peri = polarity ? r21_peri_v1 : r21_peri_v0; assign r21_pedo = polarity ? r21_pedo_v1 : r21_pedo_v0; assign r21_peso = polarity ? r21_peso_v1 : r21_peso_v0;
assign r20_peri = polarity ? r20_peri_v1 : r20_peri_v0; assign r20_pedo = polarity ? r20_pedo_v1 : r20_pedo_v0; assign r20_peso = polarity ? r20_peso_v1 : r20_peso_v0;
//
assign r13_peri = polarity ? r13_peri_v1 : r13_peri_v0; assign r13_pedo = polarity ? r13_pedo_v1 : r13_pedo_v0; assign r13_peso = polarity ? r13_peso_v1 : r13_peso_v0;
assign r12_peri = polarity ? r12_peri_v1 : r12_peri_v0; assign r12_pedo = polarity ? r12_pedo_v1 : r12_pedo_v0; assign r12_peso = polarity ? r12_peso_v1 : r12_peso_v0;
assign r11_peri = polarity ? r11_peri_v1 : r11_peri_v0; assign r11_pedo = polarity ? r11_pedo_v1 : r11_pedo_v0; assign r11_peso = polarity ? r11_peso_v1 : r11_peso_v0;
assign r10_peri = polarity ? r10_peri_v1 : r10_peri_v0; assign r10_pedo = polarity ? r10_pedo_v1 : r10_pedo_v0; assign r10_peso = polarity ? r10_peso_v1 : r10_peso_v0;
//
assign r03_peri = polarity ? r03_peri_v1 : r03_peri_v0; assign r03_pedo = polarity ? r03_pedo_v1 : r03_pedo_v0; assign r03_peso = polarity ? r03_peso_v1 : r03_peso_v0;
assign r02_peri = polarity ? r02_peri_v1 : r02_peri_v0; assign r02_pedo = polarity ? r02_pedo_v1 : r02_pedo_v0; assign r02_peso = polarity ? r02_peso_v1 : r02_peso_v0;
assign r01_peri = polarity ? r01_peri_v1 : r01_peri_v0; assign r01_pedo = polarity ? r01_pedo_v1 : r01_pedo_v0; assign r01_peso = polarity ? r01_peso_v1 : r01_peso_v0;
assign r00_peri = polarity ? r00_peri_v1 : r00_peri_v0; assign r00_pedo = polarity ? r00_pedo_v1 : r00_pedo_v0; assign r00_peso = polarity ? r00_peso_v1 : r00_peso_v0;

////////////////////////////////////////////////////////////////////////3 floor routers///////////////////////////////////////////////////////////////////////////
router router33(.clk(clk), .reset(reset), .polarity(polarity), 
//North direction 

.S_N_di_v0(r23_r33_d_v0), .S_N_di_v1(r23_r33_d_v1), .S_N_si_v0(r23_r33_s_v0), .S_N_si_v1(r23_r33_s_v1), .S_N_ri_v0(r23_r33_r_v0), .S_N_ri_v1(r23_r33_r_v1), 
.N_S_do_v0(r33_r23_d_v0), .N_S_do_v1(r33_r23_d_v1), .N_S_so_v0(r33_r23_s_v0), .N_S_so_v1(r33_r23_s_v1), .N_S_ro_v0(r33_r23_r_v0), .N_S_ro_v1(r33_r23_r_v1), //South direction

.E_W_di_v0(r32_r33_d_v0), .E_W_di_v1(r32_r33_d_v1), .E_W_si_v0(r32_r33_s_v0), .E_W_si_v1(r32_r33_s_v1), .E_W_ri_v0(r32_r33_r_v0), .E_W_ri_v1(r32_r33_r_v1), 
.W_E_do_v0(r33_r32_d_v0), .W_E_do_v1(r33_r32_d_v1), .W_E_so_v0(r33_r32_s_v0), .W_E_so_v1(r33_r32_s_v1), .W_E_ro_v0(r33_r32_r_v0), .W_E_ro_v1(r33_r32_r_v1), //East direction

//West direction

.pedi_v0(r33_pedi), .pedi_v1(r33_pedi), .pesi_v0(r33_pesi), .pesi_v1(r33_pesi), .peri_v0(r33_peri_v0), .peri_v1(r33_peri_v1), 
.pedo_v0(r33_pedo_v0), .pedo_v1(r33_pedo_v1), .peso_v0(r33_peso_v0), .peso_v1(r33_peso_v1), .pero_v0(r33_pero), .pero_v1(r33_pero) //PE direction
);

router router32(.clk(clk), .reset(reset), .polarity(polarity),
//North direction 

.S_N_di_v0(r22_r32_d_v0), .S_N_di_v1(r22_r32_d_v1), .S_N_si_v0(r22_r32_s_v0), .S_N_si_v1(r22_r32_s_v1), .S_N_ri_v0(r22_r32_r_v0), .S_N_ri_v1(r22_r32_r_v1), 
.N_S_do_v0(r32_r22_d_v0), .N_S_do_v1(r32_r22_d_v1), .N_S_so_v0(r32_r22_s_v0), .N_S_so_v1(r32_r22_s_v1), .N_S_ro_v0(r32_r22_r_v0), .N_S_ro_v1(r32_r22_r_v1), //South direction      

.E_W_di_v0(r31_r32_d_v0), .E_W_di_v1(r31_r32_d_v1), .E_W_si_v0(r31_r32_s_v0), .E_W_si_v1(r31_r32_s_v1), .E_W_ri_v0(r31_r32_r_v0), .E_W_ri_v1(r31_r32_r_v1), 
.W_E_do_v0(r32_r31_d_v0), .W_E_do_v1(r32_r31_d_v1), .W_E_so_v0(r32_r31_s_v0), .W_E_so_v1(r32_r31_s_v1), .W_E_ro_v0(r32_r31_r_v0), .W_E_ro_v1(r32_r31_r_v1), //East direction

.W_E_di_v0(r33_r32_d_v0), .W_E_di_v1(r33_r32_d_v1), .W_E_si_v0(r33_r32_s_v0), .W_E_si_v1(r33_r32_s_v1), .W_E_ri_v0(r33_r32_r_v0), .W_E_ri_v1(r33_r32_r_v1), 
.E_W_do_v0(r32_r33_d_v0), .E_W_do_v1(r32_r33_d_v1), .E_W_so_v0(r32_r33_s_v0), .E_W_so_v1(r32_r33_s_v1), .E_W_ro_v0(r32_r33_r_v0), .E_W_ro_v1(r32_r33_r_v1), //West direction

.pedi_v0(r32_pedi), .pedi_v1(r32_pedi), .pesi_v0(r32_pesi), .pesi_v1(r32_pesi), .peri_v0(r32_peri_v0), .peri_v1(r32_peri_v1), 
.pedo_v0(r32_pedo_v0), .pedo_v1(r32_pedo_v1), .peso_v0(r32_peso_v0), .peso_v1(r32_peso_v1), .pero_v0(r32_pero), .pero_v1(r32_pero) //PE direction
);

router router31(.clk(clk), .reset(reset), .polarity(polarity), 
//North direction        

.S_N_di_v0(r21_r31_d_v0), .S_N_di_v1(r21_r31_d_v1), .S_N_si_v0(r21_r31_s_v0), .S_N_si_v1(r21_r31_s_v1), .S_N_ri_v0(r21_r31_r_v0), .S_N_ri_v1(r21_r31_r_v1), 
.N_S_do_v0(r31_r21_d_v0), .N_S_do_v1(r31_r21_d_v1), .N_S_so_v0(r31_r21_s_v0), .N_S_so_v1(r31_r21_s_v1), .N_S_ro_v0(r31_r21_r_v0), .N_S_ro_v1(r31_r21_r_v1), //South direction 

.E_W_di_v0(r30_r31_d_v0), .E_W_di_v1(r30_r31_d_v1), .E_W_si_v0(r30_r31_s_v0), .E_W_si_v1(r30_r31_s_v1), .E_W_ri_v0(r30_r31_r_v0), .E_W_ri_v1(r30_r31_r_v1), 
.W_E_do_v0(r31_r30_d_v0), .W_E_do_v1(r31_r30_d_v1), .W_E_so_v0(r31_r30_s_v0), .W_E_so_v1(r31_r30_s_v1), .W_E_ro_v0(r31_r30_r_v0), .W_E_ro_v1(r31_r30_r_v1), //East direction

.W_E_di_v0(r32_r31_d_v0), .W_E_di_v1(r32_r31_d_v1), .W_E_si_v0(r32_r31_s_v0), .W_E_si_v1(r32_r31_s_v1), .W_E_ri_v0(r32_r31_r_v0), .W_E_ri_v1(r32_r31_r_v1), 
.E_W_do_v0(r31_r32_d_v0), .E_W_do_v1(r31_r32_d_v1), .E_W_so_v0(r31_r32_s_v0), .E_W_so_v1(r31_r32_s_v1), .E_W_ro_v0(r31_r32_r_v0), .E_W_ro_v1(r31_r32_r_v1), //West direction

.pedi_v0(r31_pedi), .pedi_v1(r31_pedi), .pesi_v0(r31_pesi), .pesi_v1(r31_pesi), .peri_v0(r31_peri_v0), .peri_v1(r31_peri_v1), 
.pedo_v0(r31_pedo_v0), .pedo_v1(r31_pedo_v1), .peso_v0(r31_peso_v0), .peso_v1(r31_peso_v1), .pero_v0(r31_pero), .pero_v1(r31_pero) //PE direction
);

router router30(.clk(clk), .reset(reset), .polarity(polarity), 
//North direction        

.S_N_di_v0(r20_r30_d_v0), .S_N_di_v1(r20_r30_d_v1), .S_N_si_v0(r20_r30_s_v0), .S_N_si_v1(r20_r30_s_v1), .S_N_ri_v0(r20_r30_r_v0), .S_N_ri_v1(r20_r30_r_v1), 
.N_S_do_v0(r30_r20_d_v0), .N_S_do_v1(r30_r20_d_v1), .N_S_so_v0(r30_r20_s_v0), .N_S_so_v1(r30_r20_s_v1), .N_S_ro_v0(r30_r20_r_v0), .N_S_ro_v1(r30_r20_r_v1), //South direction 

//East direction

.W_E_di_v0(r31_r30_d_v0), .W_E_di_v1(r31_r30_d_v1), .W_E_si_v0(r31_r30_s_v0), .W_E_si_v1(r31_r30_s_v1), .W_E_ri_v0(r31_r30_r_v0), .W_E_ri_v1(r31_r30_r_v1), 
.E_W_do_v0(r30_r31_d_v0), .E_W_do_v1(r30_r31_d_v1), .E_W_so_v0(r30_r31_s_v0), .E_W_so_v1(r30_r31_s_v1), .E_W_ro_v0(r30_r31_r_v0), .E_W_ro_v1(r30_r31_r_v1), //West direction

.pedi_v0(r30_pedi), .pedi_v1(r30_pedi), .pesi_v0(r30_pesi), .pesi_v1(r30_pesi), .peri_v0(r30_peri_v0), .peri_v1(r30_peri_v1), 
.pedo_v0(r30_pedo_v0), .pedo_v1(r30_pedo_v1), .peso_v0(r30_peso_v0), .peso_v1(r30_peso_v1), .pero_v0(r30_pero), .pero_v1(r30_pero) //PE direction
);
////////////////////////////////////////////////////////////////////////3 floor routers finished///////////////////////////////////////////////////////////////////////////

  
////////////////////////////////////////////////////////////////////////2nd floor routers///////////////////////////////////////////////////////////////////////////
router router23(.clk(clk), .reset(reset), .polarity(polarity), 
.N_S_di_v0(r33_r23_d_v0), .N_S_di_v1(r33_r23_d_v1), .N_S_si_v0(r33_r23_s_v0), .N_S_si_v1(r33_r23_s_v1), .N_S_ri_v0(r33_r23_r_v0), .N_S_ri_v1(r33_r23_r_v1), 
.S_N_do_v0(r23_r33_d_v0), .S_N_do_v1(r23_r33_d_v1), .S_N_so_v0(r23_r33_s_v0), .S_N_so_v1(r23_r33_s_v1), .S_N_ro_v0(r23_r33_r_v0), .S_N_ro_v1(r23_r33_r_v1), //North direction       

.S_N_di_v0(r13_r23_d_v0), .S_N_di_v1(r13_r23_d_v1), .S_N_si_v0(r13_r23_s_v0), .S_N_si_v1(r13_r23_s_v1), .S_N_ri_v0(r13_r23_r_v0), .S_N_ri_v1(r13_r23_r_v1), 
.N_S_do_v0(r23_r13_d_v0), .N_S_do_v1(r23_r13_d_v1), .N_S_so_v0(r23_r13_s_v0), .N_S_so_v1(r23_r13_s_v1), .N_S_ro_v0(r23_r13_r_v0), .N_S_ro_v1(r23_r13_r_v1), //South direction

.E_W_di_v0(r22_r23_d_v0), .E_W_di_v1(r22_r23_d_v1), .E_W_si_v0(r22_r23_s_v0), .E_W_si_v1(r22_r23_s_v1), .E_W_ri_v0(r22_r23_r_v0), .E_W_ri_v1(r22_r23_r_v1), 
.W_E_do_v0(r23_r22_d_v0), .W_E_do_v1(r23_r22_d_v1), .W_E_so_v0(r23_r22_s_v0), .W_E_so_v1(r23_r22_s_v1), .W_E_ro_v0(r23_r22_r_v0), .W_E_ro_v1(r23_r22_r_v1), //East direction

//West direction

.pedi_v0(r23_pedi), .pedi_v1(r23_pedi), .pesi_v0(r23_pesi), .pesi_v1(r23_pesi), .peri_v0(r23_peri_v0), .peri_v1(r23_peri_v1), 
.pedo_v0(r23_pedo_v0), .pedo_v1(r23_pedo_v1), .peso_v0(r23_peso_v0), .peso_v1(r23_peso_v1), .pero_v0(r23_pero), .pero_v1(r23_pero) //PE direction
);

router router22(.clk(clk), .reset(reset), .polarity(polarity), 
.N_S_di_v0(r32_r22_d_v0), .N_S_di_v1(r32_r22_d_v1), .N_S_si_v0(r32_r22_s_v0), .N_S_si_v1(r32_r22_s_v1), .N_S_ri_v0(r32_r22_r_v0), .N_S_ri_v1(r32_r22_r_v1), 
.S_N_do_v0(r22_r32_d_v0), .S_N_do_v1(r22_r32_d_v1), .S_N_so_v0(r22_r32_s_v0), .S_N_so_v1(r22_r32_s_v1), .S_N_ro_v0(r22_r32_r_v0), .S_N_ro_v1(r22_r32_r_v1), //North direction        

.S_N_di_v0(r12_r22_d_v0), .S_N_di_v1(r12_r22_d_v1), .S_N_si_v0(r12_r22_s_v0), .S_N_si_v1(r12_r22_s_v1), .S_N_ri_v0(r12_r22_r_v0), .S_N_ri_v1(r12_r22_r_v1), 
.N_S_do_v0(r22_r12_d_v0), .N_S_do_v1(r22_r12_d_v1), .N_S_so_v0(r22_r12_s_v0), .N_S_so_v1(r22_r12_s_v1), .N_S_ro_v0(r22_r12_r_v0), .N_S_ro_v1(r22_r12_r_v1), //South direction

.E_W_di_v0(r21_r22_d_v0), .E_W_di_v1(r21_r22_d_v1), .E_W_si_v0(r21_r22_s_v0), .E_W_si_v1(r21_r22_s_v1), .E_W_ri_v0(r21_r22_r_v0), .E_W_ri_v1(r21_r22_r_v1), 
.W_E_do_v0(r22_r21_d_v0), .W_E_do_v1(r22_r21_d_v1), .W_E_so_v0(r22_r21_s_v0), .W_E_so_v1(r22_r21_s_v1), .W_E_ro_v0(r22_r21_r_v0), .W_E_ro_v1(r22_r21_r_v1), //East direction

.W_E_di_v0(r23_r22_d_v0), .W_E_di_v1(r23_r22_d_v1), .W_E_si_v0(r23_r22_s_v0), .W_E_si_v1(r23_r22_s_v1), .W_E_ri_v0(r23_r22_r_v0), .W_E_ri_v1(r23_r22_r_v1), 
.E_W_do_v0(r22_r23_d_v0), .E_W_do_v1(r22_r23_d_v1), .E_W_so_v0(r22_r23_s_v0), .E_W_so_v1(r22_r23_s_v1), .E_W_ro_v0(r22_r23_r_v0), .E_W_ro_v1(r22_r23_r_v1), //West direction

.pedi_v0(r22_pedi), .pedi_v1(r22_pedi), .pesi_v0(r22_pesi), .pesi_v1(r22_pesi), .peri_v0(r22_peri_v0), .peri_v1(r22_peri_v1), 
.pedo_v0(r22_pedo_v0), .pedo_v1(r22_pedo_v1), .peso_v0(r22_peso_v0), .peso_v1(r22_peso_v1), .pero_v0(r22_pero), .pero_v1(r22_pero) //PE direction
);

router router21(.clk(clk), .reset(reset), .polarity(polarity), 
.N_S_di_v0(r31_r21_d_v0), .N_S_di_v1(r31_r21_d_v1), .N_S_si_v0(r31_r21_s_v0), .N_S_si_v1(r31_r21_s_v1), .N_S_ri_v0(r31_r21_r_v0), .N_S_ri_v1(r31_r21_r_v1), 
.S_N_do_v0(r21_r31_d_v0), .S_N_do_v1(r21_r31_d_v1), .S_N_so_v0(r21_r31_s_v0), .S_N_so_v1(r21_r31_s_v1), .S_N_ro_v0(r21_r31_r_v0), .S_N_ro_v1(r21_r31_r_v1), //North direction         

.S_N_di_v0(r11_r21_d_v0), .S_N_di_v1(r11_r21_d_v1), .S_N_si_v0(r11_r21_s_v0), .S_N_si_v1(r11_r21_s_v1), .S_N_ri_v0(r11_r21_r_v0), .S_N_ri_v1(r11_r21_r_v1), 
.N_S_do_v0(r21_r11_d_v0), .N_S_do_v1(r21_r11_d_v1), .N_S_so_v0(r21_r11_s_v0), .N_S_so_v1(r21_r11_s_v1), .N_S_ro_v0(r21_r11_r_v0), .N_S_ro_v1(r21_r11_r_v1), //South direction

.E_W_di_v0(r20_r21_d_v0), .E_W_di_v1(r20_r21_d_v1), .E_W_si_v0(r20_r21_s_v0), .E_W_si_v1(r20_r21_s_v1), .E_W_ri_v0(r20_r21_r_v0), .E_W_ri_v1(r20_r21_r_v1), 
.W_E_do_v0(r21_r20_d_v0), .W_E_do_v1(r21_r20_d_v1), .W_E_so_v0(r21_r20_s_v0), .W_E_so_v1(r21_r20_s_v1), .W_E_ro_v0(r21_r20_r_v0), .W_E_ro_v1(r21_r20_r_v1), //East direction

.W_E_di_v0(r22_r21_d_v0), .W_E_di_v1(r22_r21_d_v1), .W_E_si_v0(r22_r21_s_v0), .W_E_si_v1(r22_r21_s_v1), .W_E_ri_v0(r22_r21_r_v0), .W_E_ri_v1(r22_r21_r_v1), 
.E_W_do_v0(r21_r22_d_v0), .E_W_do_v1(r21_r22_d_v1), .E_W_so_v0(r21_r22_s_v0), .E_W_so_v1(r21_r22_s_v1), .E_W_ro_v0(r21_r22_r_v0), .E_W_ro_v1(r21_r22_r_v1), //West direction

.pedi_v0(r21_pedi), .pedi_v1(r21_pedi), .pesi_v0(r21_pesi), .pesi_v1(r21_pesi), .peri_v0(r21_peri_v0), .peri_v1(r21_peri_v1), 
.pedo_v0(r21_pedo_v0), .pedo_v1(r21_pedo_v1), .peso_v0(r21_peso_v0), .peso_v1(r21_peso_v1), .pero_v0(r21_pero), .pero_v1(r21_pero) //PE direction
);

router router20(.clk(clk), .reset(reset), .polarity(polarity), 
.N_S_di_v0(r30_r20_d_v0), .N_S_di_v1(r30_r20_d_v1), .N_S_si_v0(r30_r20_s_v0), .N_S_si_v1(r30_r20_s_v1), .N_S_ri_v0(r30_r20_r_v0), .N_S_ri_v1(r30_r20_r_v1), 
.S_N_do_v0(r20_r30_d_v0), .S_N_do_v1(r20_r30_d_v1), .S_N_so_v0(r20_r30_s_v0), .S_N_so_v1(r20_r30_s_v1), .S_N_ro_v0(r20_r30_r_v0), .S_N_ro_v1(r20_r30_r_v1), //North direction        

.S_N_di_v0(r10_r20_d_v0), .S_N_di_v1(r10_r20_d_v1), .S_N_si_v0(r10_r20_s_v0), .S_N_si_v1(r10_r20_s_v1), .S_N_ri_v0(r10_r20_r_v0), .S_N_ri_v1(r10_r20_r_v1), 
.N_S_do_v0(r20_r10_d_v0), .N_S_do_v1(r20_r10_d_v1), .N_S_so_v0(r20_r10_s_v0), .N_S_so_v1(r20_r10_s_v1), .N_S_ro_v0(r20_r10_r_v0), .N_S_ro_v1(r20_r10_r_v1), //South direction

//East direction

.W_E_di_v0(r21_r20_d_v0), .W_E_di_v1(r21_r20_d_v1), .W_E_si_v0(r21_r20_s_v0), .W_E_si_v1(r21_r20_s_v1), .W_E_ri_v0(r21_r20_r_v0), .W_E_ri_v1(r21_r20_r_v1), 
.E_W_do_v0(r20_r21_d_v0), .E_W_do_v1(r20_r21_d_v1), .E_W_so_v0(r20_r21_s_v0), .E_W_so_v1(r20_r21_s_v1), .E_W_ro_v0(r20_r21_r_v0), .E_W_ro_v1(r20_r21_r_v1), //West direction

.pedi_v0(r20_pedi), .pedi_v1(r20_pedi), .pesi_v0(r20_pesi), .pesi_v1(r20_pesi), .peri_v0(r20_peri_v0), .peri_v1(r20_peri_v1), 
.pedo_v0(r20_pedo_v0), .pedo_v1(r20_pedo_v1), .peso_v0(r20_peso_v0), .peso_v1(r20_peso_v1), .pero_v0(r20_pero), .pero_v1(r20_pero) //PE direction
);
////////////////////////////////////////////////////////////////////////2nd floor routers finished///////////////////////////////////////////////////////////////////////////




////////////////////////////////////////////////////////////////////////1st floor routers///////////////////////////////////////////////////////////////////////////

router router13(.clk(clk), .reset(reset), .polarity(polarity), 
.N_S_di_v0(r23_r13_d_v0), .N_S_di_v1(r23_r13_d_v1), .N_S_si_v0(r23_r13_s_v0), .N_S_si_v1(r23_r13_s_v1), .N_S_ri_v0(r23_r13_r_v0), .N_S_ri_v1(r23_r13_r_v1), 
.S_N_do_v0(r13_r23_d_v0), .S_N_do_v1(r13_r23_d_v1), .S_N_so_v0(r13_r23_s_v0), .S_N_so_v1(r13_r23_s_v1), .S_N_ro_v0(r13_r23_r_v0), .S_N_ro_v1(r13_r23_r_v1), //North direction        

.S_N_di_v0(r03_r13_d_v0), .S_N_di_v1(r03_r13_d_v1), .S_N_si_v0(r03_r13_s_v0), .S_N_si_v1(r03_r13_s_v1), .S_N_ri_v0(r03_r13_r_v0), .S_N_ri_v1(r03_r13_r_v1), 
.N_S_do_v0(r13_r03_d_v0), .N_S_do_v1(r13_r03_d_v1), .N_S_so_v0(r13_r03_s_v0), .N_S_so_v1(r13_r03_s_v1), .N_S_ro_v0(r13_r03_r_v0), .N_S_ro_v1(r13_r03_r_v1), //South direction

.E_W_di_v0(r12_r13_d_v0), .E_W_di_v1(r12_r13_d_v1), .E_W_si_v0(r12_r13_s_v0), .E_W_si_v1(r12_r13_s_v1), .E_W_ri_v0(r12_r13_r_v0), .E_W_ri_v1(r12_r13_r_v1), 
.W_E_do_v0(r13_r12_d_v0), .W_E_do_v1(r13_r12_d_v1), .W_E_so_v0(r13_r12_s_v0), .W_E_so_v1(r13_r12_s_v1), .W_E_ro_v0(r13_r12_r_v0), .W_E_ro_v1(r13_r12_r_v1), //East direction

//West direction

.pedi_v0(r13_pedi), .pedi_v1(r13_pedi), .pesi_v0(r13_pesi), .pesi_v1(r13_pesi), .peri_v0(r13_peri_v0), .peri_v1(r13_peri_v1), 
.pedo_v0(r13_pedo_v0), .pedo_v1(r13_pedo_v1), .peso_v0(r13_peso_v0), .peso_v1(r13_peso_v1), .pero_v0(r13_pero), .pero_v1(r13_pero) //PE direction
);

router router12(.clk(clk), .reset(reset), .polarity(polarity), 
.N_S_di_v0(r22_r12_d_v0), .N_S_di_v1(r22_r12_d_v1), .N_S_si_v0(r22_r12_s_v0), .N_S_si_v1(r22_r12_s_v1), .N_S_ri_v0(r22_r12_r_v0), .N_S_ri_v1(r22_r12_r_v1), 
.S_N_do_v0(r12_r22_d_v0), .S_N_do_v1(r12_r22_d_v1), .S_N_so_v0(r12_r22_s_v0), .S_N_so_v1(r12_r22_s_v1), .S_N_ro_v0(r12_r22_r_v0), .S_N_ro_v1(r12_r22_r_v1), //North direction        

.S_N_di_v0(r02_r12_d_v0), .S_N_di_v1(r02_r12_d_v1), .S_N_si_v0(r02_r12_s_v0), .S_N_si_v1(r02_r12_s_v1), .S_N_ri_v0(r02_r12_r_v0), .S_N_ri_v1(r02_r12_r_v1), 
.N_S_do_v0(r12_r02_d_v0), .N_S_do_v1(r12_r02_d_v1), .N_S_so_v0(r12_r02_s_v0), .N_S_so_v1(r12_r02_s_v1), .N_S_ro_v0(r12_r02_r_v0), .N_S_ro_v1(r12_r02_r_v1), //South direction

.E_W_di_v0(r11_r12_d_v0), .E_W_di_v1(r11_r12_d_v1), .E_W_si_v0(r11_r12_s_v0), .E_W_si_v1(r11_r12_s_v1), .E_W_ri_v0(r11_r12_r_v0), .E_W_ri_v1(r11_r12_r_v1), 
.W_E_do_v0(r12_r11_d_v0), .W_E_do_v1(r12_r11_d_v1), .W_E_so_v0(r12_r11_s_v0), .W_E_so_v1(r12_r11_s_v1), .W_E_ro_v0(r12_r11_r_v0), .W_E_ro_v1(r12_r11_r_v1), //East direction

.W_E_di_v0(r13_r12_d_v0), .W_E_di_v1(r13_r12_d_v1), .W_E_si_v0(r13_r12_s_v0), .W_E_si_v1(r13_r12_s_v1), .W_E_ri_v0(r13_r12_r_v0), .W_E_ri_v1(r13_r12_r_v1), 
.E_W_do_v0(r12_r13_d_v0), .E_W_do_v1(r12_r13_d_v1), .E_W_so_v0(r12_r13_s_v0), .E_W_so_v1(r12_r13_s_v1), .E_W_ro_v0(r12_r13_r_v0), .E_W_ro_v1(r12_r13_r_v1), //West direction

.pedi_v0(r12_pedi), .pedi_v1(r12_pedi), .pesi_v0(r12_pesi), .pesi_v1(r12_pesi), .peri_v0(r12_peri_v0), .peri_v1(r12_peri_v1), 
.pedo_v0(r12_pedo_v0), .pedo_v1(r12_pedo_v1), .peso_v0(r12_peso_v0), .peso_v1(r12_peso_v1), .pero_v0(r12_pero), .pero_v1(r12_pero) //PE direction
);

router router11(.clk(clk), .reset(reset), .polarity(polarity), 
.N_S_di_v0(r21_r11_d_v0), .N_S_di_v1(r21_r11_d_v1), .N_S_si_v0(r21_r11_s_v0), .N_S_si_v1(r21_r11_s_v1), .N_S_ri_v0(r21_r11_r_v0), .N_S_ri_v1(r21_r11_r_v1), 
.S_N_do_v0(r11_r21_d_v0), .S_N_do_v1(r11_r21_d_v1), .S_N_so_v0(r11_r21_s_v0), .S_N_so_v1(r11_r21_s_v1), .S_N_ro_v0(r11_r21_r_v0), .S_N_ro_v1(r11_r21_r_v1), //North direction        

.S_N_di_v0(r01_r11_d_v0), .S_N_di_v1(r01_r11_d_v1), .S_N_si_v0(r01_r11_s_v0), .S_N_si_v1(r01_r11_s_v1), .S_N_ri_v0(r01_r11_r_v0), .S_N_ri_v1(r01_r11_r_v1), 
.N_S_do_v0(r11_r01_d_v0), .N_S_do_v1(r11_r01_d_v1), .N_S_so_v0(r11_r01_s_v0), .N_S_so_v1(r11_r01_s_v1), .N_S_ro_v0(r11_r01_r_v0), .N_S_ro_v1(r11_r01_r_v1), //South direction

.E_W_di_v0(r10_r11_d_v0), .E_W_di_v1(r10_r11_d_v1), .E_W_si_v0(r10_r11_s_v0), .E_W_si_v1(r10_r11_s_v1), .E_W_ri_v0(r10_r11_r_v0), .E_W_ri_v1(r10_r11_r_v1), 
.W_E_do_v0(r11_r10_d_v0), .W_E_do_v1(r11_r10_d_v1), .W_E_so_v0(r11_r10_s_v0), .W_E_so_v1(r11_r10_s_v1), .W_E_ro_v0(r11_r10_r_v0), .W_E_ro_v1(r11_r10_r_v1), //East direction

.W_E_di_v0(r12_r11_d_v0), .W_E_di_v1(r12_r11_d_v1), .W_E_si_v0(r12_r11_s_v0), .W_E_si_v1(r12_r11_s_v1), .W_E_ri_v0(r12_r11_r_v0), .W_E_ri_v1(r12_r11_r_v1), 
.E_W_do_v0(r11_r12_d_v0), .E_W_do_v1(r11_r12_d_v1), .E_W_so_v0(r11_r12_s_v0), .E_W_so_v1(r11_r12_s_v1), .E_W_ro_v0(r11_r12_r_v0), .E_W_ro_v1(r11_r12_r_v1), //West direction

.pedi_v0(r11_pedi), .pedi_v1(r11_pedi), .pesi_v0(r11_pesi), .pesi_v1(r11_pesi), .peri_v0(r11_peri_v0), .peri_v1(r11_peri_v1), 
.pedo_v0(r11_pedo_v0), .pedo_v1(r11_pedo_v1), .peso_v0(r11_peso_v0), .peso_v1(r11_peso_v1), .pero_v0(r11_pero), .pero_v1(r11_pero) //PE direction
);

router router10(.clk(clk), .reset(reset), .polarity(polarity), 
.N_S_di_v0(r20_r10_d_v0), .N_S_di_v1(r20_r10_d_v1), .N_S_si_v0(r20_r10_s_v0), .N_S_si_v1(r20_r10_s_v1), .N_S_ri_v0(r20_r10_r_v0), .N_S_ri_v1(r20_r10_r_v1), 
.S_N_do_v0(r10_r20_d_v0), .S_N_do_v1(r10_r20_d_v1), .S_N_so_v0(r10_r20_s_v0), .S_N_so_v1(r10_r20_s_v1), .S_N_ro_v0(r10_r20_r_v0), .S_N_ro_v1(r10_r20_r_v1), //North direction        

.S_N_di_v0(r00_r10_d_v0), .S_N_di_v1(r00_r10_d_v1), .S_N_si_v0(r00_r10_s_v0), .S_N_si_v1(r00_r10_s_v1), .S_N_ri_v0(r00_r10_r_v0), .S_N_ri_v1(r00_r10_r_v1), 
.N_S_do_v0(r10_r00_d_v0), .N_S_do_v1(r10_r00_d_v1), .N_S_so_v0(r10_r00_s_v0), .N_S_so_v1(r10_r00_s_v1), .N_S_ro_v0(r10_r00_r_v0), .N_S_ro_v1(r10_r00_r_v1), //South direction

//East direction

.W_E_di_v0(r11_r10_d_v0), .W_E_di_v1(r11_r10_d_v1), .W_E_si_v0(r11_r10_s_v0), .W_E_si_v1(r11_r10_s_v1), .W_E_ri_v0(r11_r10_r_v0), .W_E_ri_v1(r11_r10_r_v1), 
.E_W_do_v0(r10_r11_d_v0), .E_W_do_v1(r10_r11_d_v1), .E_W_so_v0(r10_r11_s_v0), .E_W_so_v1(r10_r11_s_v1), .E_W_ro_v0(r10_r11_r_v0), .E_W_ro_v1(r10_r11_r_v1), //West direction

.pedi_v0(r10_pedi), .pedi_v1(r10_pedi), .pesi_v0(r10_pesi), .pesi_v1(r10_pesi), .peri_v0(r10_peri_v0), .peri_v1(r10_peri_v1), 
.pedo_v0(r10_pedo_v0), .pedo_v1(r10_pedo_v1), .peso_v0(r10_peso_v0), .peso_v1(r10_peso_v1), .pero_v0(r10_pero), .pero_v1(r10_pero) //PE direction
);

////////////////////////////////////////////////////////////////////////1st floor routers finished///////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////0 floor routers///////////////////////////////////////////////////////////////////////////

router router03(.clk(clk), .reset(reset), .polarity(polarity), 
.N_S_di_v0(r13_r03_d_v0), .N_S_di_v1(r13_r03_d_v1), .N_S_si_v0(r13_r03_s_v0), .N_S_si_v1(r13_r03_s_v1), .N_S_ri_v0(r13_r03_r_v0), .N_S_ri_v1(r13_r03_r_v1), 
.S_N_do_v0(r03_r13_d_v0), .S_N_do_v1(r03_r13_d_v1), .S_N_so_v0(r03_r13_s_v0), .S_N_so_v1(r03_r13_s_v1), .S_N_ro_v0(r03_r13_r_v0), .S_N_ro_v1(r03_r13_r_v1), //North direction        

//South direction

.E_W_di_v0(r02_r03_d_v0), .E_W_di_v1(r02_r03_d_v1), .E_W_si_v0(r02_r03_s_v0), .E_W_si_v1(r02_r03_s_v1), .E_W_ri_v0(r02_r03_r_v0), .E_W_ri_v1(r02_r03_r_v1), 
.W_E_do_v0(r03_r02_d_v0), .W_E_do_v1(r03_r02_d_v1), .W_E_so_v0(r03_r02_s_v0), .W_E_so_v1(r03_r02_s_v1), .W_E_ro_v0(r03_r02_r_v0), .W_E_ro_v1(r03_r02_r_v1), //East direction

//West direction

.pedi_v0(r03_pedi), .pedi_v1(r03_pedi), .pesi_v0(r03_pesi), .pesi_v1(r03_pesi), .peri_v0(r03_peri_v0), .peri_v1(r03_peri_v1), 
.pedo_v0(r03_pedo_v0), .pedo_v1(r03_pedo_v1), .peso_v0(r03_peso_v0), .peso_v1(r03_peso_v1), .pero_v0(r03_pero), .pero_v1(r03_pero) //PE direction
);

router router02(.clk(clk), .reset(reset), .polarity(polarity), 
.N_S_di_v0(r12_r02_d_v0), .N_S_di_v1(r12_r02_d_v1), .N_S_si_v0(r12_r02_s_v0), .N_S_si_v1(r12_r02_s_v1), .N_S_ri_v0(r12_r02_r_v0), .N_S_ri_v1(r12_r02_r_v1), 
.S_N_do_v0(r02_r12_d_v0), .S_N_do_v1(r02_r12_d_v1), .S_N_so_v0(r02_r12_s_v0), .S_N_so_v1(r02_r12_s_v1), .S_N_ro_v0(r02_r12_r_v0), .S_N_ro_v1(r02_r12_r_v1), //North direction        

 //South direction

.E_W_di_v0(r01_r02_d_v0), .E_W_di_v1(r01_r02_d_v1), .E_W_si_v0(r01_r02_s_v0), .E_W_si_v1(r01_r02_s_v1), .E_W_ri_v0(r01_r02_r_v0), .E_W_ri_v1(r01_r02_r_v1), 
.W_E_do_v0(r02_r01_d_v0), .W_E_do_v1(r02_r01_d_v1), .W_E_so_v0(r02_r01_s_v0), .W_E_so_v1(r02_r01_s_v1), .W_E_ro_v0(r02_r01_r_v0), .W_E_ro_v1(r02_r01_r_v1), //East direction

.W_E_di_v0(r03_r02_d_v0), .W_E_di_v1(r03_r02_d_v1), .W_E_si_v0(r03_r02_s_v0), .W_E_si_v1(r03_r02_s_v1), .W_E_ri_v0(r03_r02_r_v0), .W_E_ri_v1(r03_r02_r_v1), 
.E_W_do_v0(r02_r03_d_v0), .E_W_do_v1(r02_r03_d_v1), .E_W_so_v0(r02_r03_s_v0), .E_W_so_v1(r02_r03_s_v1), .E_W_ro_v0(r02_r03_r_v0), .E_W_ro_v1(r02_r03_r_v1), //West direction

.pedi_v0(r02_pedi), .pedi_v1(r02_pedi), .pesi_v0(r02_pesi), .pesi_v1(r02_pesi), .peri_v0(r02_peri_v0), .peri_v1(r02_peri_v1), 
.pedo_v0(r02_pedo_v0), .pedo_v1(r02_pedo_v1), .peso_v0(r02_peso_v0), .peso_v1(r02_peso_v1), .pero_v0(r02_pero), .pero_v1(r02_pero) //PE direction
);

router router01(.clk(clk), .reset(reset), .polarity(polarity), 
.N_S_di_v0(r11_r01_d_v0), .N_S_di_v1(r11_r01_d_v1), .N_S_si_v0(r11_r01_s_v0), .N_S_si_v1(r11_r01_s_v1), .N_S_ri_v0(r11_r01_r_v0), .N_S_ri_v1(r11_r01_r_v1), 
.S_N_do_v0(r01_r11_d_v0), .S_N_do_v1(r01_r11_d_v1), .S_N_so_v0(r01_r11_s_v0), .S_N_so_v1(r01_r11_s_v1), .S_N_ro_v0(r01_r11_r_v0), .S_N_ro_v1(r01_r11_r_v1), //North direction        

//South direction

.E_W_di_v0(r00_r01_d_v0), .E_W_di_v1(r00_r01_d_v1), .E_W_si_v0(r00_r01_s_v0), .E_W_si_v1(r00_r01_s_v1), .E_W_ri_v0(r00_r01_r_v0), .E_W_ri_v1(r00_r01_r_v1), 
.W_E_do_v0(r01_r00_d_v0), .W_E_do_v1(r01_r00_d_v1), .W_E_so_v0(r01_r00_s_v0), .W_E_so_v1(r01_r00_s_v1), .W_E_ro_v0(r01_r00_r_v0), .W_E_ro_v1(r01_r00_r_v1), //East direction

.W_E_di_v0(r02_r01_d_v0), .W_E_di_v1(r02_r01_d_v1), .W_E_si_v0(r02_r01_s_v0), .W_E_si_v1(r02_r01_s_v1), .W_E_ri_v0(r02_r01_r_v0), .W_E_ri_v1(r02_r01_r_v1), 
.E_W_do_v0(r01_r02_d_v0), .E_W_do_v1(r01_r02_d_v1), .E_W_so_v0(r01_r02_s_v0), .E_W_so_v1(r01_r02_s_v1), .E_W_ro_v0(r01_r02_r_v0), .E_W_ro_v1(r01_r02_r_v1), //West direction

.pedi_v0(r01_pedi), .pedi_v1(r01_pedi), .pesi_v0(r01_pesi), .pesi_v1(r01_pesi), .peri_v0(r01_peri_v0), .peri_v1(r01_peri_v1), 
.pedo_v0(r01_pedo_v0), .pedo_v1(r01_pedo_v1), .peso_v0(r01_peso_v0), .peso_v1(r01_peso_v1), .pero_v0(r01_pero), .pero_v1(r01_pero) //PE direction
);

router router00(.clk(clk), .reset(reset), .polarity(polarity), 
.N_S_di_v0(r10_r00_d_v0), .N_S_di_v1(r10_r00_d_v1), .N_S_si_v0(r10_r00_s_v0), .N_S_si_v1(r10_r00_s_v1), .N_S_ri_v0(r10_r00_r_v0), .N_S_ri_v1(r10_r00_r_v1), 
.S_N_do_v0(r00_r10_d_v0), .S_N_do_v1(r00_r10_d_v1), .S_N_so_v0(r00_r10_s_v0), .S_N_so_v1(r00_r10_s_v1), .S_N_ro_v0(r00_r10_r_v0), .S_N_ro_v1(r00_r10_r_v1), //North direction        

//South direction
//East direction

.W_E_di_v0(r01_r00_d_v0), .W_E_di_v1(r01_r00_d_v1), .W_E_si_v0(r01_r00_s_v0), .W_E_si_v1(r01_r00_s_v1), .W_E_ri_v0(r01_r00_r_v0), .W_E_ri_v1(r01_r00_r_v1), 
.E_W_do_v0(r00_r01_d_v0), .E_W_do_v1(r00_r01_d_v1), .E_W_so_v0(r00_r01_s_v0), .E_W_so_v1(r00_r01_s_v1), .E_W_ro_v0(r00_r01_r_v0), .E_W_ro_v1(r00_r01_r_v1), //West direction

.pedi_v0(r00_pedi), .pedi_v1(r00_pedi), .pesi_v0(r00_pesi), .pesi_v1(r00_pesi), .peri_v0(r00_peri_v0), .peri_v1(r00_peri_v1), 
.pedo_v0(r00_pedo_v0), .pedo_v1(r00_pedo_v1), .peso_v0(r00_peso_v0), .peso_v1(r00_peso_v1), .pero_v0(r00_pero), .pero_v1(r00_pero) //PE direction
);

////////////////////////////////////////////////////////////////////////0 floor routers finished///////////////////////////////////////////////////////////////////////////












endmodule