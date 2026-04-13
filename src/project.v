/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_icell (
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    input  wire ena,
    input  wire clk,
    input  wire rst_n
);

    wire VPWR;
    wire VGND;

    // Map inputs
    wire Rn    = ui_in[0];
    wire Cn    = ui_in[1];
    wire Sn    = ui_in[2];
    wire Vbias = uio_in[0];

    wire Iout;

    // Your analog block
    icell uut (
        .VPWR(VPWR),
        .VGND(VGND),
        .Rn(Rn),
        .Cn(Cn),
        .Sn(Sn),
        .Vbias(Vbias),
        .Iout(Iout)
    );

    // Outputs
    assign uo_out[0] = Iout;

    // Defaults
    assign uo_out[7:1] = 7'b0;
    assign uio_out = 8'b0;
    assign uio_oe  = 8'b0;

endmodule
