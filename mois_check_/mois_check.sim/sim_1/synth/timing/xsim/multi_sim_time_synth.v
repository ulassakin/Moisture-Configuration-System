// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun May 12 12:47:41 2024
// Host        : UlasLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/ulass/moisture_check/moisture_check.sim/sim_1/synth/timing/xsim/multi_sim_time_synth.v
// Design      : ssd_top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* c_clkfreq = "100000000" *) 
(* NotValidForBitStream *)
module ssd_top
   (clk,
    bcd_i_1,
    bcd_i_2,
    ssd_o1,
    anodes_o);
  input clk;
  input [3:0]bcd_i_1;
  input [3:0]bcd_i_2;
  output [7:0]ssd_o1;
  output [3:0]anodes_o;

  wire [0:0]anodes;
  wire \anodes[0]_i_1_n_0 ;
  wire \anodes[1]_i_1_n_0 ;
  wire \anodes[1]_i_2_n_0 ;
  wire [3:0]anodes_o;
  wire \anodes_reg_n_0_[0] ;
  wire [3:0]bcd_i_1;
  wire [3:0]bcd_i_1_IBUF;
  wire [3:0]bcd_i_2;
  wire [3:0]bcd_i_2_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire p_0_in;
  wire [16:0]p_1_in;
  wire [7:0]ssd_o1;
  wire \ssd_o1[1]_i_1_n_0 ;
  wire \ssd_o1[1]_i_2_n_0 ;
  wire \ssd_o1[2]_i_1_n_0 ;
  wire \ssd_o1[2]_i_2_n_0 ;
  wire \ssd_o1[3]_i_1_n_0 ;
  wire \ssd_o1[3]_i_2_n_0 ;
  wire \ssd_o1[4]_i_1_n_0 ;
  wire \ssd_o1[4]_i_2_n_0 ;
  wire \ssd_o1[5]_i_1_n_0 ;
  wire \ssd_o1[5]_i_2_n_0 ;
  wire \ssd_o1[6]_i_1_n_0 ;
  wire \ssd_o1[6]_i_2_n_0 ;
  wire \ssd_o1[7]_i_1_n_0 ;
  wire \ssd_o1[7]_i_2_n_0 ;
  wire [7:1]ssd_o1_OBUF;
  wire [16:0]timer;
  wire \timer[16]_i_3_n_0 ;
  wire \timer[16]_i_4_n_0 ;
  wire \timer[16]_i_5_n_0 ;
  wire \timer_reg[12]_i_1_n_0 ;
  wire \timer_reg[12]_i_1_n_1 ;
  wire \timer_reg[12]_i_1_n_2 ;
  wire \timer_reg[12]_i_1_n_3 ;
  wire \timer_reg[16]_i_2_n_1 ;
  wire \timer_reg[16]_i_2_n_2 ;
  wire \timer_reg[16]_i_2_n_3 ;
  wire \timer_reg[4]_i_1_n_0 ;
  wire \timer_reg[4]_i_1_n_1 ;
  wire \timer_reg[4]_i_1_n_2 ;
  wire \timer_reg[4]_i_1_n_3 ;
  wire \timer_reg[8]_i_1_n_0 ;
  wire \timer_reg[8]_i_1_n_1 ;
  wire \timer_reg[8]_i_1_n_2 ;
  wire \timer_reg[8]_i_1_n_3 ;
  wire [3:3]\NLW_timer_reg[16]_i_2_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("multi_sim_time_synth.sdf",,,,"tool_control");
end
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \anodes[0]_i_1 
       (.I0(p_0_in),
        .I1(\timer[16]_i_3_n_0 ),
        .I2(\timer[16]_i_4_n_0 ),
        .I3(\timer[16]_i_5_n_0 ),
        .I4(\anodes[1]_i_2_n_0 ),
        .I5(\anodes_reg_n_0_[0] ),
        .O(\anodes[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \anodes[1]_i_1 
       (.I0(\anodes_reg_n_0_[0] ),
        .I1(\timer[16]_i_3_n_0 ),
        .I2(\timer[16]_i_4_n_0 ),
        .I3(\timer[16]_i_5_n_0 ),
        .I4(\anodes[1]_i_2_n_0 ),
        .I5(p_0_in),
        .O(\anodes[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \anodes[1]_i_2 
       (.I0(timer[10]),
        .I1(timer[2]),
        .I2(timer[7]),
        .O(\anodes[1]_i_2_n_0 ));
  OBUFT \anodes_o_OBUF[0]_inst 
       (.I(1'b0),
        .O(anodes_o[0]),
        .T(1'b1));
  OBUFT \anodes_o_OBUF[1]_inst 
       (.I(1'b0),
        .O(anodes_o[1]),
        .T(1'b1));
  OBUFT \anodes_o_OBUF[2]_inst 
       (.I(1'b0),
        .O(anodes_o[2]),
        .T(1'b1));
  OBUFT \anodes_o_OBUF[3]_inst 
       (.I(1'b0),
        .O(anodes_o[3]),
        .T(1'b1));
  FDRE #(
    .INIT(1'b0)) 
    \anodes_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\anodes[0]_i_1_n_0 ),
        .Q(\anodes_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \anodes_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\anodes[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  IBUF \bcd_i_1_IBUF[0]_inst 
       (.I(bcd_i_1[0]),
        .O(bcd_i_1_IBUF[0]));
  IBUF \bcd_i_1_IBUF[1]_inst 
       (.I(bcd_i_1[1]),
        .O(bcd_i_1_IBUF[1]));
  IBUF \bcd_i_1_IBUF[2]_inst 
       (.I(bcd_i_1[2]),
        .O(bcd_i_1_IBUF[2]));
  IBUF \bcd_i_1_IBUF[3]_inst 
       (.I(bcd_i_1[3]),
        .O(bcd_i_1_IBUF[3]));
  IBUF \bcd_i_2_IBUF[0]_inst 
       (.I(bcd_i_2[0]),
        .O(bcd_i_2_IBUF[0]));
  IBUF \bcd_i_2_IBUF[1]_inst 
       (.I(bcd_i_2[1]),
        .O(bcd_i_2_IBUF[1]));
  IBUF \bcd_i_2_IBUF[2]_inst 
       (.I(bcd_i_2[2]),
        .O(bcd_i_2_IBUF[2]));
  IBUF \bcd_i_2_IBUF[3]_inst 
       (.I(bcd_i_2[3]),
        .O(bcd_i_2_IBUF[3]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT6 #(
    .INIT(64'hBBBBB888BB8888BB)) 
    \ssd_o1[1]_i_1 
       (.I0(\ssd_o1[1]_i_2_n_0 ),
        .I1(\anodes_reg_n_0_[0] ),
        .I2(bcd_i_1_IBUF[0]),
        .I3(bcd_i_1_IBUF[1]),
        .I4(bcd_i_1_IBUF[3]),
        .I5(bcd_i_1_IBUF[2]),
        .O(\ssd_o1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFEEBEEEB)) 
    \ssd_o1[1]_i_2 
       (.I0(p_0_in),
        .I1(bcd_i_2_IBUF[3]),
        .I2(bcd_i_2_IBUF[1]),
        .I3(bcd_i_2_IBUF[2]),
        .I4(bcd_i_2_IBUF[0]),
        .O(\ssd_o1[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBB88BB8BBB888)) 
    \ssd_o1[2]_i_1 
       (.I0(\ssd_o1[2]_i_2_n_0 ),
        .I1(\anodes_reg_n_0_[0] ),
        .I2(bcd_i_1_IBUF[3]),
        .I3(bcd_i_1_IBUF[2]),
        .I4(bcd_i_1_IBUF[1]),
        .I5(bcd_i_1_IBUF[0]),
        .O(\ssd_o1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFEFAFFAE)) 
    \ssd_o1[2]_i_2 
       (.I0(p_0_in),
        .I1(bcd_i_2_IBUF[0]),
        .I2(bcd_i_2_IBUF[3]),
        .I3(bcd_i_2_IBUF[1]),
        .I4(bcd_i_2_IBUF[2]),
        .O(\ssd_o1[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8A80)) 
    \ssd_o1[3]_i_1 
       (.I0(\ssd_o1[3]_i_2_n_0 ),
        .I1(bcd_i_1_IBUF[3]),
        .I2(bcd_i_1_IBUF[1]),
        .I3(bcd_i_1_IBUF[2]),
        .I4(\anodes_reg_n_0_[0] ),
        .I5(bcd_i_1_IBUF[0]),
        .O(\ssd_o1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEFEFEFFFEF)) 
    \ssd_o1[3]_i_2 
       (.I0(p_0_in),
        .I1(bcd_i_2_IBUF[0]),
        .I2(\anodes_reg_n_0_[0] ),
        .I3(bcd_i_2_IBUF[2]),
        .I4(bcd_i_2_IBUF[1]),
        .I5(bcd_i_2_IBUF[3]),
        .O(\ssd_o1[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BB8BB88BB888)) 
    \ssd_o1[4]_i_1 
       (.I0(\ssd_o1[4]_i_2_n_0 ),
        .I1(\anodes_reg_n_0_[0] ),
        .I2(bcd_i_1_IBUF[1]),
        .I3(bcd_i_1_IBUF[3]),
        .I4(bcd_i_1_IBUF[0]),
        .I5(bcd_i_1_IBUF[2]),
        .O(\ssd_o1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFEEEEFBA)) 
    \ssd_o1[4]_i_2 
       (.I0(p_0_in),
        .I1(bcd_i_2_IBUF[3]),
        .I2(bcd_i_2_IBUF[0]),
        .I3(bcd_i_2_IBUF[2]),
        .I4(bcd_i_2_IBUF[1]),
        .O(\ssd_o1[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBB8B8888888B8)) 
    \ssd_o1[5]_i_1 
       (.I0(\ssd_o1[5]_i_2_n_0 ),
        .I1(\anodes_reg_n_0_[0] ),
        .I2(bcd_i_1_IBUF[1]),
        .I3(bcd_i_1_IBUF[0]),
        .I4(bcd_i_1_IBUF[2]),
        .I5(bcd_i_1_IBUF[3]),
        .O(\ssd_o1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFAFBEAEA)) 
    \ssd_o1[5]_i_2 
       (.I0(p_0_in),
        .I1(bcd_i_2_IBUF[2]),
        .I2(bcd_i_2_IBUF[3]),
        .I3(bcd_i_2_IBUF[0]),
        .I4(bcd_i_2_IBUF[1]),
        .O(\ssd_o1[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBB8B888B888)) 
    \ssd_o1[6]_i_1 
       (.I0(\ssd_o1[6]_i_2_n_0 ),
        .I1(\anodes_reg_n_0_[0] ),
        .I2(bcd_i_1_IBUF[3]),
        .I3(bcd_i_1_IBUF[1]),
        .I4(bcd_i_1_IBUF[0]),
        .I5(bcd_i_1_IBUF[2]),
        .O(\ssd_o1[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEFFEEAEA)) 
    \ssd_o1[6]_i_2 
       (.I0(p_0_in),
        .I1(bcd_i_2_IBUF[3]),
        .I2(bcd_i_2_IBUF[1]),
        .I3(bcd_i_2_IBUF[0]),
        .I4(bcd_i_2_IBUF[2]),
        .O(\ssd_o1[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B88B88)) 
    \ssd_o1[7]_i_1 
       (.I0(\ssd_o1[7]_i_2_n_0 ),
        .I1(\anodes_reg_n_0_[0] ),
        .I2(bcd_i_1_IBUF[3]),
        .I3(bcd_i_1_IBUF[0]),
        .I4(bcd_i_1_IBUF[1]),
        .I5(bcd_i_1_IBUF[2]),
        .O(\ssd_o1[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFEFEABBA)) 
    \ssd_o1[7]_i_2 
       (.I0(p_0_in),
        .I1(bcd_i_2_IBUF[1]),
        .I2(bcd_i_2_IBUF[2]),
        .I3(bcd_i_2_IBUF[0]),
        .I4(bcd_i_2_IBUF[3]),
        .O(\ssd_o1[7]_i_2_n_0 ));
  OBUF \ssd_o1_OBUF[0]_inst 
       (.I(1'b1),
        .O(ssd_o1[0]));
  OBUF \ssd_o1_OBUF[1]_inst 
       (.I(ssd_o1_OBUF[1]),
        .O(ssd_o1[1]));
  OBUF \ssd_o1_OBUF[2]_inst 
       (.I(ssd_o1_OBUF[2]),
        .O(ssd_o1[2]));
  OBUF \ssd_o1_OBUF[3]_inst 
       (.I(ssd_o1_OBUF[3]),
        .O(ssd_o1[3]));
  OBUF \ssd_o1_OBUF[4]_inst 
       (.I(ssd_o1_OBUF[4]),
        .O(ssd_o1[4]));
  OBUF \ssd_o1_OBUF[5]_inst 
       (.I(ssd_o1_OBUF[5]),
        .O(ssd_o1[5]));
  OBUF \ssd_o1_OBUF[6]_inst 
       (.I(ssd_o1_OBUF[6]),
        .O(ssd_o1[6]));
  OBUF \ssd_o1_OBUF[7]_inst 
       (.I(ssd_o1_OBUF[7]),
        .O(ssd_o1[7]));
  FDRE #(
    .INIT(1'b0)) 
    \ssd_o1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ssd_o1[1]_i_1_n_0 ),
        .Q(ssd_o1_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ssd_o1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ssd_o1[2]_i_1_n_0 ),
        .Q(ssd_o1_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ssd_o1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ssd_o1[3]_i_1_n_0 ),
        .Q(ssd_o1_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ssd_o1_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ssd_o1[4]_i_1_n_0 ),
        .Q(ssd_o1_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ssd_o1_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ssd_o1[5]_i_1_n_0 ),
        .Q(ssd_o1_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ssd_o1_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ssd_o1[6]_i_1_n_0 ),
        .Q(ssd_o1_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ssd_o1_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ssd_o1[7]_i_1_n_0 ),
        .Q(ssd_o1_OBUF[7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[0]_i_1 
       (.I0(timer[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \timer[16]_i_1 
       (.I0(\timer[16]_i_3_n_0 ),
        .I1(\timer[16]_i_4_n_0 ),
        .I2(\timer[16]_i_5_n_0 ),
        .I3(timer[10]),
        .I4(timer[2]),
        .I5(timer[7]),
        .O(anodes));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \timer[16]_i_3 
       (.I0(timer[15]),
        .I1(timer[9]),
        .I2(timer[0]),
        .I3(timer[4]),
        .I4(timer[8]),
        .I5(timer[5]),
        .O(\timer[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \timer[16]_i_4 
       (.I0(timer[3]),
        .I1(timer[12]),
        .I2(timer[14]),
        .I3(timer[6]),
        .O(\timer[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \timer[16]_i_5 
       (.I0(timer[16]),
        .I1(timer[11]),
        .I2(timer[1]),
        .I3(timer[13]),
        .O(\timer[16]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(timer[0]),
        .R(anodes));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(timer[10]),
        .R(anodes));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(timer[11]),
        .R(anodes));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(timer[12]),
        .R(anodes));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timer_reg[12]_i_1 
       (.CI(\timer_reg[8]_i_1_n_0 ),
        .CO({\timer_reg[12]_i_1_n_0 ,\timer_reg[12]_i_1_n_1 ,\timer_reg[12]_i_1_n_2 ,\timer_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[12:9]),
        .S(timer[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(timer[13]),
        .R(anodes));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(timer[14]),
        .R(anodes));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(timer[15]),
        .R(anodes));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[16]),
        .Q(timer[16]),
        .R(anodes));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timer_reg[16]_i_2 
       (.CI(\timer_reg[12]_i_1_n_0 ),
        .CO({\NLW_timer_reg[16]_i_2_CO_UNCONNECTED [3],\timer_reg[16]_i_2_n_1 ,\timer_reg[16]_i_2_n_2 ,\timer_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[16:13]),
        .S(timer[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(timer[1]),
        .R(anodes));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(timer[2]),
        .R(anodes));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(timer[3]),
        .R(anodes));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(timer[4]),
        .R(anodes));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timer_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\timer_reg[4]_i_1_n_0 ,\timer_reg[4]_i_1_n_1 ,\timer_reg[4]_i_1_n_2 ,\timer_reg[4]_i_1_n_3 }),
        .CYINIT(timer[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[4:1]),
        .S(timer[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(timer[5]),
        .R(anodes));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(timer[6]),
        .R(anodes));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(timer[7]),
        .R(anodes));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(timer[8]),
        .R(anodes));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timer_reg[8]_i_1 
       (.CI(\timer_reg[4]_i_1_n_0 ),
        .CO({\timer_reg[8]_i_1_n_0 ,\timer_reg[8]_i_1_n_1 ,\timer_reg[8]_i_1_n_2 ,\timer_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[8:5]),
        .S(timer[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(timer[9]),
        .R(anodes));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
