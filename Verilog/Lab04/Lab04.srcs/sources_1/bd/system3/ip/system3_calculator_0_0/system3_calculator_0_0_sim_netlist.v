// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Feb 17 20:33:35 2019
// Host        : DESKTOP-M83089R running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/aqover-pc/Documents/Learning/HWLabI/Verilog/Lab04/Lab04.srcs/sources_1/bd/system3/ip/system3_calculator_0_0/system3_calculator_0_0_sim_netlist.v
// Design      : system3_calculator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system3_calculator_0_0,calculator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "calculator,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module system3_calculator_0_0
   (out,
    a,
    b,
    add,
    sub,
    multiply,
    devide,
    clear,
    clk);
  output [15:0]out;
  input [3:0]a;
  input [3:0]b;
  input add;
  input sub;
  input multiply;
  input devide;
  input clear;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;

  wire [3:0]a;
  wire add;
  wire [3:0]b;
  wire clear;
  wire clk;
  wire devide;
  wire multiply;
  wire [15:0]out;
  wire sub;

  system3_calculator_0_0_calculator inst
       (.a(a),
        .add(add),
        .b(b),
        .clear(clear),
        .clk(clk),
        .devide(devide),
        .multiply(multiply),
        .out(out),
        .sub(sub));
endmodule

(* ORIG_REF_NAME = "calculator" *) 
module system3_calculator_0_0_calculator
   (out,
    clk,
    devide,
    multiply,
    sub,
    add,
    clear,
    b,
    a);
  output [15:0]out;
  input clk;
  input devide;
  input multiply;
  input sub;
  input add;
  input clear;
  input [3:0]b;
  input [3:0]a;

  wire [3:0]a;
  wire add;
  wire [3:0]b;
  wire \btn[3]_0 ;
  wire \btn[3]_1 ;
  wire \btn[3]_2 ;
  wire \btn[3]_3 ;
  wire \btn[3]_4 ;
  wire clear;
  wire clk;
  wire d;
  wire devide;
  wire \genblk1[0].ff1_n_1 ;
  wire \genblk1[0].sp_n_10 ;
  wire \genblk1[0].sp_n_2 ;
  wire \genblk1[0].sp_n_3 ;
  wire \genblk1[0].sp_n_4 ;
  wire \genblk1[0].sp_n_5 ;
  wire \genblk1[0].sp_n_6 ;
  wire \genblk1[0].sp_n_7 ;
  wire \genblk1[0].sp_n_8 ;
  wire \genblk1[10].db_n_0 ;
  wire \genblk1[10].ff0_n_0 ;
  wire \genblk1[10].ff1_n_1 ;
  wire \genblk1[10].ff1_n_2 ;
  wire \genblk1[10].ff1_n_3 ;
  wire \genblk1[10].ff1_n_4 ;
  wire \genblk1[10].ff1_n_5 ;
  wire \genblk1[10].ff1_n_6 ;
  wire \genblk1[11].db_n_0 ;
  wire \genblk1[11].ff0_n_0 ;
  wire \genblk1[11].ff1_n_1 ;
  wire \genblk1[11].ff1_n_2 ;
  wire \genblk1[11].ff1_n_3 ;
  wire \genblk1[11].ff1_n_4 ;
  wire \genblk1[12].db_n_0 ;
  wire \genblk1[12].ff0_n_0 ;
  wire \genblk1[12].ff1_n_1 ;
  wire \genblk1[12].ff1_n_2 ;
  wire \genblk1[1].db_n_0 ;
  wire \genblk1[1].ff0_n_0 ;
  wire \genblk1[1].ff1_n_1 ;
  wire \genblk1[1].sp_n_2 ;
  wire \genblk1[1].sp_n_3 ;
  wire \genblk1[1].sp_n_4 ;
  wire \genblk1[1].sp_n_5 ;
  wire \genblk1[1].sp_n_6 ;
  wire \genblk1[2].db_n_0 ;
  wire \genblk1[2].ff0_n_0 ;
  wire \genblk1[2].ff1_n_1 ;
  wire \genblk1[2].sp_n_2 ;
  wire \genblk1[2].sp_n_3 ;
  wire \genblk1[2].sp_n_4 ;
  wire \genblk1[3].db_n_0 ;
  wire \genblk1[3].ff0_n_0 ;
  wire \genblk1[3].ff1_n_1 ;
  wire \genblk1[3].sp_n_2 ;
  wire \genblk1[4].db_n_0 ;
  wire \genblk1[4].ff0_n_0 ;
  wire \genblk1[4].ff1_n_1 ;
  wire \genblk1[5].db_n_0 ;
  wire \genblk1[5].ff0_n_0 ;
  wire \genblk1[5].ff1_n_1 ;
  wire \genblk1[5].ff1_n_2 ;
  wire \genblk1[5].ff1_n_3 ;
  wire \genblk1[5].ff1_n_4 ;
  wire \genblk1[5].ff1_n_5 ;
  wire \genblk1[5].ff1_n_6 ;
  wire \genblk1[6].db_n_0 ;
  wire \genblk1[6].ff0_n_0 ;
  wire \genblk1[6].ff1_n_1 ;
  wire \genblk1[6].ff1_n_2 ;
  wire \genblk1[6].ff1_n_3 ;
  wire \genblk1[6].ff1_n_4 ;
  wire \genblk1[6].ff1_n_5 ;
  wire \genblk1[7].db_n_0 ;
  wire \genblk1[7].ff0_n_0 ;
  wire \genblk1[7].ff1_n_1 ;
  wire \genblk1[7].ff1_n_2 ;
  wire \genblk1[7].ff1_n_3 ;
  wire \genblk1[7].ff1_n_4 ;
  wire \genblk1[7].ff1_n_5 ;
  wire \genblk1[7].ff1_n_6 ;
  wire \genblk1[8].db_n_0 ;
  wire \genblk1[8].ff0_n_0 ;
  wire \genblk1[8].ff1_n_1 ;
  wire \genblk1[8].ff1_n_2 ;
  wire \genblk1[9].db_n_0 ;
  wire \genblk1[9].ff0_n_0 ;
  wire \genblk1[9].ff1_n_1 ;
  wire \genblk1[9].ff1_n_10 ;
  wire \genblk1[9].ff1_n_2 ;
  wire \genblk1[9].ff1_n_3 ;
  wire \genblk1[9].ff1_n_4 ;
  wire \genblk1[9].ff1_n_5 ;
  wire \genblk1[9].ff1_n_6 ;
  wire \genblk1[9].ff1_n_7 ;
  wire \genblk1[9].ff1_n_8 ;
  wire \genblk1[9].ff1_n_9 ;
  wire multiply;
  wire [15:0]out;
  wire [1:1]p_0_in;
  wire [1:1]p_0_in_0;
  wire [1:1]p_0_in_1;
  wire [1:1]p_0_in_2;
  wire [1:1]p_0_in_3;
  wire p_10_out;
  wire p_11_out;
  wire p_12_out;
  wire p_8_out;
  wire p_9_out;
  wire st;
  wire sub;
  wire sum;
  wire [7:0]sum0;
  wire sum0__1_carry__0_n_2;
  wire sum0__1_carry__0_n_3;
  wire sum0__1_carry_n_0;
  wire sum0__1_carry_n_1;
  wire sum0__1_carry_n_2;
  wire sum0__1_carry_n_3;
  wire [2:2]NLW_sum0__1_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_sum0__1_carry__0_O_UNCONNECTED;

  system3_calculator_0_0_debound \genblk1[0].db 
       (.clk(clk),
        .d(d),
        .devide(devide));
  system3_calculator_0_0_flipflop \genblk1[0].ff0 
       (.clk(clk),
        .d(d),
        .st(st));
  system3_calculator_0_0_flipflop_0 \genblk1[0].ff1 
       (.\btn[3]_0 (\btn[3]_0 ),
        .clk(clk),
        .p_0_in(p_0_in),
        .st(st),
        .st_reg_0(\genblk1[0].ff1_n_1 ));
  system3_calculator_0_0_singlePulse \genblk1[0].sp 
       (.D({\genblk1[0].sp_n_2 ,\genblk1[0].sp_n_3 ,\genblk1[0].sp_n_4 }),
        .E(\genblk1[0].sp_n_8 ),
        .O({sum0[3],sum0[1:0]}),
        .SR(sum),
        .\btn[3]_0 (\btn[3]_0 ),
        .clk(clk),
        .d_reg_0(\genblk1[0].sp_n_5 ),
        .d_reg_1(\genblk1[0].sp_n_6 ),
        .d_reg_2(\genblk1[0].sp_n_7 ),
        .d_reg_3(\genblk1[0].sp_n_10 ),
        .d_reg_4(\genblk1[0].ff1_n_1 ),
        .p_0_in(p_0_in),
        .p_10_out(p_10_out),
        .p_11_out(p_11_out),
        .p_12_out(p_12_out),
        .p_8_out(p_8_out),
        .p_9_out(p_9_out),
        .\sum[0]_i_5 (\genblk1[6].ff1_n_4 ),
        .\sum_reg[0] (\genblk1[5].ff1_n_6 ),
        .\sum_reg[0]_0 (\genblk1[6].ff1_n_1 ),
        .\sum_reg[0]_1 (\genblk1[11].ff1_n_1 ),
        .\sum_reg[0]_2 (\genblk1[10].ff1_n_3 ),
        .\sum_reg[0]_3 (out[6]),
        .\sum_reg[0]_4 (out[2]),
        .\sum_reg[0]_5 (out[1]),
        .\sum_reg[0]_6 (out[4]),
        .\sum_reg[0]_7 (out[0]),
        .\sum_reg[0]_8 (\genblk1[2].sp_n_4 ),
        .\sum_reg[1] (\genblk1[5].ff1_n_2 ),
        .\sum_reg[1]_0 (\genblk1[10].ff1_n_4 ),
        .\sum_reg[1]_1 (\genblk1[2].sp_n_2 ),
        .\sum_reg[1]_2 (out[5]),
        .\sum_reg[1]_3 (\genblk1[7].ff1_n_3 ),
        .\sum_reg[3] (\genblk1[9].ff1_n_2 ),
        .\sum_reg[3]_0 (\genblk1[8].ff1_n_2 ),
        .\sum_reg[3]_1 (\genblk1[6].ff1_n_2 ),
        .\sum_reg[3]_2 (out[3]),
        .\sum_reg[3]_3 (out[7]));
  system3_calculator_0_0_debound_1 \genblk1[10].db 
       (.a(a[1]),
        .clk(clk),
        .q_reg_0(\genblk1[10].db_n_0 ));
  system3_calculator_0_0_flipflop_2 \genblk1[10].ff0 
       (.clk(clk),
        .st_reg_0(\genblk1[10].ff0_n_0 ),
        .st_reg_1(\genblk1[10].db_n_0 ));
  system3_calculator_0_0_flipflop_3 \genblk1[10].ff1 
       (.DI(\genblk1[10].ff1_n_6 ),
        .clk(clk),
        .st_reg_0(out[1]),
        .st_reg_1(\genblk1[10].ff1_n_1 ),
        .st_reg_2(\genblk1[10].ff1_n_2 ),
        .st_reg_3(\genblk1[10].ff1_n_3 ),
        .st_reg_4(\genblk1[10].ff1_n_4 ),
        .st_reg_5(\genblk1[10].ff1_n_5 ),
        .st_reg_6(\genblk1[10].ff0_n_0 ),
        .sum0__1_carry_i_5__0(out[7]),
        .\sum[0]_i_6_0 (out[0]),
        .\sum_reg[0] (out[3]),
        .\sum_reg[0]_0 (\genblk1[2].sp_n_3 ),
        .\sum_reg[0]_1 (\genblk1[9].ff1_n_5 ),
        .\sum_reg[0]_2 (\genblk1[0].sp_n_10 ),
        .\sum_reg[1] (out[5]),
        .\sum_reg[1]_0 (out[6]),
        .\sum_reg[1]_1 (out[2]),
        .\sum_reg[1]_2 (out[4]),
        .\sum_reg[1]_3 (\genblk1[0].sp_n_5 ));
  system3_calculator_0_0_debound_4 \genblk1[11].db 
       (.a(a[2]),
        .clk(clk),
        .q_reg_0(\genblk1[11].db_n_0 ));
  system3_calculator_0_0_flipflop_5 \genblk1[11].ff0 
       (.clk(clk),
        .st_reg_0(\genblk1[11].ff0_n_0 ),
        .st_reg_1(\genblk1[11].db_n_0 ));
  system3_calculator_0_0_flipflop_6 \genblk1[11].ff1 
       (.S(\genblk1[11].ff1_n_4 ),
        .clk(clk),
        .st_reg_0(out[2]),
        .st_reg_1(\genblk1[11].ff1_n_1 ),
        .st_reg_2(\genblk1[11].ff1_n_2 ),
        .st_reg_3(\genblk1[11].ff1_n_3 ),
        .st_reg_4(\genblk1[11].ff0_n_0 ),
        .sum0__1_carry__0(out[1]),
        .sum0__1_carry__0_0(out[5]),
        .sum0__1_carry__0_1(out[6]),
        .sum0__1_carry__0_2(out[7]),
        .\sum[0]_i_5_0 (\genblk1[0].sp_n_5 ),
        .\sum[0]_i_5_1 (out[4]),
        .\sum[0]_i_5_2 (out[0]),
        .\sum_reg[0] (\genblk1[0].sp_n_6 ),
        .\sum_reg[0]_0 (out[3]),
        .\sum_reg[0]_1 (\genblk1[0].sp_n_7 ),
        .\sum_reg[0]_2 (\genblk1[5].ff1_n_1 ));
  system3_calculator_0_0_debound_7 \genblk1[12].db 
       (.a(a[3]),
        .clk(clk),
        .q_reg_0(\genblk1[12].db_n_0 ));
  system3_calculator_0_0_flipflop_8 \genblk1[12].ff0 
       (.clk(clk),
        .st_reg_0(\genblk1[12].ff0_n_0 ),
        .st_reg_1(\genblk1[12].db_n_0 ));
  system3_calculator_0_0_flipflop_9 \genblk1[12].ff1 
       (.DI(\genblk1[12].ff1_n_1 ),
        .clk(clk),
        .st_reg_0(out[3]),
        .st_reg_1(\genblk1[12].ff1_n_2 ),
        .st_reg_2(\genblk1[12].ff0_n_0 ),
        .sum0__1_carry__0(out[7]));
  system3_calculator_0_0_debound_10 \genblk1[1].db 
       (.clk(clk),
        .multiply(multiply),
        .q_reg_0(\genblk1[1].db_n_0 ));
  system3_calculator_0_0_flipflop_11 \genblk1[1].ff0 
       (.clk(clk),
        .st_reg_0(\genblk1[1].ff0_n_0 ),
        .st_reg_1(\genblk1[1].db_n_0 ));
  system3_calculator_0_0_flipflop_12 \genblk1[1].ff1 
       (.\btn[3]_1 (\btn[3]_1 ),
        .clk(clk),
        .p_0_in(p_0_in_0),
        .st_reg_0(\genblk1[1].ff1_n_1 ),
        .st_reg_1(\genblk1[1].ff0_n_0 ));
  system3_calculator_0_0_singlePulse_13 \genblk1[1].sp 
       (.D({\genblk1[1].sp_n_2 ,\genblk1[1].sp_n_3 ,\genblk1[1].sp_n_4 ,\genblk1[1].sp_n_5 ,\genblk1[1].sp_n_6 }),
        .\btn[3]_1 (\btn[3]_1 ),
        .clk(clk),
        .d_reg_0(\genblk1[1].ff1_n_1 ),
        .p_0_in(p_0_in_0),
        .p_11_out(p_11_out),
        .sum0({sum0[7:4],sum0[2]}),
        .\sum_reg[2] (\genblk1[5].ff1_n_3 ),
        .\sum_reg[2]_0 (\genblk1[0].sp_n_5 ),
        .\sum_reg[2]_1 (\genblk1[9].ff1_n_1 ),
        .\sum_reg[4] (\genblk1[9].ff1_n_4 ),
        .\sum_reg[4]_0 (\genblk1[8].ff1_n_1 ));
  system3_calculator_0_0_debound_14 \genblk1[2].db 
       (.clk(clk),
        .q_reg_0(\genblk1[2].db_n_0 ),
        .sub(sub));
  system3_calculator_0_0_flipflop_15 \genblk1[2].ff0 
       (.clk(clk),
        .st_reg_0(\genblk1[2].ff0_n_0 ),
        .st_reg_1(\genblk1[2].db_n_0 ));
  system3_calculator_0_0_flipflop_16 \genblk1[2].ff1 
       (.\btn[3]_2 (\btn[3]_2 ),
        .clk(clk),
        .p_0_in(p_0_in_1),
        .st_reg_0(\genblk1[2].ff1_n_1 ),
        .st_reg_1(\genblk1[2].ff0_n_0 ));
  system3_calculator_0_0_singlePulse_17 \genblk1[2].sp 
       (.\btn[3]_2 (\btn[3]_2 ),
        .clk(clk),
        .d_reg_0(\genblk1[2].sp_n_4 ),
        .d_reg_1(\genblk1[2].ff1_n_1 ),
        .p_0_in(p_0_in_1),
        .p_10_out(p_10_out),
        .p_12_out(p_12_out),
        .p_9_out(p_9_out),
        .st_reg_0(\genblk1[2].sp_n_2 ),
        .st_reg_1(\genblk1[2].sp_n_3 ),
        .\sum[0]_i_6 (out[6]),
        .\sum[0]_i_6_0 (out[3]),
        .\sum[0]_i_6_1 (\genblk1[9].ff1_n_6 ),
        .\sum[0]_i_6_2 (\genblk1[10].ff1_n_5 ),
        .\sum[1]_i_5_0 (out[5]),
        .\sum[1]_i_5_1 (out[1]),
        .\sum[1]_i_5_2 (out[0]),
        .\sum_reg[1] (out[4]),
        .\sum_reg[1]_0 (out[2]),
        .\sum_reg[1]_1 (\genblk1[0].sp_n_5 ),
        .\sum_reg[1]_2 (\genblk1[3].sp_n_2 ));
  system3_calculator_0_0_debound_18 \genblk1[3].db 
       (.add(add),
        .clk(clk),
        .q_reg_0(\genblk1[3].db_n_0 ));
  system3_calculator_0_0_flipflop_19 \genblk1[3].ff0 
       (.clk(clk),
        .st_reg_0(\genblk1[3].ff0_n_0 ),
        .st_reg_1(\genblk1[3].db_n_0 ));
  system3_calculator_0_0_flipflop_20 \genblk1[3].ff1 
       (.\btn[3]_3 (\btn[3]_3 ),
        .clk(clk),
        .p_0_in(p_0_in_2),
        .st_reg_0(\genblk1[3].ff1_n_1 ),
        .st_reg_1(\genblk1[3].ff0_n_0 ));
  system3_calculator_0_0_singlePulse_21 \genblk1[3].sp 
       (.\btn[3]_3 (\btn[3]_3 ),
        .clk(clk),
        .d_reg_0(\genblk1[3].sp_n_2 ),
        .d_reg_1(\genblk1[3].ff1_n_1 ),
        .p_0_in(p_0_in_2),
        .p_9_out(p_9_out),
        .\sum[1]_i_5 (out[0]),
        .\sum[1]_i_5_0 (out[4]),
        .\sum[1]_i_5_1 (out[5]),
        .\sum[1]_i_5_2 (out[1]));
  system3_calculator_0_0_debound_22 \genblk1[4].db 
       (.clear(clear),
        .clk(clk),
        .q_reg_0(\genblk1[4].db_n_0 ));
  system3_calculator_0_0_flipflop_23 \genblk1[4].ff0 
       (.clk(clk),
        .st_reg_0(\genblk1[4].ff0_n_0 ),
        .st_reg_1(\genblk1[4].db_n_0 ));
  system3_calculator_0_0_flipflop_24 \genblk1[4].ff1 
       (.\btn[3]_4 (\btn[3]_4 ),
        .clk(clk),
        .p_0_in(p_0_in_3),
        .st_reg_0(\genblk1[4].ff1_n_1 ),
        .st_reg_1(\genblk1[4].ff0_n_0 ));
  system3_calculator_0_0_singlePulse_25 \genblk1[4].sp 
       (.\btn[3]_4 (\btn[3]_4 ),
        .clk(clk),
        .d_reg_0(\genblk1[4].ff1_n_1 ),
        .p_0_in(p_0_in_3),
        .p_8_out(p_8_out));
  system3_calculator_0_0_debound_26 \genblk1[5].db 
       (.b(b[0]),
        .clk(clk),
        .q_reg_0(\genblk1[5].db_n_0 ));
  system3_calculator_0_0_flipflop_27 \genblk1[5].ff0 
       (.clk(clk),
        .st_reg_0(\genblk1[5].ff0_n_0 ),
        .st_reg_1(\genblk1[5].db_n_0 ));
  system3_calculator_0_0_flipflop_28 \genblk1[5].ff1 
       (.S({\genblk1[5].ff1_n_4 ,\genblk1[5].ff1_n_5 }),
        .clk(clk),
        .d_reg(\genblk1[5].ff1_n_6 ),
        .p_12_out(p_12_out),
        .st_reg_0(out[4]),
        .st_reg_1(\genblk1[5].ff1_n_1 ),
        .st_reg_2(\genblk1[5].ff1_n_2 ),
        .st_reg_3(\genblk1[5].ff1_n_3 ),
        .st_reg_4(\genblk1[5].ff0_n_0 ),
        .sum0__1_carry(out[0]),
        .\sum_reg[0] (out[2]),
        .\sum_reg[0]_0 (out[5]),
        .\sum_reg[0]_1 (\genblk1[12].ff1_n_2 ),
        .\sum_reg[0]_2 (\genblk1[8].ff1_n_2 ),
        .\sum_reg[1] (out[1]),
        .\sum_reg[1]_0 (\genblk1[0].sp_n_7 ),
        .\sum_reg[1]_1 (out[3]),
        .\sum_reg[2] (out[6]));
  system3_calculator_0_0_debound_29 \genblk1[6].db 
       (.b(b[1]),
        .clk(clk),
        .q_reg_0(\genblk1[6].db_n_0 ));
  system3_calculator_0_0_flipflop_30 \genblk1[6].ff0 
       (.clk(clk),
        .st_reg_0(\genblk1[6].ff0_n_0 ),
        .st_reg_1(\genblk1[6].db_n_0 ));
  system3_calculator_0_0_flipflop_31 \genblk1[6].ff1 
       (.DI(\genblk1[6].ff1_n_5 ),
        .clk(clk),
        .p_12_out(p_12_out),
        .st_reg_0(out[5]),
        .st_reg_1(\genblk1[6].ff1_n_1 ),
        .st_reg_2(\genblk1[6].ff1_n_2 ),
        .st_reg_3(\genblk1[6].ff1_n_3 ),
        .st_reg_4(\genblk1[6].ff1_n_4 ),
        .st_reg_5(\genblk1[6].ff0_n_0 ),
        .sum0__1_carry(out[1]),
        .\sum[2]_i_7 (out[2]),
        .\sum_reg[0] (out[0]),
        .\sum_reg[0]_0 (out[4]),
        .\sum_reg[0]_1 (out[7]),
        .\sum_reg[3] (out[6]));
  system3_calculator_0_0_debound_32 \genblk1[7].db 
       (.b(b[2]),
        .clk(clk),
        .q_reg_0(\genblk1[7].db_n_0 ));
  system3_calculator_0_0_flipflop_33 \genblk1[7].ff0 
       (.clk(clk),
        .st_reg_0(\genblk1[7].ff0_n_0 ),
        .st_reg_1(\genblk1[7].db_n_0 ));
  system3_calculator_0_0_flipflop_34 \genblk1[7].ff1 
       (.DI(\genblk1[7].ff1_n_1 ),
        .S(\genblk1[7].ff1_n_5 ),
        .clk(clk),
        .st_reg_0(out[6]),
        .st_reg_1(\genblk1[7].ff1_n_2 ),
        .st_reg_2(\genblk1[7].ff1_n_3 ),
        .st_reg_3(\genblk1[7].ff1_n_4 ),
        .st_reg_4(\genblk1[7].ff1_n_6 ),
        .st_reg_5(\genblk1[7].ff0_n_0 ),
        .sum0__1_carry(out[5]),
        .sum0__1_carry_0(out[7]),
        .sum0__1_carry_1(out[0]),
        .sum0__1_carry_2(out[1]),
        .sum0__1_carry_3(out[2]),
        .sum0__1_carry_4(out[3]),
        .sum0__1_carry_5(out[4]),
        .sum0__1_carry__0(\genblk1[10].ff1_n_2 ),
        .sum0__1_carry__0_0(\genblk1[9].ff1_n_7 ),
        .sum0__1_carry__0_1(\genblk1[10].ff1_n_1 ));
  system3_calculator_0_0_debound_35 \genblk1[8].db 
       (.b(b[3]),
        .clk(clk),
        .q_reg_0(\genblk1[8].db_n_0 ));
  system3_calculator_0_0_flipflop_36 \genblk1[8].ff0 
       (.clk(clk),
        .st_reg_0(\genblk1[8].ff0_n_0 ),
        .st_reg_1(\genblk1[8].db_n_0 ));
  system3_calculator_0_0_flipflop_37 \genblk1[8].ff1 
       (.clk(clk),
        .p_10_out(p_10_out),
        .p_12_out(p_12_out),
        .st_reg_0(out[7]),
        .st_reg_1(\genblk1[8].ff1_n_1 ),
        .st_reg_2(\genblk1[8].ff1_n_2 ),
        .st_reg_3(\genblk1[8].ff0_n_0 ),
        .\sum_reg[3] (out[4]),
        .\sum_reg[4] (out[3]),
        .\sum_reg[4]_0 (\genblk1[9].ff1_n_3 ));
  system3_calculator_0_0_debound_38 \genblk1[9].db 
       (.a(a[0]),
        .clk(clk),
        .q_reg_0(\genblk1[9].db_n_0 ));
  system3_calculator_0_0_flipflop_39 \genblk1[9].ff0 
       (.clk(clk),
        .st_reg_0(\genblk1[9].ff0_n_0 ),
        .st_reg_1(\genblk1[9].db_n_0 ));
  system3_calculator_0_0_flipflop_40 \genblk1[9].ff1 
       (.DI(\genblk1[9].ff1_n_10 ),
        .S(\genblk1[9].ff1_n_8 ),
        .clk(clk),
        .d_reg(\genblk1[9].ff1_n_1 ),
        .p_10_out(p_10_out),
        .p_9_out(p_9_out),
        .st_reg_0(out[0]),
        .st_reg_1(\genblk1[9].ff1_n_2 ),
        .st_reg_2(\genblk1[9].ff1_n_3 ),
        .st_reg_3(\genblk1[9].ff1_n_4 ),
        .st_reg_4(\genblk1[9].ff1_n_5 ),
        .st_reg_5(\genblk1[9].ff1_n_6 ),
        .st_reg_6(\genblk1[9].ff1_n_7 ),
        .st_reg_7(\genblk1[9].ff1_n_9 ),
        .st_reg_8(\genblk1[9].ff0_n_0 ),
        .sum0__1_carry(out[4]),
        .sum0__1_carry_0(out[6]),
        .sum0__1_carry_1(out[1]),
        .sum0__1_carry_2(out[5]),
        .sum0__1_carry_3(out[2]),
        .sum0__1_carry__0(\genblk1[11].ff1_n_3 ),
        .\sum[2]_i_3_0 (\genblk1[6].ff1_n_3 ),
        .\sum[2]_i_3_1 (\genblk1[11].ff1_n_2 ),
        .\sum[3]_i_3_0 (\genblk1[12].ff1_n_2 ),
        .\sum_reg[2] (\genblk1[7].ff1_n_4 ),
        .\sum_reg[4] (out[3]),
        .\sum_reg[4]_0 (out[7]));
  CARRY4 sum0__1_carry
       (.CI(1'b0),
        .CO({sum0__1_carry_n_0,sum0__1_carry_n_1,sum0__1_carry_n_2,sum0__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\genblk1[7].ff1_n_1 ,\genblk1[6].ff1_n_5 ,\genblk1[10].ff1_n_6 ,1'b0}),
        .O(sum0[3:0]),
        .S({\genblk1[7].ff1_n_5 ,\genblk1[9].ff1_n_8 ,\genblk1[5].ff1_n_4 ,\genblk1[5].ff1_n_5 }));
  CARRY4 sum0__1_carry__0
       (.CI(sum0__1_carry_n_0),
        .CO({sum0[7],NLW_sum0__1_carry__0_CO_UNCONNECTED[2],sum0__1_carry__0_n_2,sum0__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\genblk1[12].ff1_n_1 ,\genblk1[7].ff1_n_2 ,\genblk1[9].ff1_n_10 }),
        .O({NLW_sum0__1_carry__0_O_UNCONNECTED[3],sum0[6:4]}),
        .S({1'b1,\genblk1[11].ff1_n_4 ,\genblk1[7].ff1_n_6 ,\genblk1[9].ff1_n_9 }));
  FDRE \sum_reg[0] 
       (.C(clk),
        .CE(\genblk1[0].sp_n_8 ),
        .D(\genblk1[0].sp_n_4 ),
        .Q(out[8]),
        .R(sum));
  FDRE \sum_reg[1] 
       (.C(clk),
        .CE(\genblk1[0].sp_n_8 ),
        .D(\genblk1[0].sp_n_3 ),
        .Q(out[9]),
        .R(sum));
  FDRE \sum_reg[2] 
       (.C(clk),
        .CE(\genblk1[0].sp_n_8 ),
        .D(\genblk1[1].sp_n_6 ),
        .Q(out[10]),
        .R(sum));
  FDRE \sum_reg[3] 
       (.C(clk),
        .CE(\genblk1[0].sp_n_8 ),
        .D(\genblk1[0].sp_n_2 ),
        .Q(out[11]),
        .R(sum));
  FDRE \sum_reg[4] 
       (.C(clk),
        .CE(\genblk1[0].sp_n_8 ),
        .D(\genblk1[1].sp_n_5 ),
        .Q(out[12]),
        .R(sum));
  FDRE \sum_reg[5] 
       (.C(clk),
        .CE(\genblk1[0].sp_n_8 ),
        .D(\genblk1[1].sp_n_4 ),
        .Q(out[13]),
        .R(sum));
  FDRE \sum_reg[6] 
       (.C(clk),
        .CE(\genblk1[0].sp_n_8 ),
        .D(\genblk1[1].sp_n_3 ),
        .Q(out[14]),
        .R(sum));
  FDRE \sum_reg[7] 
       (.C(clk),
        .CE(\genblk1[0].sp_n_8 ),
        .D(\genblk1[1].sp_n_2 ),
        .Q(out[15]),
        .R(sum));
endmodule

(* ORIG_REF_NAME = "debound" *) 
module system3_calculator_0_0_debound
   (d,
    clk,
    devide);
  output d;
  input clk;
  input devide;

  wire clk;
  wire [6:0]count;
  wire \count[6]_i_1_n_0 ;
  wire \count[6]_i_2_n_0 ;
  wire \count[6]_i_3_n_0 ;
  wire d;
  wire devide;
  wire q_i_1_n_0;
  wire \tmp_reg_n_0_[0] ;
  wire \tmp_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'h0900000000000000)) 
    \count[6]_i_1 
       (.I0(\tmp_reg_n_0_[1] ),
        .I1(\tmp_reg_n_0_[0] ),
        .I2(\count[6]_i_3_n_0 ),
        .I3(count[5]),
        .I4(count[4]),
        .I5(count[6]),
        .O(\count[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[6]_i_2 
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\tmp_reg_n_0_[1] ),
        .O(\count[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[6]_i_3 
       (.I0(count[2]),
        .I1(count[3]),
        .I2(count[0]),
        .I3(count[1]),
        .O(\count[6]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\count[6]_i_2_n_0 ),
        .D(1'b1),
        .Q(count[0]),
        .R(\count[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\count[6]_i_2_n_0 ),
        .D(count[0]),
        .Q(count[1]),
        .R(\count[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\count[6]_i_2_n_0 ),
        .D(count[1]),
        .Q(count[2]),
        .R(\count[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(\count[6]_i_2_n_0 ),
        .D(count[2]),
        .Q(count[3]),
        .R(\count[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(\count[6]_i_2_n_0 ),
        .D(count[3]),
        .Q(count[4]),
        .R(\count[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(\count[6]_i_2_n_0 ),
        .D(count[4]),
        .Q(count[5]),
        .R(\count[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(\count[6]_i_2_n_0 ),
        .D(count[5]),
        .Q(count[6]),
        .R(\count[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    q_i_1
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\count[6]_i_1_n_0 ),
        .I2(d),
        .O(q_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk),
        .CE(1'b1),
        .D(q_i_1_n_0),
        .Q(d),
        .R(1'b0));
  FDRE \tmp_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(devide),
        .Q(\tmp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tmp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_reg_n_0_[0] ),
        .Q(\tmp_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debound" *) 
module system3_calculator_0_0_debound_1
   (q_reg_0,
    clk,
    a);
  output q_reg_0;
  input clk;
  input [0:0]a;

  wire [0:0]a;
  wire clk;
  wire \count[6]_i_1__9_n_0 ;
  wire \count[6]_i_2__9_n_0 ;
  wire \count[6]_i_3__9_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire q_i_1__5_n_0;
  wire q_reg_0;
  wire \tmp_reg_n_0_[0] ;
  wire \tmp_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'h0900000000000000)) 
    \count[6]_i_1__9 
       (.I0(\tmp_reg_n_0_[1] ),
        .I1(\tmp_reg_n_0_[0] ),
        .I2(\count[6]_i_3__9_n_0 ),
        .I3(\count_reg_n_0_[5] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(\count_reg_n_0_[6] ),
        .O(\count[6]_i_1__9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[6]_i_2__9 
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\tmp_reg_n_0_[1] ),
        .O(\count[6]_i_2__9_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[6]_i_3__9 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .O(\count[6]_i_3__9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\count[6]_i_2__9_n_0 ),
        .D(1'b1),
        .Q(\count_reg_n_0_[0] ),
        .R(\count[6]_i_1__9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\count[6]_i_2__9_n_0 ),
        .D(\count_reg_n_0_[0] ),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[6]_i_1__9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\count[6]_i_2__9_n_0 ),
        .D(\count_reg_n_0_[1] ),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[6]_i_1__9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(\count[6]_i_2__9_n_0 ),
        .D(\count_reg_n_0_[2] ),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[6]_i_1__9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(\count[6]_i_2__9_n_0 ),
        .D(\count_reg_n_0_[3] ),
        .Q(\count_reg_n_0_[4] ),
        .R(\count[6]_i_1__9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(\count[6]_i_2__9_n_0 ),
        .D(\count_reg_n_0_[4] ),
        .Q(\count_reg_n_0_[5] ),
        .R(\count[6]_i_1__9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(\count[6]_i_2__9_n_0 ),
        .D(\count_reg_n_0_[5] ),
        .Q(\count_reg_n_0_[6] ),
        .R(\count[6]_i_1__9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    q_i_1__5
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\count[6]_i_1__9_n_0 ),
        .I2(q_reg_0),
        .O(q_i_1__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk),
        .CE(1'b1),
        .D(q_i_1__5_n_0),
        .Q(q_reg_0),
        .R(1'b0));
  FDRE \tmp_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(a),
        .Q(\tmp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tmp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_reg_n_0_[0] ),
        .Q(\tmp_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debound" *) 
module system3_calculator_0_0_debound_10
   (q_reg_0,
    clk,
    multiply);
  output q_reg_0;
  input clk;
  input multiply;

  wire clk;
  wire \count[6]_i_1__0_n_0 ;
  wire \count[6]_i_2__0_n_0 ;
  wire \count[6]_i_3__0_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire multiply;
  wire q_i_1__0_n_0;
  wire q_reg_0;
  wire \tmp_reg_n_0_[0] ;
  wire \tmp_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'h0900000000000000)) 
    \count[6]_i_1__0 
       (.I0(\tmp_reg_n_0_[1] ),
        .I1(\tmp_reg_n_0_[0] ),
        .I2(\count[6]_i_3__0_n_0 ),
        .I3(\count_reg_n_0_[5] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(\count_reg_n_0_[6] ),
        .O(\count[6]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[6]_i_2__0 
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\tmp_reg_n_0_[1] ),
        .O(\count[6]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[6]_i_3__0 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .O(\count[6]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\count[6]_i_2__0_n_0 ),
        .D(1'b1),
        .Q(\count_reg_n_0_[0] ),
        .R(\count[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\count[6]_i_2__0_n_0 ),
        .D(\count_reg_n_0_[0] ),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\count[6]_i_2__0_n_0 ),
        .D(\count_reg_n_0_[1] ),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(\count[6]_i_2__0_n_0 ),
        .D(\count_reg_n_0_[2] ),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(\count[6]_i_2__0_n_0 ),
        .D(\count_reg_n_0_[3] ),
        .Q(\count_reg_n_0_[4] ),
        .R(\count[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(\count[6]_i_2__0_n_0 ),
        .D(\count_reg_n_0_[4] ),
        .Q(\count_reg_n_0_[5] ),
        .R(\count[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(\count[6]_i_2__0_n_0 ),
        .D(\count_reg_n_0_[5] ),
        .Q(\count_reg_n_0_[6] ),
        .R(\count[6]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    q_i_1__0
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\count[6]_i_1__0_n_0 ),
        .I2(q_reg_0),
        .O(q_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk),
        .CE(1'b1),
        .D(q_i_1__0_n_0),
        .Q(q_reg_0),
        .R(1'b0));
  FDRE \tmp_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(multiply),
        .Q(\tmp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tmp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_reg_n_0_[0] ),
        .Q(\tmp_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debound" *) 
module system3_calculator_0_0_debound_14
   (q_reg_0,
    clk,
    sub);
  output q_reg_0;
  input clk;
  input sub;

  wire clk;
  wire \count[6]_i_1__1_n_0 ;
  wire \count[6]_i_2__1_n_0 ;
  wire \count[6]_i_3__1_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire q_i_1__1_n_0;
  wire q_reg_0;
  wire sub;
  wire \tmp_reg_n_0_[0] ;
  wire \tmp_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'h0900000000000000)) 
    \count[6]_i_1__1 
       (.I0(\tmp_reg_n_0_[1] ),
        .I1(\tmp_reg_n_0_[0] ),
        .I2(\count[6]_i_3__1_n_0 ),
        .I3(\count_reg_n_0_[5] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(\count_reg_n_0_[6] ),
        .O(\count[6]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[6]_i_2__1 
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\tmp_reg_n_0_[1] ),
        .O(\count[6]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[6]_i_3__1 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .O(\count[6]_i_3__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\count[6]_i_2__1_n_0 ),
        .D(1'b1),
        .Q(\count_reg_n_0_[0] ),
        .R(\count[6]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\count[6]_i_2__1_n_0 ),
        .D(\count_reg_n_0_[0] ),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[6]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\count[6]_i_2__1_n_0 ),
        .D(\count_reg_n_0_[1] ),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[6]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(\count[6]_i_2__1_n_0 ),
        .D(\count_reg_n_0_[2] ),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[6]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(\count[6]_i_2__1_n_0 ),
        .D(\count_reg_n_0_[3] ),
        .Q(\count_reg_n_0_[4] ),
        .R(\count[6]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(\count[6]_i_2__1_n_0 ),
        .D(\count_reg_n_0_[4] ),
        .Q(\count_reg_n_0_[5] ),
        .R(\count[6]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(\count[6]_i_2__1_n_0 ),
        .D(\count_reg_n_0_[5] ),
        .Q(\count_reg_n_0_[6] ),
        .R(\count[6]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    q_i_1__1
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\count[6]_i_1__1_n_0 ),
        .I2(q_reg_0),
        .O(q_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk),
        .CE(1'b1),
        .D(q_i_1__1_n_0),
        .Q(q_reg_0),
        .R(1'b0));
  FDRE \tmp_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(sub),
        .Q(\tmp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tmp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_reg_n_0_[0] ),
        .Q(\tmp_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debound" *) 
module system3_calculator_0_0_debound_18
   (q_reg_0,
    clk,
    add);
  output q_reg_0;
  input clk;
  input add;

  wire add;
  wire clk;
  wire \count[6]_i_1__2_n_0 ;
  wire \count[6]_i_2__2_n_0 ;
  wire \count[6]_i_3__2_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire q_i_1__2_n_0;
  wire q_reg_0;
  wire \tmp_reg_n_0_[0] ;
  wire \tmp_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'h0900000000000000)) 
    \count[6]_i_1__2 
       (.I0(\tmp_reg_n_0_[1] ),
        .I1(\tmp_reg_n_0_[0] ),
        .I2(\count[6]_i_3__2_n_0 ),
        .I3(\count_reg_n_0_[5] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(\count_reg_n_0_[6] ),
        .O(\count[6]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[6]_i_2__2 
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\tmp_reg_n_0_[1] ),
        .O(\count[6]_i_2__2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[6]_i_3__2 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .O(\count[6]_i_3__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\count[6]_i_2__2_n_0 ),
        .D(1'b1),
        .Q(\count_reg_n_0_[0] ),
        .R(\count[6]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\count[6]_i_2__2_n_0 ),
        .D(\count_reg_n_0_[0] ),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[6]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\count[6]_i_2__2_n_0 ),
        .D(\count_reg_n_0_[1] ),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[6]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(\count[6]_i_2__2_n_0 ),
        .D(\count_reg_n_0_[2] ),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[6]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(\count[6]_i_2__2_n_0 ),
        .D(\count_reg_n_0_[3] ),
        .Q(\count_reg_n_0_[4] ),
        .R(\count[6]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(\count[6]_i_2__2_n_0 ),
        .D(\count_reg_n_0_[4] ),
        .Q(\count_reg_n_0_[5] ),
        .R(\count[6]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(\count[6]_i_2__2_n_0 ),
        .D(\count_reg_n_0_[5] ),
        .Q(\count_reg_n_0_[6] ),
        .R(\count[6]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    q_i_1__2
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\count[6]_i_1__2_n_0 ),
        .I2(q_reg_0),
        .O(q_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk),
        .CE(1'b1),
        .D(q_i_1__2_n_0),
        .Q(q_reg_0),
        .R(1'b0));
  FDRE \tmp_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(add),
        .Q(\tmp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tmp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_reg_n_0_[0] ),
        .Q(\tmp_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debound" *) 
module system3_calculator_0_0_debound_22
   (q_reg_0,
    clk,
    clear);
  output q_reg_0;
  input clk;
  input clear;

  wire clear;
  wire clk;
  wire \count[6]_i_1__3_n_0 ;
  wire \count[6]_i_2__3_n_0 ;
  wire \count[6]_i_3__3_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire q_i_1__3_n_0;
  wire q_reg_0;
  wire \tmp_reg_n_0_[0] ;
  wire \tmp_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'h0900000000000000)) 
    \count[6]_i_1__3 
       (.I0(\tmp_reg_n_0_[1] ),
        .I1(\tmp_reg_n_0_[0] ),
        .I2(\count[6]_i_3__3_n_0 ),
        .I3(\count_reg_n_0_[5] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(\count_reg_n_0_[6] ),
        .O(\count[6]_i_1__3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[6]_i_2__3 
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\tmp_reg_n_0_[1] ),
        .O(\count[6]_i_2__3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[6]_i_3__3 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .O(\count[6]_i_3__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\count[6]_i_2__3_n_0 ),
        .D(1'b1),
        .Q(\count_reg_n_0_[0] ),
        .R(\count[6]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\count[6]_i_2__3_n_0 ),
        .D(\count_reg_n_0_[0] ),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[6]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\count[6]_i_2__3_n_0 ),
        .D(\count_reg_n_0_[1] ),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[6]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(\count[6]_i_2__3_n_0 ),
        .D(\count_reg_n_0_[2] ),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[6]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(\count[6]_i_2__3_n_0 ),
        .D(\count_reg_n_0_[3] ),
        .Q(\count_reg_n_0_[4] ),
        .R(\count[6]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(\count[6]_i_2__3_n_0 ),
        .D(\count_reg_n_0_[4] ),
        .Q(\count_reg_n_0_[5] ),
        .R(\count[6]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(\count[6]_i_2__3_n_0 ),
        .D(\count_reg_n_0_[5] ),
        .Q(\count_reg_n_0_[6] ),
        .R(\count[6]_i_1__3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    q_i_1__3
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\count[6]_i_1__3_n_0 ),
        .I2(q_reg_0),
        .O(q_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk),
        .CE(1'b1),
        .D(q_i_1__3_n_0),
        .Q(q_reg_0),
        .R(1'b0));
  FDRE \tmp_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(clear),
        .Q(\tmp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tmp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_reg_n_0_[0] ),
        .Q(\tmp_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debound" *) 
module system3_calculator_0_0_debound_26
   (q_reg_0,
    clk,
    b);
  output q_reg_0;
  input clk;
  input [0:0]b;

  wire [0:0]b;
  wire clk;
  wire \count[6]_i_1__4_n_0 ;
  wire \count[6]_i_2__4_n_0 ;
  wire \count[6]_i_3__4_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire q_i_1__8_n_0;
  wire q_reg_0;
  wire \tmp_reg_n_0_[0] ;
  wire \tmp_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'h0900000000000000)) 
    \count[6]_i_1__4 
       (.I0(\tmp_reg_n_0_[1] ),
        .I1(\tmp_reg_n_0_[0] ),
        .I2(\count[6]_i_3__4_n_0 ),
        .I3(\count_reg_n_0_[5] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(\count_reg_n_0_[6] ),
        .O(\count[6]_i_1__4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[6]_i_2__4 
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\tmp_reg_n_0_[1] ),
        .O(\count[6]_i_2__4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[6]_i_3__4 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .O(\count[6]_i_3__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\count[6]_i_2__4_n_0 ),
        .D(1'b1),
        .Q(\count_reg_n_0_[0] ),
        .R(\count[6]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\count[6]_i_2__4_n_0 ),
        .D(\count_reg_n_0_[0] ),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[6]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\count[6]_i_2__4_n_0 ),
        .D(\count_reg_n_0_[1] ),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[6]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(\count[6]_i_2__4_n_0 ),
        .D(\count_reg_n_0_[2] ),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[6]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(\count[6]_i_2__4_n_0 ),
        .D(\count_reg_n_0_[3] ),
        .Q(\count_reg_n_0_[4] ),
        .R(\count[6]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(\count[6]_i_2__4_n_0 ),
        .D(\count_reg_n_0_[4] ),
        .Q(\count_reg_n_0_[5] ),
        .R(\count[6]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(\count[6]_i_2__4_n_0 ),
        .D(\count_reg_n_0_[5] ),
        .Q(\count_reg_n_0_[6] ),
        .R(\count[6]_i_1__4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    q_i_1__8
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\count[6]_i_1__4_n_0 ),
        .I2(q_reg_0),
        .O(q_i_1__8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk),
        .CE(1'b1),
        .D(q_i_1__8_n_0),
        .Q(q_reg_0),
        .R(1'b0));
  FDRE \tmp_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(b),
        .Q(\tmp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tmp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_reg_n_0_[0] ),
        .Q(\tmp_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debound" *) 
module system3_calculator_0_0_debound_29
   (q_reg_0,
    clk,
    b);
  output q_reg_0;
  input clk;
  input [0:0]b;

  wire [0:0]b;
  wire clk;
  wire \count[6]_i_1__5_n_0 ;
  wire \count[6]_i_2__5_n_0 ;
  wire \count[6]_i_3__5_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire q_i_1__9_n_0;
  wire q_reg_0;
  wire \tmp_reg_n_0_[0] ;
  wire \tmp_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'h0900000000000000)) 
    \count[6]_i_1__5 
       (.I0(\tmp_reg_n_0_[1] ),
        .I1(\tmp_reg_n_0_[0] ),
        .I2(\count[6]_i_3__5_n_0 ),
        .I3(\count_reg_n_0_[5] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(\count_reg_n_0_[6] ),
        .O(\count[6]_i_1__5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[6]_i_2__5 
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\tmp_reg_n_0_[1] ),
        .O(\count[6]_i_2__5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[6]_i_3__5 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .O(\count[6]_i_3__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\count[6]_i_2__5_n_0 ),
        .D(1'b1),
        .Q(\count_reg_n_0_[0] ),
        .R(\count[6]_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\count[6]_i_2__5_n_0 ),
        .D(\count_reg_n_0_[0] ),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[6]_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\count[6]_i_2__5_n_0 ),
        .D(\count_reg_n_0_[1] ),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[6]_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(\count[6]_i_2__5_n_0 ),
        .D(\count_reg_n_0_[2] ),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[6]_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(\count[6]_i_2__5_n_0 ),
        .D(\count_reg_n_0_[3] ),
        .Q(\count_reg_n_0_[4] ),
        .R(\count[6]_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(\count[6]_i_2__5_n_0 ),
        .D(\count_reg_n_0_[4] ),
        .Q(\count_reg_n_0_[5] ),
        .R(\count[6]_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(\count[6]_i_2__5_n_0 ),
        .D(\count_reg_n_0_[5] ),
        .Q(\count_reg_n_0_[6] ),
        .R(\count[6]_i_1__5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    q_i_1__9
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\count[6]_i_1__5_n_0 ),
        .I2(q_reg_0),
        .O(q_i_1__9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk),
        .CE(1'b1),
        .D(q_i_1__9_n_0),
        .Q(q_reg_0),
        .R(1'b0));
  FDRE \tmp_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(b),
        .Q(\tmp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tmp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_reg_n_0_[0] ),
        .Q(\tmp_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debound" *) 
module system3_calculator_0_0_debound_32
   (q_reg_0,
    clk,
    b);
  output q_reg_0;
  input clk;
  input [0:0]b;

  wire [0:0]b;
  wire clk;
  wire \count[6]_i_1__6_n_0 ;
  wire \count[6]_i_2__6_n_0 ;
  wire \count[6]_i_3__6_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire q_i_1__10_n_0;
  wire q_reg_0;
  wire \tmp_reg_n_0_[0] ;
  wire \tmp_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'h0900000000000000)) 
    \count[6]_i_1__6 
       (.I0(\tmp_reg_n_0_[1] ),
        .I1(\tmp_reg_n_0_[0] ),
        .I2(\count[6]_i_3__6_n_0 ),
        .I3(\count_reg_n_0_[5] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(\count_reg_n_0_[6] ),
        .O(\count[6]_i_1__6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[6]_i_2__6 
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\tmp_reg_n_0_[1] ),
        .O(\count[6]_i_2__6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[6]_i_3__6 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .O(\count[6]_i_3__6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\count[6]_i_2__6_n_0 ),
        .D(1'b1),
        .Q(\count_reg_n_0_[0] ),
        .R(\count[6]_i_1__6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\count[6]_i_2__6_n_0 ),
        .D(\count_reg_n_0_[0] ),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[6]_i_1__6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\count[6]_i_2__6_n_0 ),
        .D(\count_reg_n_0_[1] ),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[6]_i_1__6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(\count[6]_i_2__6_n_0 ),
        .D(\count_reg_n_0_[2] ),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[6]_i_1__6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(\count[6]_i_2__6_n_0 ),
        .D(\count_reg_n_0_[3] ),
        .Q(\count_reg_n_0_[4] ),
        .R(\count[6]_i_1__6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(\count[6]_i_2__6_n_0 ),
        .D(\count_reg_n_0_[4] ),
        .Q(\count_reg_n_0_[5] ),
        .R(\count[6]_i_1__6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(\count[6]_i_2__6_n_0 ),
        .D(\count_reg_n_0_[5] ),
        .Q(\count_reg_n_0_[6] ),
        .R(\count[6]_i_1__6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    q_i_1__10
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\count[6]_i_1__6_n_0 ),
        .I2(q_reg_0),
        .O(q_i_1__10_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk),
        .CE(1'b1),
        .D(q_i_1__10_n_0),
        .Q(q_reg_0),
        .R(1'b0));
  FDRE \tmp_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(b),
        .Q(\tmp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tmp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_reg_n_0_[0] ),
        .Q(\tmp_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debound" *) 
module system3_calculator_0_0_debound_35
   (q_reg_0,
    clk,
    b);
  output q_reg_0;
  input clk;
  input [0:0]b;

  wire [0:0]b;
  wire clk;
  wire \count[6]_i_1__7_n_0 ;
  wire \count[6]_i_2__7_n_0 ;
  wire \count[6]_i_3__7_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire q_i_1__11_n_0;
  wire q_reg_0;
  wire \tmp_reg_n_0_[0] ;
  wire \tmp_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'h0900000000000000)) 
    \count[6]_i_1__7 
       (.I0(\tmp_reg_n_0_[1] ),
        .I1(\tmp_reg_n_0_[0] ),
        .I2(\count[6]_i_3__7_n_0 ),
        .I3(\count_reg_n_0_[5] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(\count_reg_n_0_[6] ),
        .O(\count[6]_i_1__7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[6]_i_2__7 
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\tmp_reg_n_0_[1] ),
        .O(\count[6]_i_2__7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[6]_i_3__7 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .O(\count[6]_i_3__7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\count[6]_i_2__7_n_0 ),
        .D(1'b1),
        .Q(\count_reg_n_0_[0] ),
        .R(\count[6]_i_1__7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\count[6]_i_2__7_n_0 ),
        .D(\count_reg_n_0_[0] ),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[6]_i_1__7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\count[6]_i_2__7_n_0 ),
        .D(\count_reg_n_0_[1] ),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[6]_i_1__7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(\count[6]_i_2__7_n_0 ),
        .D(\count_reg_n_0_[2] ),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[6]_i_1__7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(\count[6]_i_2__7_n_0 ),
        .D(\count_reg_n_0_[3] ),
        .Q(\count_reg_n_0_[4] ),
        .R(\count[6]_i_1__7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(\count[6]_i_2__7_n_0 ),
        .D(\count_reg_n_0_[4] ),
        .Q(\count_reg_n_0_[5] ),
        .R(\count[6]_i_1__7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(\count[6]_i_2__7_n_0 ),
        .D(\count_reg_n_0_[5] ),
        .Q(\count_reg_n_0_[6] ),
        .R(\count[6]_i_1__7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    q_i_1__11
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\count[6]_i_1__7_n_0 ),
        .I2(q_reg_0),
        .O(q_i_1__11_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk),
        .CE(1'b1),
        .D(q_i_1__11_n_0),
        .Q(q_reg_0),
        .R(1'b0));
  FDRE \tmp_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(b),
        .Q(\tmp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tmp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_reg_n_0_[0] ),
        .Q(\tmp_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debound" *) 
module system3_calculator_0_0_debound_38
   (q_reg_0,
    clk,
    a);
  output q_reg_0;
  input clk;
  input [0:0]a;

  wire [0:0]a;
  wire clk;
  wire \count[6]_i_1__8_n_0 ;
  wire \count[6]_i_2__8_n_0 ;
  wire \count[6]_i_3__8_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire q_i_1__4_n_0;
  wire q_reg_0;
  wire \tmp_reg_n_0_[0] ;
  wire \tmp_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'h0900000000000000)) 
    \count[6]_i_1__8 
       (.I0(\tmp_reg_n_0_[1] ),
        .I1(\tmp_reg_n_0_[0] ),
        .I2(\count[6]_i_3__8_n_0 ),
        .I3(\count_reg_n_0_[5] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(\count_reg_n_0_[6] ),
        .O(\count[6]_i_1__8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[6]_i_2__8 
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\tmp_reg_n_0_[1] ),
        .O(\count[6]_i_2__8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[6]_i_3__8 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .O(\count[6]_i_3__8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\count[6]_i_2__8_n_0 ),
        .D(1'b1),
        .Q(\count_reg_n_0_[0] ),
        .R(\count[6]_i_1__8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\count[6]_i_2__8_n_0 ),
        .D(\count_reg_n_0_[0] ),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[6]_i_1__8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\count[6]_i_2__8_n_0 ),
        .D(\count_reg_n_0_[1] ),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[6]_i_1__8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(\count[6]_i_2__8_n_0 ),
        .D(\count_reg_n_0_[2] ),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[6]_i_1__8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(\count[6]_i_2__8_n_0 ),
        .D(\count_reg_n_0_[3] ),
        .Q(\count_reg_n_0_[4] ),
        .R(\count[6]_i_1__8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(\count[6]_i_2__8_n_0 ),
        .D(\count_reg_n_0_[4] ),
        .Q(\count_reg_n_0_[5] ),
        .R(\count[6]_i_1__8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(\count[6]_i_2__8_n_0 ),
        .D(\count_reg_n_0_[5] ),
        .Q(\count_reg_n_0_[6] ),
        .R(\count[6]_i_1__8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    q_i_1__4
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\count[6]_i_1__8_n_0 ),
        .I2(q_reg_0),
        .O(q_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk),
        .CE(1'b1),
        .D(q_i_1__4_n_0),
        .Q(q_reg_0),
        .R(1'b0));
  FDRE \tmp_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(a),
        .Q(\tmp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tmp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_reg_n_0_[0] ),
        .Q(\tmp_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debound" *) 
module system3_calculator_0_0_debound_4
   (q_reg_0,
    clk,
    a);
  output q_reg_0;
  input clk;
  input [0:0]a;

  wire [0:0]a;
  wire clk;
  wire \count[6]_i_1__10_n_0 ;
  wire \count[6]_i_2__10_n_0 ;
  wire \count[6]_i_3__10_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire q_i_1__6_n_0;
  wire q_reg_0;
  wire \tmp_reg_n_0_[0] ;
  wire \tmp_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'h0900000000000000)) 
    \count[6]_i_1__10 
       (.I0(\tmp_reg_n_0_[1] ),
        .I1(\tmp_reg_n_0_[0] ),
        .I2(\count[6]_i_3__10_n_0 ),
        .I3(\count_reg_n_0_[5] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(\count_reg_n_0_[6] ),
        .O(\count[6]_i_1__10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[6]_i_2__10 
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\tmp_reg_n_0_[1] ),
        .O(\count[6]_i_2__10_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[6]_i_3__10 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .O(\count[6]_i_3__10_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\count[6]_i_2__10_n_0 ),
        .D(1'b1),
        .Q(\count_reg_n_0_[0] ),
        .R(\count[6]_i_1__10_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\count[6]_i_2__10_n_0 ),
        .D(\count_reg_n_0_[0] ),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[6]_i_1__10_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\count[6]_i_2__10_n_0 ),
        .D(\count_reg_n_0_[1] ),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[6]_i_1__10_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(\count[6]_i_2__10_n_0 ),
        .D(\count_reg_n_0_[2] ),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[6]_i_1__10_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(\count[6]_i_2__10_n_0 ),
        .D(\count_reg_n_0_[3] ),
        .Q(\count_reg_n_0_[4] ),
        .R(\count[6]_i_1__10_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(\count[6]_i_2__10_n_0 ),
        .D(\count_reg_n_0_[4] ),
        .Q(\count_reg_n_0_[5] ),
        .R(\count[6]_i_1__10_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(\count[6]_i_2__10_n_0 ),
        .D(\count_reg_n_0_[5] ),
        .Q(\count_reg_n_0_[6] ),
        .R(\count[6]_i_1__10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    q_i_1__6
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\count[6]_i_1__10_n_0 ),
        .I2(q_reg_0),
        .O(q_i_1__6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk),
        .CE(1'b1),
        .D(q_i_1__6_n_0),
        .Q(q_reg_0),
        .R(1'b0));
  FDRE \tmp_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(a),
        .Q(\tmp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tmp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_reg_n_0_[0] ),
        .Q(\tmp_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debound" *) 
module system3_calculator_0_0_debound_7
   (q_reg_0,
    clk,
    a);
  output q_reg_0;
  input clk;
  input [0:0]a;

  wire [0:0]a;
  wire clk;
  wire \count[6]_i_1__11_n_0 ;
  wire \count[6]_i_2__11_n_0 ;
  wire \count[6]_i_3__11_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire q_i_1__7_n_0;
  wire q_reg_0;
  wire \tmp_reg_n_0_[0] ;
  wire \tmp_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'h0900000000000000)) 
    \count[6]_i_1__11 
       (.I0(\tmp_reg_n_0_[1] ),
        .I1(\tmp_reg_n_0_[0] ),
        .I2(\count[6]_i_3__11_n_0 ),
        .I3(\count_reg_n_0_[5] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(\count_reg_n_0_[6] ),
        .O(\count[6]_i_1__11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[6]_i_2__11 
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\tmp_reg_n_0_[1] ),
        .O(\count[6]_i_2__11_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[6]_i_3__11 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .O(\count[6]_i_3__11_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\count[6]_i_2__11_n_0 ),
        .D(1'b1),
        .Q(\count_reg_n_0_[0] ),
        .R(\count[6]_i_1__11_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\count[6]_i_2__11_n_0 ),
        .D(\count_reg_n_0_[0] ),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[6]_i_1__11_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\count[6]_i_2__11_n_0 ),
        .D(\count_reg_n_0_[1] ),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[6]_i_1__11_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(\count[6]_i_2__11_n_0 ),
        .D(\count_reg_n_0_[2] ),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[6]_i_1__11_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(\count[6]_i_2__11_n_0 ),
        .D(\count_reg_n_0_[3] ),
        .Q(\count_reg_n_0_[4] ),
        .R(\count[6]_i_1__11_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(\count[6]_i_2__11_n_0 ),
        .D(\count_reg_n_0_[4] ),
        .Q(\count_reg_n_0_[5] ),
        .R(\count[6]_i_1__11_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(\count[6]_i_2__11_n_0 ),
        .D(\count_reg_n_0_[5] ),
        .Q(\count_reg_n_0_[6] ),
        .R(\count[6]_i_1__11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    q_i_1__7
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\count[6]_i_1__11_n_0 ),
        .I2(q_reg_0),
        .O(q_i_1__7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk),
        .CE(1'b1),
        .D(q_i_1__7_n_0),
        .Q(q_reg_0),
        .R(1'b0));
  FDRE \tmp_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(a),
        .Q(\tmp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tmp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_reg_n_0_[0] ),
        .Q(\tmp_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop
   (st,
    d,
    clk);
  output st;
  input d;
  input clk;

  wire clk;
  wire d;
  wire st;

  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(d),
        .Q(st),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop_0
   (\btn[3]_0 ,
    st_reg_0,
    st,
    clk,
    p_0_in);
  output \btn[3]_0 ;
  output st_reg_0;
  input st;
  input clk;
  input [0:0]p_0_in;

  wire \btn[3]_0 ;
  wire clk;
  wire [0:0]p_0_in;
  wire st;
  wire st_reg_0;

  LUT2 #(
    .INIT(4'h2)) 
    d_i_1
       (.I0(\btn[3]_0 ),
        .I1(p_0_in),
        .O(st_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st),
        .Q(\btn[3]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop_11
   (st_reg_0,
    st_reg_1,
    clk);
  output st_reg_0;
  input st_reg_1;
  input clk;

  wire clk;
  wire st_reg_0;
  wire st_reg_1;

  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st_reg_1),
        .Q(st_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop_12
   (\btn[3]_1 ,
    st_reg_0,
    st_reg_1,
    clk,
    p_0_in);
  output \btn[3]_1 ;
  output st_reg_0;
  input st_reg_1;
  input clk;
  input [0:0]p_0_in;

  wire \btn[3]_1 ;
  wire clk;
  wire [0:0]p_0_in;
  wire st_reg_0;
  wire st_reg_1;

  LUT2 #(
    .INIT(4'h2)) 
    d_i_1__0
       (.I0(\btn[3]_1 ),
        .I1(p_0_in),
        .O(st_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st_reg_1),
        .Q(\btn[3]_1 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop_15
   (st_reg_0,
    st_reg_1,
    clk);
  output st_reg_0;
  input st_reg_1;
  input clk;

  wire clk;
  wire st_reg_0;
  wire st_reg_1;

  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st_reg_1),
        .Q(st_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop_16
   (\btn[3]_2 ,
    st_reg_0,
    st_reg_1,
    clk,
    p_0_in);
  output \btn[3]_2 ;
  output st_reg_0;
  input st_reg_1;
  input clk;
  input [0:0]p_0_in;

  wire \btn[3]_2 ;
  wire clk;
  wire [0:0]p_0_in;
  wire st_reg_0;
  wire st_reg_1;

  LUT2 #(
    .INIT(4'h2)) 
    d_i_1__1
       (.I0(\btn[3]_2 ),
        .I1(p_0_in),
        .O(st_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st_reg_1),
        .Q(\btn[3]_2 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop_19
   (st_reg_0,
    st_reg_1,
    clk);
  output st_reg_0;
  input st_reg_1;
  input clk;

  wire clk;
  wire st_reg_0;
  wire st_reg_1;

  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st_reg_1),
        .Q(st_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop_2
   (st_reg_0,
    st_reg_1,
    clk);
  output st_reg_0;
  input st_reg_1;
  input clk;

  wire clk;
  wire st_reg_0;
  wire st_reg_1;

  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st_reg_1),
        .Q(st_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop_20
   (\btn[3]_3 ,
    st_reg_0,
    st_reg_1,
    clk,
    p_0_in);
  output \btn[3]_3 ;
  output st_reg_0;
  input st_reg_1;
  input clk;
  input [0:0]p_0_in;

  wire \btn[3]_3 ;
  wire clk;
  wire [0:0]p_0_in;
  wire st_reg_0;
  wire st_reg_1;

  LUT2 #(
    .INIT(4'h2)) 
    d_i_1__2
       (.I0(\btn[3]_3 ),
        .I1(p_0_in),
        .O(st_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st_reg_1),
        .Q(\btn[3]_3 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop_23
   (st_reg_0,
    st_reg_1,
    clk);
  output st_reg_0;
  input st_reg_1;
  input clk;

  wire clk;
  wire st_reg_0;
  wire st_reg_1;

  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st_reg_1),
        .Q(st_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop_24
   (\btn[3]_4 ,
    st_reg_0,
    st_reg_1,
    clk,
    p_0_in);
  output \btn[3]_4 ;
  output st_reg_0;
  input st_reg_1;
  input clk;
  input [0:0]p_0_in;

  wire \btn[3]_4 ;
  wire clk;
  wire [0:0]p_0_in;
  wire st_reg_0;
  wire st_reg_1;

  LUT2 #(
    .INIT(4'h2)) 
    d_i_1__3
       (.I0(\btn[3]_4 ),
        .I1(p_0_in),
        .O(st_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st_reg_1),
        .Q(\btn[3]_4 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop_27
   (st_reg_0,
    st_reg_1,
    clk);
  output st_reg_0;
  input st_reg_1;
  input clk;

  wire clk;
  wire st_reg_0;
  wire st_reg_1;

  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st_reg_1),
        .Q(st_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop_28
   (st_reg_0,
    st_reg_1,
    st_reg_2,
    st_reg_3,
    S,
    d_reg,
    st_reg_4,
    clk,
    \sum_reg[0] ,
    \sum_reg[2] ,
    \sum_reg[0]_0 ,
    \sum_reg[1] ,
    \sum_reg[1]_0 ,
    \sum_reg[1]_1 ,
    sum0__1_carry,
    p_12_out,
    \sum_reg[0]_1 ,
    \sum_reg[0]_2 );
  output st_reg_0;
  output st_reg_1;
  output st_reg_2;
  output st_reg_3;
  output [1:0]S;
  output d_reg;
  input st_reg_4;
  input clk;
  input \sum_reg[0] ;
  input \sum_reg[2] ;
  input \sum_reg[0]_0 ;
  input \sum_reg[1] ;
  input \sum_reg[1]_0 ;
  input \sum_reg[1]_1 ;
  input sum0__1_carry;
  input p_12_out;
  input \sum_reg[0]_1 ;
  input \sum_reg[0]_2 ;

  wire [1:0]S;
  wire clk;
  wire d_reg;
  wire p_12_out;
  wire st_reg_0;
  wire st_reg_1;
  wire st_reg_2;
  wire st_reg_3;
  wire st_reg_4;
  wire sum0__1_carry;
  wire \sum[0]_i_8_n_0 ;
  wire \sum[1]_i_8_n_0 ;
  wire \sum_reg[0] ;
  wire \sum_reg[0]_0 ;
  wire \sum_reg[0]_1 ;
  wire \sum_reg[0]_2 ;
  wire \sum_reg[1] ;
  wire \sum_reg[1]_0 ;
  wire \sum_reg[1]_1 ;
  wire \sum_reg[2] ;

  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st_reg_4),
        .Q(st_reg_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7888)) 
    sum0__1_carry_i_6__0
       (.I0(st_reg_0),
        .I1(\sum_reg[1] ),
        .I2(\sum_reg[0]_0 ),
        .I3(sum0__1_carry),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h8)) 
    sum0__1_carry_i_7
       (.I0(st_reg_0),
        .I1(sum0__1_carry),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00C00800)) 
    \sum[0]_i_12 
       (.I0(st_reg_0),
        .I1(\sum_reg[0] ),
        .I2(\sum_reg[2] ),
        .I3(\sum_reg[0]_0 ),
        .I4(\sum_reg[1] ),
        .O(st_reg_1));
  LUT6 #(
    .INIT(64'h80800000FF800000)) 
    \sum[0]_i_2 
       (.I0(\sum[0]_i_8_n_0 ),
        .I1(p_12_out),
        .I2(\sum_reg[0]_1 ),
        .I3(\sum_reg[0]_2 ),
        .I4(\sum_reg[0] ),
        .I5(\sum_reg[0]_0 ),
        .O(d_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \sum[0]_i_8 
       (.I0(st_reg_0),
        .I1(\sum_reg[1] ),
        .I2(\sum_reg[0]_0 ),
        .I3(sum0__1_carry),
        .O(\sum[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000008C888888)) 
    \sum[1]_i_3 
       (.I0(\sum[1]_i_8_n_0 ),
        .I1(\sum_reg[1]_0 ),
        .I2(\sum_reg[1]_1 ),
        .I3(\sum_reg[1] ),
        .I4(\sum_reg[0] ),
        .I5(\sum_reg[2] ),
        .O(st_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \sum[1]_i_8 
       (.I0(st_reg_0),
        .I1(\sum_reg[1] ),
        .I2(\sum_reg[0]_0 ),
        .O(\sum[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \sum[2]_i_2 
       (.I0(st_reg_0),
        .I1(\sum_reg[0] ),
        .I2(\sum_reg[2] ),
        .O(st_reg_3));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop_3
   (st_reg_0,
    st_reg_1,
    st_reg_2,
    st_reg_3,
    st_reg_4,
    st_reg_5,
    DI,
    st_reg_6,
    clk,
    \sum_reg[1] ,
    \sum_reg[0] ,
    sum0__1_carry_i_5__0,
    \sum_reg[1]_0 ,
    \sum_reg[1]_1 ,
    \sum_reg[0]_0 ,
    \sum_reg[0]_1 ,
    \sum_reg[0]_2 ,
    \sum[0]_i_6_0 ,
    \sum_reg[1]_2 ,
    \sum_reg[1]_3 );
  output st_reg_0;
  output st_reg_1;
  output st_reg_2;
  output st_reg_3;
  output st_reg_4;
  output st_reg_5;
  output [0:0]DI;
  input st_reg_6;
  input clk;
  input \sum_reg[1] ;
  input \sum_reg[0] ;
  input sum0__1_carry_i_5__0;
  input \sum_reg[1]_0 ;
  input \sum_reg[1]_1 ;
  input \sum_reg[0]_0 ;
  input \sum_reg[0]_1 ;
  input \sum_reg[0]_2 ;
  input \sum[0]_i_6_0 ;
  input \sum_reg[1]_2 ;
  input \sum_reg[1]_3 ;

  wire [0:0]DI;
  wire clk;
  wire st_reg_0;
  wire st_reg_1;
  wire st_reg_2;
  wire st_reg_3;
  wire st_reg_4;
  wire st_reg_5;
  wire st_reg_6;
  wire sum0__1_carry_i_5__0;
  wire \sum[0]_i_15_n_0 ;
  wire \sum[0]_i_6_0 ;
  wire \sum_reg[0] ;
  wire \sum_reg[0]_0 ;
  wire \sum_reg[0]_1 ;
  wire \sum_reg[0]_2 ;
  wire \sum_reg[1] ;
  wire \sum_reg[1]_0 ;
  wire \sum_reg[1]_1 ;
  wire \sum_reg[1]_2 ;
  wire \sum_reg[1]_3 ;

  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st_reg_6),
        .Q(st_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hE5307F0070F08000)) 
    sum0__1_carry_i_10
       (.I0(st_reg_0),
        .I1(\sum_reg[1] ),
        .I2(\sum_reg[0] ),
        .I3(sum0__1_carry_i_5__0),
        .I4(\sum_reg[1]_0 ),
        .I5(\sum_reg[1]_1 ),
        .O(st_reg_1));
  LUT2 #(
    .INIT(4'h8)) 
    sum0__1_carry_i_3
       (.I0(st_reg_0),
        .I1(\sum_reg[1]_2 ),
        .O(DI));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    sum0__1_carry_i_8__0
       (.I0(st_reg_0),
        .I1(\sum_reg[1] ),
        .O(st_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h080F)) 
    \sum[0]_i_15 
       (.I0(st_reg_0),
        .I1(\sum[0]_i_6_0 ),
        .I2(\sum_reg[1] ),
        .I3(\sum_reg[1]_2 ),
        .O(\sum[0]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sum[0]_i_21 
       (.I0(st_reg_0),
        .I1(\sum_reg[1] ),
        .O(st_reg_5));
  LUT6 #(
    .INIT(64'hFFBAAAAAAAAAAAAA)) 
    \sum[0]_i_6 
       (.I0(\sum_reg[0]_0 ),
        .I1(\sum_reg[0]_1 ),
        .I2(st_reg_0),
        .I3(\sum[0]_i_15_n_0 ),
        .I4(\sum_reg[0]_2 ),
        .I5(\sum_reg[0] ),
        .O(st_reg_3));
  LUT6 #(
    .INIT(64'h8C8C00000000C000)) 
    \sum[1]_i_4 
       (.I0(st_reg_0),
        .I1(\sum_reg[1]_3 ),
        .I2(\sum_reg[1] ),
        .I3(\sum_reg[1]_2 ),
        .I4(\sum_reg[1]_0 ),
        .I5(\sum_reg[1]_1 ),
        .O(st_reg_4));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop_30
   (st_reg_0,
    st_reg_1,
    clk);
  output st_reg_0;
  input st_reg_1;
  input clk;

  wire clk;
  wire st_reg_0;
  wire st_reg_1;

  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st_reg_1),
        .Q(st_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop_31
   (st_reg_0,
    st_reg_1,
    st_reg_2,
    st_reg_3,
    st_reg_4,
    DI,
    st_reg_5,
    clk,
    \sum_reg[3] ,
    \sum_reg[0] ,
    \sum_reg[0]_0 ,
    \sum_reg[0]_1 ,
    p_12_out,
    \sum[2]_i_7 ,
    sum0__1_carry);
  output st_reg_0;
  output st_reg_1;
  output st_reg_2;
  output st_reg_3;
  output st_reg_4;
  output [0:0]DI;
  input st_reg_5;
  input clk;
  input \sum_reg[3] ;
  input \sum_reg[0] ;
  input \sum_reg[0]_0 ;
  input \sum_reg[0]_1 ;
  input p_12_out;
  input \sum[2]_i_7 ;
  input sum0__1_carry;

  wire [0:0]DI;
  wire clk;
  wire p_12_out;
  wire st_reg_0;
  wire st_reg_1;
  wire st_reg_2;
  wire st_reg_3;
  wire st_reg_4;
  wire st_reg_5;
  wire sum0__1_carry;
  wire \sum[2]_i_7 ;
  wire \sum_reg[0] ;
  wire \sum_reg[0]_0 ;
  wire \sum_reg[0]_1 ;
  wire \sum_reg[3] ;

  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st_reg_5),
        .Q(st_reg_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7888)) 
    sum0__1_carry_i_2__0
       (.I0(st_reg_0),
        .I1(sum0__1_carry),
        .I2(\sum_reg[3] ),
        .I3(\sum_reg[0] ),
        .O(DI));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sum[0]_i_19 
       (.I0(st_reg_0),
        .I1(sum0__1_carry),
        .O(st_reg_4));
  LUT6 #(
    .INIT(64'h0000101100000000)) 
    \sum[0]_i_4 
       (.I0(st_reg_0),
        .I1(\sum_reg[3] ),
        .I2(\sum_reg[0] ),
        .I3(\sum_reg[0]_0 ),
        .I4(\sum_reg[0]_1 ),
        .I5(p_12_out),
        .O(st_reg_1));
  LUT6 #(
    .INIT(64'h0004000000040004)) 
    \sum[2]_i_8 
       (.I0(st_reg_0),
        .I1(p_12_out),
        .I2(\sum_reg[0]_1 ),
        .I3(\sum_reg[3] ),
        .I4(\sum[2]_i_7 ),
        .I5(\sum_reg[0]_0 ),
        .O(st_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \sum[3]_i_5 
       (.I0(st_reg_0),
        .I1(\sum_reg[3] ),
        .O(st_reg_2));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop_33
   (st_reg_0,
    st_reg_1,
    clk);
  output st_reg_0;
  input st_reg_1;
  input clk;

  wire clk;
  wire st_reg_0;
  wire st_reg_1;

  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st_reg_1),
        .Q(st_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop_34
   (st_reg_0,
    DI,
    st_reg_1,
    st_reg_2,
    st_reg_3,
    S,
    st_reg_4,
    st_reg_5,
    clk,
    sum0__1_carry,
    sum0__1_carry_0,
    sum0__1_carry_1,
    sum0__1_carry_2,
    sum0__1_carry_3,
    sum0__1_carry__0,
    sum0__1_carry__0_0,
    sum0__1_carry_4,
    sum0__1_carry_5,
    sum0__1_carry__0_1);
  output st_reg_0;
  output [0:0]DI;
  output [0:0]st_reg_1;
  output st_reg_2;
  output st_reg_3;
  output [0:0]S;
  output [0:0]st_reg_4;
  input st_reg_5;
  input clk;
  input sum0__1_carry;
  input sum0__1_carry_0;
  input sum0__1_carry_1;
  input sum0__1_carry_2;
  input sum0__1_carry_3;
  input sum0__1_carry__0;
  input sum0__1_carry__0_0;
  input sum0__1_carry_4;
  input sum0__1_carry_5;
  input sum0__1_carry__0_1;

  wire [0:0]DI;
  wire [0:0]S;
  wire clk;
  wire st_reg_0;
  wire [0:0]st_reg_1;
  wire st_reg_2;
  wire st_reg_3;
  wire [0:0]st_reg_4;
  wire st_reg_5;
  wire sum0__1_carry;
  wire sum0__1_carry_0;
  wire sum0__1_carry_1;
  wire sum0__1_carry_2;
  wire sum0__1_carry_3;
  wire sum0__1_carry_4;
  wire sum0__1_carry_5;
  wire sum0__1_carry__0;
  wire sum0__1_carry__0_0;
  wire sum0__1_carry__0_1;

  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st_reg_5),
        .Q(st_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h96663CCC5AAAF000)) 
    sum0__1_carry_i_1
       (.I0(st_reg_0),
        .I1(sum0__1_carry),
        .I2(sum0__1_carry_0),
        .I3(sum0__1_carry_1),
        .I4(sum0__1_carry_2),
        .I5(sum0__1_carry_3),
        .O(DI));
  LUT6 #(
    .INIT(64'h0008000000020000)) 
    sum0__1_carry_i_2
       (.I0(st_reg_0),
        .I1(sum0__1_carry_3),
        .I2(sum0__1_carry__0),
        .I3(sum0__1_carry__0_0),
        .I4(sum0__1_carry_4),
        .I5(sum0__1_carry_0),
        .O(st_reg_1));
  LUT6 #(
    .INIT(64'h6A6A956A6A6A6A6A)) 
    sum0__1_carry_i_4
       (.I0(DI),
        .I1(sum0__1_carry_4),
        .I2(sum0__1_carry_5),
        .I3(sum0__1_carry_1),
        .I4(sum0__1_carry__0),
        .I5(st_reg_0),
        .O(S));
  LUT2 #(
    .INIT(4'h6)) 
    sum0__1_carry_i_5__0
       (.I0(st_reg_1),
        .I1(sum0__1_carry__0_1),
        .O(st_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sum[1]_i_6 
       (.I0(st_reg_0),
        .I1(sum0__1_carry_3),
        .O(st_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \sum[2]_i_5 
       (.I0(st_reg_0),
        .I1(sum0__1_carry_3),
        .O(st_reg_3));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop_36
   (st_reg_0,
    st_reg_1,
    clk);
  output st_reg_0;
  input st_reg_1;
  input clk;

  wire clk;
  wire st_reg_0;
  wire st_reg_1;

  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st_reg_1),
        .Q(st_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop_37
   (st_reg_0,
    st_reg_1,
    st_reg_2,
    st_reg_3,
    clk,
    \sum_reg[4] ,
    \sum_reg[4]_0 ,
    p_10_out,
    p_12_out,
    \sum_reg[3] );
  output st_reg_0;
  output st_reg_1;
  output st_reg_2;
  input st_reg_3;
  input clk;
  input \sum_reg[4] ;
  input \sum_reg[4]_0 ;
  input p_10_out;
  input p_12_out;
  input \sum_reg[3] ;

  wire clk;
  wire p_10_out;
  wire p_12_out;
  wire st_reg_0;
  wire st_reg_1;
  wire st_reg_2;
  wire st_reg_3;
  wire \sum_reg[3] ;
  wire \sum_reg[4] ;
  wire \sum_reg[4]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st_reg_3),
        .Q(st_reg_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \sum[3]_i_4 
       (.I0(st_reg_0),
        .I1(p_12_out),
        .I2(\sum_reg[3] ),
        .O(st_reg_2));
  LUT4 #(
    .INIT(16'hB200)) 
    \sum[7]_i_4 
       (.I0(st_reg_0),
        .I1(\sum_reg[4] ),
        .I2(\sum_reg[4]_0 ),
        .I3(p_10_out),
        .O(st_reg_1));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop_39
   (st_reg_0,
    st_reg_1,
    clk);
  output st_reg_0;
  input st_reg_1;
  input clk;

  wire clk;
  wire st_reg_0;
  wire st_reg_1;

  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st_reg_1),
        .Q(st_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop_40
   (st_reg_0,
    d_reg,
    st_reg_1,
    st_reg_2,
    st_reg_3,
    st_reg_4,
    st_reg_5,
    st_reg_6,
    S,
    st_reg_7,
    DI,
    st_reg_8,
    clk,
    sum0__1_carry,
    \sum_reg[4] ,
    sum0__1_carry_0,
    sum0__1_carry_1,
    sum0__1_carry_2,
    p_10_out,
    p_9_out,
    \sum_reg[2] ,
    \sum_reg[4]_0 ,
    sum0__1_carry_3,
    \sum[3]_i_3_0 ,
    \sum[2]_i_3_0 ,
    \sum[2]_i_3_1 ,
    sum0__1_carry__0);
  output st_reg_0;
  output d_reg;
  output st_reg_1;
  output st_reg_2;
  output st_reg_3;
  output st_reg_4;
  output st_reg_5;
  output st_reg_6;
  output [0:0]S;
  output [0:0]st_reg_7;
  output [0:0]DI;
  input st_reg_8;
  input clk;
  input sum0__1_carry;
  input \sum_reg[4] ;
  input sum0__1_carry_0;
  input sum0__1_carry_1;
  input sum0__1_carry_2;
  input p_10_out;
  input p_9_out;
  input \sum_reg[2] ;
  input \sum_reg[4]_0 ;
  input sum0__1_carry_3;
  input \sum[3]_i_3_0 ;
  input \sum[2]_i_3_0 ;
  input \sum[2]_i_3_1 ;
  input sum0__1_carry__0;

  wire [0:0]DI;
  wire [0:0]S;
  wire clk;
  wire d_reg;
  wire p_10_out;
  wire p_9_out;
  wire st_reg_0;
  wire st_reg_1;
  wire st_reg_2;
  wire st_reg_3;
  wire st_reg_4;
  wire st_reg_5;
  wire st_reg_6;
  wire [0:0]st_reg_7;
  wire st_reg_8;
  wire sum0__1_carry;
  wire sum0__1_carry_0;
  wire sum0__1_carry_1;
  wire sum0__1_carry_2;
  wire sum0__1_carry_3;
  wire sum0__1_carry__0;
  wire sum0__1_carry_i_8_n_0;
  wire \sum[2]_i_10_n_0 ;
  wire \sum[2]_i_3_0 ;
  wire \sum[2]_i_3_1 ;
  wire \sum[2]_i_4_n_0 ;
  wire \sum[2]_i_6_n_0 ;
  wire \sum[2]_i_7_n_0 ;
  wire \sum[3]_i_3_0 ;
  wire \sum[3]_i_6_n_0 ;
  wire \sum[3]_i_7_n_0 ;
  wire \sum[3]_i_8_n_0 ;
  wire \sum[4]_i_3_n_0 ;
  wire \sum_reg[2] ;
  wire \sum_reg[4] ;
  wire \sum_reg[4]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st_reg_8),
        .Q(st_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    sum0__1_carry_i_11
       (.I0(st_reg_0),
        .I1(\sum_reg[4]_0 ),
        .O(st_reg_4));
  LUT6 #(
    .INIT(64'h965A69A569A569A5)) 
    sum0__1_carry_i_3__0
       (.I0(sum0__1_carry_i_8_n_0),
        .I1(\sum_reg[4] ),
        .I2(sum0__1_carry__0),
        .I3(sum0__1_carry_2),
        .I4(\sum_reg[4]_0 ),
        .I5(sum0__1_carry_1),
        .O(DI));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    sum0__1_carry_i_5
       (.I0(st_reg_0),
        .I1(sum0__1_carry_0),
        .I2(sum0__1_carry_1),
        .I3(sum0__1_carry_2),
        .I4(sum0__1_carry),
        .I5(sum0__1_carry_3),
        .O(S));
  LUT6 #(
    .INIT(64'h6A55AA6AAA6AAA6A)) 
    sum0__1_carry_i_6
       (.I0(DI),
        .I1(sum0__1_carry_3),
        .I2(sum0__1_carry_2),
        .I3(st_reg_4),
        .I4(sum0__1_carry_1),
        .I5(sum0__1_carry_0),
        .O(st_reg_7));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    sum0__1_carry_i_7__0
       (.I0(st_reg_0),
        .I1(sum0__1_carry),
        .O(st_reg_6));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    sum0__1_carry_i_8
       (.I0(st_reg_0),
        .I1(sum0__1_carry),
        .I2(\sum_reg[4] ),
        .I3(sum0__1_carry_0),
        .I4(sum0__1_carry_1),
        .I5(sum0__1_carry_2),
        .O(sum0__1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sum[0]_i_20 
       (.I0(st_reg_0),
        .I1(sum0__1_carry),
        .O(st_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hB0FB)) 
    \sum[2]_i_10 
       (.I0(st_reg_0),
        .I1(sum0__1_carry),
        .I2(sum0__1_carry_1),
        .I3(sum0__1_carry_2),
        .O(\sum[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8008800)) 
    \sum[2]_i_3 
       (.I0(\sum[2]_i_4_n_0 ),
        .I1(p_10_out),
        .I2(p_9_out),
        .I3(\sum_reg[2] ),
        .I4(\sum[2]_i_6_n_0 ),
        .I5(\sum[2]_i_7_n_0 ),
        .O(d_reg));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h40F4)) 
    \sum[2]_i_4 
       (.I0(st_reg_0),
        .I1(sum0__1_carry),
        .I2(sum0__1_carry_2),
        .I3(sum0__1_carry_1),
        .O(\sum[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \sum[2]_i_6 
       (.I0(st_reg_0),
        .I1(sum0__1_carry),
        .I2(sum0__1_carry_2),
        .I3(sum0__1_carry_1),
        .O(\sum[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F0F0F8F8F0F0)) 
    \sum[2]_i_7 
       (.I0(\sum[3]_i_8_n_0 ),
        .I1(p_9_out),
        .I2(\sum[2]_i_3_0 ),
        .I3(p_10_out),
        .I4(\sum[2]_i_3_1 ),
        .I5(\sum[2]_i_10_n_0 ),
        .O(\sum[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFAEEEEFAAAAAAAAA)) 
    \sum[3]_i_3 
       (.I0(\sum[3]_i_6_n_0 ),
        .I1(\sum[3]_i_7_n_0 ),
        .I2(st_reg_2),
        .I3(\sum_reg[4]_0 ),
        .I4(\sum_reg[4] ),
        .I5(p_10_out),
        .O(st_reg_1));
  LUT6 #(
    .INIT(64'hAAAA00000CCF0000)) 
    \sum[3]_i_6 
       (.I0(\sum[4]_i_3_n_0 ),
        .I1(\sum[3]_i_8_n_0 ),
        .I2(sum0__1_carry_0),
        .I3(sum0__1_carry_3),
        .I4(p_9_out),
        .I5(\sum[3]_i_3_0 ),
        .O(\sum[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB0FB0000FFFFB0FB)) 
    \sum[3]_i_7 
       (.I0(st_reg_0),
        .I1(sum0__1_carry),
        .I2(sum0__1_carry_1),
        .I3(sum0__1_carry_2),
        .I4(sum0__1_carry_3),
        .I5(sum0__1_carry_0),
        .O(\sum[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h077F)) 
    \sum[3]_i_8 
       (.I0(st_reg_0),
        .I1(sum0__1_carry),
        .I2(sum0__1_carry_2),
        .I3(sum0__1_carry_1),
        .O(\sum[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hE800)) 
    \sum[4]_i_2 
       (.I0(\sum[4]_i_3_n_0 ),
        .I1(\sum_reg[4]_0 ),
        .I2(\sum_reg[4] ),
        .I3(p_9_out),
        .O(st_reg_3));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    \sum[4]_i_3 
       (.I0(st_reg_0),
        .I1(sum0__1_carry),
        .I2(sum0__1_carry_2),
        .I3(sum0__1_carry_1),
        .I4(sum0__1_carry_0),
        .I5(sum0__1_carry_3),
        .O(\sum[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h40F40000FFFF40F4)) 
    \sum[7]_i_5 
       (.I0(st_reg_0),
        .I1(sum0__1_carry),
        .I2(sum0__1_carry_2),
        .I3(sum0__1_carry_1),
        .I4(sum0__1_carry_0),
        .I5(sum0__1_carry_3),
        .O(st_reg_2));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop_5
   (st_reg_0,
    st_reg_1,
    clk);
  output st_reg_0;
  input st_reg_1;
  input clk;

  wire clk;
  wire st_reg_0;
  wire st_reg_1;

  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st_reg_1),
        .Q(st_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop_6
   (st_reg_0,
    st_reg_1,
    st_reg_2,
    st_reg_3,
    S,
    st_reg_4,
    clk,
    \sum_reg[0] ,
    \sum_reg[0]_0 ,
    \sum_reg[0]_1 ,
    \sum_reg[0]_2 ,
    \sum[0]_i_5_0 ,
    sum0__1_carry__0,
    sum0__1_carry__0_0,
    \sum[0]_i_5_1 ,
    \sum[0]_i_5_2 ,
    sum0__1_carry__0_1,
    sum0__1_carry__0_2);
  output st_reg_0;
  output st_reg_1;
  output st_reg_2;
  output st_reg_3;
  output [0:0]S;
  input st_reg_4;
  input clk;
  input \sum_reg[0] ;
  input \sum_reg[0]_0 ;
  input \sum_reg[0]_1 ;
  input \sum_reg[0]_2 ;
  input \sum[0]_i_5_0 ;
  input sum0__1_carry__0;
  input sum0__1_carry__0_0;
  input \sum[0]_i_5_1 ;
  input \sum[0]_i_5_2 ;
  input sum0__1_carry__0_1;
  input sum0__1_carry__0_2;

  wire [0:0]S;
  wire clk;
  wire st_reg_0;
  wire st_reg_1;
  wire st_reg_2;
  wire st_reg_3;
  wire st_reg_4;
  wire sum0__1_carry__0;
  wire sum0__1_carry__0_0;
  wire sum0__1_carry__0_1;
  wire sum0__1_carry__0_2;
  wire \sum[0]_i_10_n_0 ;
  wire \sum[0]_i_13_n_0 ;
  wire \sum[0]_i_5_0 ;
  wire \sum[0]_i_5_1 ;
  wire \sum[0]_i_5_2 ;
  wire \sum_reg[0] ;
  wire \sum_reg[0]_0 ;
  wire \sum_reg[0]_1 ;
  wire \sum_reg[0]_2 ;

  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st_reg_4),
        .Q(st_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1777808088000000)) 
    sum0__1_carry_i_4__0
       (.I0(st_reg_0),
        .I1(sum0__1_carry__0_1),
        .I2(sum0__1_carry__0_0),
        .I3(sum0__1_carry__0),
        .I4(sum0__1_carry__0_2),
        .I5(\sum_reg[0]_0 ),
        .O(S));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    sum0__1_carry_i_9
       (.I0(st_reg_0),
        .I1(sum0__1_carry__0_1),
        .O(st_reg_3));
  LUT6 #(
    .INIT(64'h4404400040004000)) 
    \sum[0]_i_10 
       (.I0(st_reg_0),
        .I1(\sum[0]_i_5_0 ),
        .I2(sum0__1_carry__0),
        .I3(sum0__1_carry__0_0),
        .I4(\sum[0]_i_5_1 ),
        .I5(\sum[0]_i_5_2 ),
        .O(\sum[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h4000400040404000)) 
    \sum[0]_i_13 
       (.I0(st_reg_0),
        .I1(sum0__1_carry__0_1),
        .I2(\sum[0]_i_5_0 ),
        .I3(sum0__1_carry__0_0),
        .I4(\sum[0]_i_5_1 ),
        .I5(sum0__1_carry__0),
        .O(\sum[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEEEEEE)) 
    \sum[0]_i_5 
       (.I0(\sum[0]_i_10_n_0 ),
        .I1(\sum_reg[0] ),
        .I2(\sum_reg[0]_0 ),
        .I3(\sum_reg[0]_1 ),
        .I4(\sum_reg[0]_2 ),
        .I5(\sum[0]_i_13_n_0 ),
        .O(st_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sum[2]_i_9 
       (.I0(st_reg_0),
        .I1(sum0__1_carry__0_1),
        .O(st_reg_2));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop_8
   (st_reg_0,
    st_reg_1,
    clk);
  output st_reg_0;
  input st_reg_1;
  input clk;

  wire clk;
  wire st_reg_0;
  wire st_reg_1;

  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st_reg_1),
        .Q(st_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_calculator_0_0_flipflop_9
   (st_reg_0,
    DI,
    st_reg_1,
    st_reg_2,
    clk,
    sum0__1_carry__0);
  output st_reg_0;
  output [0:0]DI;
  output st_reg_1;
  input st_reg_2;
  input clk;
  input sum0__1_carry__0;

  wire [0:0]DI;
  wire clk;
  wire st_reg_0;
  wire st_reg_1;
  wire st_reg_2;
  wire sum0__1_carry__0;

  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st_reg_2),
        .Q(st_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    sum0__1_carry_i_1__0
       (.I0(st_reg_0),
        .I1(sum0__1_carry__0),
        .O(DI));
  LUT2 #(
    .INIT(4'h9)) 
    \sum[0]_i_9 
       (.I0(st_reg_0),
        .I1(sum0__1_carry__0),
        .O(st_reg_1));
endmodule

(* ORIG_REF_NAME = "singlePulse" *) 
module system3_calculator_0_0_singlePulse
   (p_0_in,
    p_12_out,
    D,
    d_reg_0,
    d_reg_1,
    d_reg_2,
    E,
    SR,
    d_reg_3,
    \btn[3]_0 ,
    clk,
    d_reg_4,
    O,
    p_11_out,
    \sum_reg[3] ,
    \sum_reg[3]_0 ,
    \sum_reg[3]_1 ,
    \sum_reg[1] ,
    \sum_reg[1]_0 ,
    \sum_reg[1]_1 ,
    \sum_reg[0] ,
    \sum_reg[0]_0 ,
    \sum_reg[0]_1 ,
    \sum_reg[0]_2 ,
    \sum_reg[3]_2 ,
    \sum_reg[3]_3 ,
    \sum_reg[0]_3 ,
    \sum_reg[0]_4 ,
    \sum[0]_i_5 ,
    \sum_reg[0]_5 ,
    \sum_reg[1]_2 ,
    \sum_reg[1]_3 ,
    \sum_reg[0]_6 ,
    \sum_reg[0]_7 ,
    \sum_reg[0]_8 ,
    p_9_out,
    p_10_out,
    p_8_out);
  output [0:0]p_0_in;
  output p_12_out;
  output [2:0]D;
  output d_reg_0;
  output d_reg_1;
  output d_reg_2;
  output [0:0]E;
  output [0:0]SR;
  output d_reg_3;
  input \btn[3]_0 ;
  input clk;
  input d_reg_4;
  input [2:0]O;
  input p_11_out;
  input \sum_reg[3] ;
  input \sum_reg[3]_0 ;
  input \sum_reg[3]_1 ;
  input \sum_reg[1] ;
  input \sum_reg[1]_0 ;
  input \sum_reg[1]_1 ;
  input \sum_reg[0] ;
  input \sum_reg[0]_0 ;
  input \sum_reg[0]_1 ;
  input \sum_reg[0]_2 ;
  input \sum_reg[3]_2 ;
  input \sum_reg[3]_3 ;
  input \sum_reg[0]_3 ;
  input \sum_reg[0]_4 ;
  input \sum[0]_i_5 ;
  input \sum_reg[0]_5 ;
  input \sum_reg[1]_2 ;
  input \sum_reg[1]_3 ;
  input \sum_reg[0]_6 ;
  input \sum_reg[0]_7 ;
  input \sum_reg[0]_8 ;
  input p_9_out;
  input p_10_out;
  input p_8_out;

  wire [2:0]D;
  wire [0:0]E;
  wire [2:0]O;
  wire [0:0]SR;
  wire \btn[3]_0 ;
  wire clk;
  wire d_reg_0;
  wire d_reg_1;
  wire d_reg_2;
  wire d_reg_3;
  wire d_reg_4;
  wire [0:0]p_0_in;
  wire p_10_out;
  wire p_11_out;
  wire p_12_out;
  wire p_8_out;
  wire p_9_out;
  wire \sum[0]_i_17_n_0 ;
  wire \sum[0]_i_3_n_0 ;
  wire \sum[0]_i_5 ;
  wire \sum[0]_i_7_n_0 ;
  wire \sum[1]_i_2_n_0 ;
  wire \sum_reg[0] ;
  wire \sum_reg[0]_0 ;
  wire \sum_reg[0]_1 ;
  wire \sum_reg[0]_2 ;
  wire \sum_reg[0]_3 ;
  wire \sum_reg[0]_4 ;
  wire \sum_reg[0]_5 ;
  wire \sum_reg[0]_6 ;
  wire \sum_reg[0]_7 ;
  wire \sum_reg[0]_8 ;
  wire \sum_reg[1] ;
  wire \sum_reg[1]_0 ;
  wire \sum_reg[1]_1 ;
  wire \sum_reg[1]_2 ;
  wire \sum_reg[1]_3 ;
  wire \sum_reg[3] ;
  wire \sum_reg[3]_0 ;
  wire \sum_reg[3]_1 ;
  wire \sum_reg[3]_2 ;
  wire \sum_reg[3]_3 ;

  FDRE d_reg
       (.C(clk),
        .CE(1'b1),
        .D(d_reg_4),
        .Q(p_12_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(\btn[3]_0 ),
        .Q(p_0_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sum[0]_i_1 
       (.I0(\sum_reg[0] ),
        .I1(\sum[0]_i_3_n_0 ),
        .I2(\sum_reg[0]_0 ),
        .I3(\sum_reg[0]_1 ),
        .I4(\sum_reg[0]_2 ),
        .I5(\sum[0]_i_7_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0080000080800080)) 
    \sum[0]_i_11 
       (.I0(p_12_out),
        .I1(\sum_reg[3]_2 ),
        .I2(\sum_reg[3]_3 ),
        .I3(\sum_reg[0]_3 ),
        .I4(\sum_reg[0]_4 ),
        .I5(\sum[0]_i_5 ),
        .O(d_reg_1));
  LUT2 #(
    .INIT(4'h8)) 
    \sum[0]_i_16 
       (.I0(p_12_out),
        .I1(\sum_reg[0]_4 ),
        .O(d_reg_3));
  LUT6 #(
    .INIT(64'h000A000AC0000000)) 
    \sum[0]_i_17 
       (.I0(d_reg_2),
        .I1(d_reg_0),
        .I2(\sum_reg[0]_6 ),
        .I3(\sum_reg[0]_3 ),
        .I4(\sum_reg[1]_2 ),
        .I5(\sum_reg[0]_5 ),
        .O(\sum[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000008080000080)) 
    \sum[0]_i_3 
       (.I0(d_reg_2),
        .I1(\sum_reg[0]_7 ),
        .I2(\sum_reg[0]_5 ),
        .I3(\sum_reg[0]_4 ),
        .I4(\sum_reg[0]_3 ),
        .I5(\sum_reg[3]_2 ),
        .O(\sum[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBAAABAAABAAA)) 
    \sum[0]_i_7 
       (.I0(\sum[0]_i_17_n_0 ),
        .I1(\sum_reg[0]_6 ),
        .I2(\sum_reg[0]_7 ),
        .I3(\sum_reg[0]_8 ),
        .I4(p_11_out),
        .I5(O[0]),
        .O(\sum[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \sum[1]_i_1 
       (.I0(\sum[1]_i_2_n_0 ),
        .I1(p_11_out),
        .I2(O[1]),
        .I3(\sum_reg[1] ),
        .I4(\sum_reg[1]_0 ),
        .I5(\sum_reg[1]_1 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h080808080AFF0A0A)) 
    \sum[1]_i_2 
       (.I0(d_reg_0),
        .I1(\sum_reg[0]_5 ),
        .I2(\sum_reg[1]_2 ),
        .I3(\sum_reg[1]_3 ),
        .I4(d_reg_2),
        .I5(\sum_reg[0]_6 ),
        .O(\sum[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[1]_i_7 
       (.I0(p_12_out),
        .I1(\sum_reg[3]_3 ),
        .O(d_reg_2));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFC0FFC0)) 
    \sum[3]_i_1 
       (.I0(d_reg_0),
        .I1(O[2]),
        .I2(p_11_out),
        .I3(\sum_reg[3] ),
        .I4(\sum_reg[3]_0 ),
        .I5(\sum_reg[3]_1 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \sum[3]_i_2 
       (.I0(p_12_out),
        .I1(\sum_reg[3]_2 ),
        .I2(\sum_reg[3]_3 ),
        .O(d_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \sum[7]_i_1 
       (.I0(p_12_out),
        .I1(p_8_out),
        .I2(p_11_out),
        .I3(p_9_out),
        .I4(p_10_out),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000116)) 
    \sum[7]_i_2 
       (.I0(p_12_out),
        .I1(p_11_out),
        .I2(p_9_out),
        .I3(p_10_out),
        .I4(p_8_out),
        .O(E));
endmodule

(* ORIG_REF_NAME = "singlePulse" *) 
module system3_calculator_0_0_singlePulse_13
   (p_11_out,
    p_0_in,
    D,
    d_reg_0,
    clk,
    \btn[3]_1 ,
    sum0,
    \sum_reg[2] ,
    \sum_reg[2]_0 ,
    \sum_reg[2]_1 ,
    \sum_reg[4] ,
    \sum_reg[4]_0 );
  output p_11_out;
  output [0:0]p_0_in;
  output [4:0]D;
  input d_reg_0;
  input clk;
  input \btn[3]_1 ;
  input [4:0]sum0;
  input \sum_reg[2] ;
  input \sum_reg[2]_0 ;
  input \sum_reg[2]_1 ;
  input \sum_reg[4] ;
  input \sum_reg[4]_0 ;

  wire [4:0]D;
  wire \btn[3]_1 ;
  wire clk;
  wire d_reg_0;
  wire [0:0]p_0_in;
  wire p_11_out;
  wire [4:0]sum0;
  wire \sum_reg[2] ;
  wire \sum_reg[2]_0 ;
  wire \sum_reg[2]_1 ;
  wire \sum_reg[4] ;
  wire \sum_reg[4]_0 ;

  FDRE d_reg
       (.C(clk),
        .CE(1'b1),
        .D(d_reg_0),
        .Q(p_11_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(\btn[3]_1 ),
        .Q(p_0_in),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \sum[2]_i_1 
       (.I0(p_11_out),
        .I1(sum0[0]),
        .I2(\sum_reg[2] ),
        .I3(\sum_reg[2]_0 ),
        .I4(\sum_reg[2]_1 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \sum[4]_i_1 
       (.I0(sum0[1]),
        .I1(p_11_out),
        .I2(\sum_reg[4] ),
        .I3(\sum_reg[4]_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \sum[5]_i_1 
       (.I0(p_11_out),
        .I1(sum0[2]),
        .I2(\sum_reg[4]_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \sum[6]_i_1 
       (.I0(p_11_out),
        .I1(sum0[3]),
        .I2(\sum_reg[4]_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \sum[7]_i_3 
       (.I0(p_11_out),
        .I1(sum0[4]),
        .I2(\sum_reg[4]_0 ),
        .O(D[4]));
endmodule

(* ORIG_REF_NAME = "singlePulse" *) 
module system3_calculator_0_0_singlePulse_17
   (p_10_out,
    p_0_in,
    st_reg_0,
    st_reg_1,
    d_reg_0,
    d_reg_1,
    clk,
    \btn[3]_2 ,
    \sum_reg[1] ,
    \sum_reg[1]_0 ,
    \sum_reg[1]_1 ,
    \sum_reg[1]_2 ,
    \sum[1]_i_5_0 ,
    \sum[1]_i_5_1 ,
    p_9_out,
    \sum[1]_i_5_2 ,
    \sum[0]_i_6 ,
    \sum[0]_i_6_0 ,
    p_12_out,
    \sum[0]_i_6_1 ,
    \sum[0]_i_6_2 );
  output p_10_out;
  output [0:0]p_0_in;
  output st_reg_0;
  output st_reg_1;
  output d_reg_0;
  input d_reg_1;
  input clk;
  input \btn[3]_2 ;
  input \sum_reg[1] ;
  input \sum_reg[1]_0 ;
  input \sum_reg[1]_1 ;
  input \sum_reg[1]_2 ;
  input \sum[1]_i_5_0 ;
  input \sum[1]_i_5_1 ;
  input p_9_out;
  input \sum[1]_i_5_2 ;
  input \sum[0]_i_6 ;
  input \sum[0]_i_6_0 ;
  input p_12_out;
  input \sum[0]_i_6_1 ;
  input \sum[0]_i_6_2 ;

  wire \btn[3]_2 ;
  wire clk;
  wire d_reg_0;
  wire d_reg_1;
  wire [0:0]p_0_in;
  wire p_10_out;
  wire p_12_out;
  wire p_9_out;
  wire st_reg_0;
  wire st_reg_1;
  wire \sum[0]_i_6 ;
  wire \sum[0]_i_6_0 ;
  wire \sum[0]_i_6_1 ;
  wire \sum[0]_i_6_2 ;
  wire \sum[1]_i_5_0 ;
  wire \sum[1]_i_5_1 ;
  wire \sum[1]_i_5_2 ;
  wire \sum[1]_i_9_n_0 ;
  wire \sum_reg[1] ;
  wire \sum_reg[1]_0 ;
  wire \sum_reg[1]_1 ;
  wire \sum_reg[1]_2 ;

  FDRE d_reg
       (.C(clk),
        .CE(1'b1),
        .D(d_reg_1),
        .Q(p_10_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(\btn[3]_2 ),
        .Q(p_0_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h3000AAAA0000AAAA)) 
    \sum[0]_i_14 
       (.I0(d_reg_0),
        .I1(\sum[0]_i_6 ),
        .I2(\sum[0]_i_6_0 ),
        .I3(p_12_out),
        .I4(\sum[0]_i_6_1 ),
        .I5(\sum[0]_i_6_2 ),
        .O(st_reg_1));
  LUT2 #(
    .INIT(4'hE)) 
    \sum[0]_i_18 
       (.I0(p_10_out),
        .I1(p_9_out),
        .O(d_reg_0));
  LUT5 #(
    .INIT(32'hFFFFBAAA)) 
    \sum[1]_i_5 
       (.I0(\sum[1]_i_9_n_0 ),
        .I1(\sum_reg[1] ),
        .I2(\sum_reg[1]_0 ),
        .I3(\sum_reg[1]_1 ),
        .I4(\sum_reg[1]_2 ),
        .O(st_reg_0));
  LUT6 #(
    .INIT(64'hEB28282882822828)) 
    \sum[1]_i_9 
       (.I0(p_10_out),
        .I1(\sum[1]_i_5_0 ),
        .I2(\sum[1]_i_5_1 ),
        .I3(p_9_out),
        .I4(\sum_reg[1] ),
        .I5(\sum[1]_i_5_2 ),
        .O(\sum[1]_i_9_n_0 ));
endmodule

(* ORIG_REF_NAME = "singlePulse" *) 
module system3_calculator_0_0_singlePulse_21
   (p_9_out,
    p_0_in,
    d_reg_0,
    d_reg_1,
    clk,
    \btn[3]_3 ,
    \sum[1]_i_5 ,
    \sum[1]_i_5_0 ,
    \sum[1]_i_5_1 ,
    \sum[1]_i_5_2 );
  output p_9_out;
  output [0:0]p_0_in;
  output d_reg_0;
  input d_reg_1;
  input clk;
  input \btn[3]_3 ;
  input \sum[1]_i_5 ;
  input \sum[1]_i_5_0 ;
  input \sum[1]_i_5_1 ;
  input \sum[1]_i_5_2 ;

  wire \btn[3]_3 ;
  wire clk;
  wire d_reg_0;
  wire d_reg_1;
  wire [0:0]p_0_in;
  wire p_9_out;
  wire \sum[1]_i_5 ;
  wire \sum[1]_i_5_0 ;
  wire \sum[1]_i_5_1 ;
  wire \sum[1]_i_5_2 ;

  FDRE d_reg
       (.C(clk),
        .CE(1'b1),
        .D(d_reg_1),
        .Q(p_9_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(\btn[3]_3 ),
        .Q(p_0_in),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h002A2A00)) 
    \sum[1]_i_10 
       (.I0(p_9_out),
        .I1(\sum[1]_i_5 ),
        .I2(\sum[1]_i_5_0 ),
        .I3(\sum[1]_i_5_1 ),
        .I4(\sum[1]_i_5_2 ),
        .O(d_reg_0));
endmodule

(* ORIG_REF_NAME = "singlePulse" *) 
module system3_calculator_0_0_singlePulse_25
   (p_8_out,
    p_0_in,
    d_reg_0,
    clk,
    \btn[3]_4 );
  output p_8_out;
  output [0:0]p_0_in;
  input d_reg_0;
  input clk;
  input \btn[3]_4 ;

  wire \btn[3]_4 ;
  wire clk;
  wire d_reg_0;
  wire [0:0]p_0_in;
  wire p_8_out;

  FDRE d_reg
       (.C(clk),
        .CE(1'b1),
        .D(d_reg_0),
        .Q(p_8_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(\btn[3]_4 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
