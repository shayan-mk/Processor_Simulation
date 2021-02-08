// megafunction wizard: %LPM_CLSHIFT%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: LPM_CLSHIFT 

// ============================================================
// File Name: ALU_ROTATE_RIGHT.v
// Megafunction Name(s):
// 			LPM_CLSHIFT
//
// Simulation Library Files(s):
// 			
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 13.0.1 Build 232 06/12/2013 SP 1 SJ Web Edition
// ************************************************************


//Copyright (C) 1991-2013 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


//lpm_clshift LPM_SHIFTTYPE="ROTATE" LPM_WIDTH=32 LPM_WIDTHDIST=5 data direction distance result
//VERSION_BEGIN 13.0 cbx_lpm_clshift 2013:06:12:18:03:43:SJ cbx_mgl 2013:06:12:18:05:10:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463


//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  ALU_ROTATE_RIGHT_lpm_clshift
	( 
	data,
	direction,
	distance,
	result) /* synthesis synthesis_clearbox=1 */;
	input   [31:0]  data;
	input   direction;
	input   [4:0]  distance;
	output   [31:0]  result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   direction;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [0:0]  direction_w;
	wire  [191:0]  sbit_w;

	assign
		direction_w = {direction},
		result = sbit_w[191:160],
		sbit_w = {((({32{(distance[4] & (~ direction_w))}} & {sbit_w[143:128], sbit_w[159:144]}) | ({32{(distance[4] & direction_w)}} & {sbit_w[143:128], sbit_w[159:144]})) | ({32{(~ distance[4])}} & sbit_w[159:128])), ((({32{(distance[3] & (~ direction_w))}} & {sbit_w[119:96], sbit_w[127:120]}) | ({32{(distance[3] & direction_w)}} & {sbit_w[103:96], sbit_w[127:104]})) | ({32{(~ distance[3])}} & sbit_w[127:96])), ((({32{(distance[2] & (~ direction_w))}} & {sbit_w[91:64], sbit_w[95:92]}) | ({32{(distance[2] & direction_w)}} & {sbit_w[67:64], sbit_w[95:68]})) | ({32{(~ distance[2])}} & sbit_w[95:64])), ((({32{(distance[1] & (~ direction_w))}} & {sbit_w[61:32], sbit_w[63:62]}) | ({32{(distance[1] & direction_w)}} & {sbit_w[33:32], sbit_w[63:34]})) | ({32{(~ distance[1])}} & sbit_w[63:32])), ((({32{(distance[0] & (~ direction_w))}} & {sbit_w[30:0], sbit_w[31]}) | ({32{(distance[0] & direction_w)}} & {sbit_w[0], sbit_w[31:1]})) | ({32{(~ distance[0])}} & sbit_w[31:0])), data};
endmodule //ALU_ROTATE_RIGHT_lpm_clshift
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module ALU_ROTATE_RIGHT (
	data,
	distance,
	result)/* synthesis synthesis_clearbox = 1 */;

	input	[31:0]  data;
	input	[4:0]  distance;
	output	[31:0]  result;

	wire [31:0] sub_wire0;
	wire  sub_wire1 = 1'h1;
	wire [31:0] result = sub_wire0[31:0];

	ALU_ROTATE_RIGHT_lpm_clshift	ALU_ROTATE_RIGHT_lpm_clshift_component (
				.data (data),
				.direction (sub_wire1),
				.distance (distance),
				.result (sub_wire0));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV GX"
// Retrieval info: PRIVATE: LPM_SHIFTTYPE NUMERIC "2"
// Retrieval info: PRIVATE: LPM_WIDTH NUMERIC "32"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "1"
// Retrieval info: PRIVATE: lpm_widthdist NUMERIC "5"
// Retrieval info: PRIVATE: lpm_widthdist_style NUMERIC "1"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: PRIVATE: port_direction NUMERIC "1"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_SHIFTTYPE STRING "ROTATE"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_CLSHIFT"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "32"
// Retrieval info: CONSTANT: LPM_WIDTHDIST NUMERIC "5"
// Retrieval info: USED_PORT: data 0 0 32 0 INPUT NODEFVAL "data[31..0]"
// Retrieval info: USED_PORT: distance 0 0 5 0 INPUT NODEFVAL "distance[4..0]"
// Retrieval info: USED_PORT: result 0 0 32 0 OUTPUT NODEFVAL "result[31..0]"
// Retrieval info: CONNECT: @data 0 0 32 0 data 0 0 32 0
// Retrieval info: CONNECT: @direction 0 0 0 0 VCC 0 0 0 0
// Retrieval info: CONNECT: @distance 0 0 5 0 distance 0 0 5 0
// Retrieval info: CONNECT: result 0 0 32 0 @result 0 0 32 0
// Retrieval info: GEN_FILE: TYPE_NORMAL ALU_ROTATE_RIGHT.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL ALU_ROTATE_RIGHT.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL ALU_ROTATE_RIGHT.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL ALU_ROTATE_RIGHT.bsf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL ALU_ROTATE_RIGHT_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL ALU_ROTATE_RIGHT_bb.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL ALU_ROTATE_RIGHT_syn.v TRUE
