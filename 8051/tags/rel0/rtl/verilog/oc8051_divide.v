//////////////////////////////////////////////////////////////////////
//// 								  ////
//// divide for 8051 Core 				  	  ////
//// 								  ////
//// This file is part of the 8051 cores project 		  ////
//// http://www.opencores.org/cores/8051/ 			  ////
//// 								  ////
//// Description 						  ////
//// Implementation of division used in alu.v	 		  ////
//// 								  ////
//// To Do: 							  ////
////  Nothing							  ////
//// 								  ////
//// Author(s): 						  ////
//// - Simon Teran, simont@opencores.org 			  ////
//// 								  ////
//////////////////////////////////////////////////////////////////////
//// 								  ////
//// Copyright (C) 2001 Authors and OPENCORES.ORG 		  ////
//// 								  ////
//// This source file may be used and distributed without 	  ////
//// restriction provided that this copyright statement is not 	  ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
//// 								  ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version. 						  ////
//// 								  ////
//// This source is distributed in the hope that it will be 	  ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR 	  ////
//// PURPOSE. See the GNU Lesser General Public License for more  ////
//// details. 							  ////
//// 								  ////
//// You should have received a copy of the GNU Lesser General 	  ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml 			  ////
//// 								  ////
//////////////////////////////////////////////////////////////////////
//
// ver: 1
//

// synopsys translate_off
`include "oc8051_timescale.v"
// synopsys translate_on

module oc8051_divide (src1, src2, des1, des2, desOv);
//
// this module is part of alu
// src1         (in)  first operand
// src2         (in)  second operand
// des1         (out) first result
// des2         (out) second result
// desOv        (out) Overflow output
//

input [7:0] src1, src2;
output desOv;
output [7:0] des1, des2;
reg desOv; reg [7:0] des1, des2;
reg [8:0] div1,div2;

always @(src1 or src2)
begin
      if (src2==8'b0000_0000) begin
        des1=8'bxxxx_xxxx;
        des2=8'bxxxx_xxxx;
        desOv=1'b1;
      end
      else if (src1==src2) begin
        des1=8'b0000_0001;
        des2=8'b0000_0000;
        desOv=1'b0;
      end
      else if (src1<src2) begin
        des1=8'b0000_0000;
        des2=src1;
        desOv=1'b0;
      end
      else begin
        des1=src1;
        des2=8'b0000_0000;

        div2={1'b0,src2};

// begin loop
//loop 0
        des2={des2[6:0],des1[7]};
        des1={des1[6:0], 1'b0};
        div1={1'b1, des2};
        div1= div1 - div2;

        if (div1[8]==1'b1) begin
          des1[0]= 1'b1;
          des2=div1[7:0];
        end

//loop 1
        des2={des2[6:0],des1[7]};
        des1={des1[6:0], 1'b0};
        div1={1'b1, des2};
        div1= div1 - div2;

        if (div1[8]==1'b1) begin
          des1[0]= 1'b1;
          des2=div1[7:0];
        end
//loop 2
        des2={des2[6:0],des1[7]};
        des1={des1[6:0], 1'b0};
        div1={1'b1, des2};
        div1= div1 - div2;

        if (div1[8]==1'b1) begin
          des1[0]= 1'b1;
          des2=div1[7:0];
        end
//loop 3
        des2={des2[6:0],des1[7]};
        des1={des1[6:0], 1'b0};
        div1={1'b1, des2};
        div1= div1 - div2;

        if (div1[8]==1'b1) begin
          des1[0]= 1'b1;
          des2=div1[7:0];
        end
//loop 4
        des2={des2[6:0],des1[7]};
        des1={des1[6:0], 1'b0};
        div1={1'b1, des2};
        div1= div1 - div2;

        if (div1[8]==1'b1) begin
          des1[0]= 1'b1;
          des2=div1[7:0];
        end
//loop 5
        des2={des2[6:0],des1[7]};
        des1={des1[6:0], 1'b0};
        div1={1'b1, des2};
        div1= div1 - div2;

        if (div1[8]==1'b1) begin
          des1[0]= 1'b1;
          des2=div1[7:0];
        end
//loop 6
        des2={des2[6:0],des1[7]};
        des1={des1[6:0], 1'b0};
        div1={1'b1, des2};
        div1= div1 - div2;

        if (div1[8]==1'b1) begin
          des1[0]= 1'b1;
          des2=div1[7:0];
        end
//loop 7
        des2={des2[6:0],des1[7]};
        des1={des1[6:0], 1'b0};
        div1={1'b1, des2};
        div1= div1 - div2;

        if (div1[8]==1'b1) begin
          des1[0]= 1'b1;
          des2=div1[7:0];
        end


// end loop
          desOv=1'b0;
      end
end

endmodule
