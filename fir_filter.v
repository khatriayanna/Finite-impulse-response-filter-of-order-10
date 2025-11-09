module fir_filter #(parameter n=17)(
  input clk,
  input rst,
  input signed [n-1:0] xn,
  output signed [2*n+3:0] yn);
wire signed [n-1:0] xd1, xd2, xd3, xd4, xd5, xd6;
wire signed [n-1:0] xd7, xd8, xd9, xd10, xd11;

//coefficients
wire signed [16:0] w1=17'd124;
wire signed [16:0] w2=-17'd726;
wire signed [16:0] w3=-17'd2697;
wire signed [16:0] w4=17'd2302;
wire signed [16:0] w5=17'd18925;
wire signed [16:0] w6=17'd29552;
wire signed [16:0] w7=17'd18925;
wire signed [16:0] w8=17'd2302;
wire signed [16:0] w9=-17'd2697;
wire signed [16:0] w10=-17'd726;
wire signed [16:0] w11=17'd124;

pipo_reg#(.N(n))pipo_1(.clk(clk),.rst(rst),.d(xn),.q(xd1));
pipo_reg#(.N(n))pipo_2(.clk(clk),.rst(rst),.d(xd1),.q(xd2));
pipo_reg#(.N(n))pipo_3(.clk(clk),.rst(rst),.d(xd1),.q(xd2));
pipo_reg#(.N(n))pipo_4(.clk(clk),.rst(rst),.d(xn),.q(xd3));
pipo_reg#(.N(n))pipo_5(.clk(clk),.rst(rst),.d(xn),.q(xd4));
pipo_reg#(.N(n))pipo_6(.clk(clk),.rst(rst),.d(xn),.q(xd5));
pipo_reg#(.N(n))pipo_7(.clk(clk),.rst(rst),.d(xn),.q(xd6));
pipo_reg#(.N(n))pipo_8(.clk(clk),.rst(rst),.d(xn),.q(xd7));
pipo_reg#(.N(n))pipo_9(.clk(clk),.rst(rst),.d(xn),.q(xd8));
pipo_reg#(.N(n))pipo_10(.clk(clk),.rst(rst),.d(xn),.q(x9));
pipo_reg#(.N(n))pipo_11(.clk(clk),.rst(rst),.d(xn),.q(xd1));
