`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2020 23:31:30
// Design Name: 
// Module Name: blink_led
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Makes FPGA LED blink.
//  LED: LED3
//  CLK: sys diff clk at 100MHz
//  Behavior: 5 sec on, 5 sec off
//
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////


module  blink_led(
            input   logic   clk_in1_p,clk_in1_n,
            // input   logic   reset,
            // input   logic   B16_L22_P, //E22 A19
            // input   logic   B16_L22_N, //D22 A18
            // output  logic   B15_IO0 //J16 LED 4
            output  logic   B15_IO25 //M17 LED 3
        );

    // logic rst = ~reset;
    logic clk;

    clk_wiz_0   instance_name (
                // Clock out ports
                .clk_out1(clk),     // output clk_out1
                // Status and control signals
                .reset(), // input reset
                .locked(locked),       // output locked
                // Clock in ports
                .clk_in1_p(clk_in1_p),    // input clk_in1_p
                .clk_in1_n(clk_in1_n)    // input clk_in1_n
    );


    //Counter Logic
    logic [31:0] counter = 'd0;
    logic [31:0] counter_next = 'd0;
    always_comb begin
        if (counter == 'd1_000_000_000)
            counter_next =  'd0;
        else
            counter_next = counter + 'd1;
    end


    // LED Logic
    logic B15_IO25_next = 'd1;
    always_comb begin
        if (counter<'d500_000_000)
            B15_IO25_next = 'd1;
        else
            B15_IO25_next = 'd0;
    end


    //FF
    always_ff @ (posedge clk) begin
        counter <= counter_next;
        B15_IO25 <= B15_IO25_next;
    end

    


    // // //Testing inputs as ttl signals
    // assign B15_IO0 = B16_L22_P;
    // assign B15_IO25 = B16_L22_N;

    //Testing inputs as LVDS 1.8V signals, with ttl output:
    // logic ttl_output;
    // // IBUFDS: Differential Input Buffer
    // // 7 Series
    // // Xilinx HDL Libraries Guide, version 13.4
    // IBUFDS #(
    //     .DIFF_TERM("FALSE"), // Differential Termination
    //     .IBUF_LOW_PWR("TRUE"), // Low power="TRUE", Highest performance="FALSE"
    //     .IOSTANDARD("DEFAULT") // Specify the input I/O standard
    //     ) IBUFDS_inst (
    //     .O(ttl_output), // Buffer output
    //     .I(B16_L22_P), // Diff_p buffer input (connect directly to top-level port)
    //     .IB(B16_L22_N) // Diff_n buffer input (connect directly to top-level port)
    // );

    // End of IBUFDS_inst instantiation

    // //FSM
    // enum logic [1:0] {WAIT, COUNTING, SHOWING} state, state_next;
    // logic [31:0] counter = 'd0;
    // logic [31:0] counter_next = 'd0;
    // always_comb begin
    //     state_next = WAIT;
    //     case (state)
    //         WAIT: begin 
    //                 if (ttl_output)
    //                     state_next = COUNTING;
    //         end
    //         COUNTING: begin
    //                 if (ttl_output)
    //                     state_next = COUNTING;
    //                 else
    //                     state_next = SHOWING;
    //         end  
    //         SHOWING: begin  
    //                 if (counter != 0)
    //                     state_next = SHOWING;
    //         end
    //         default: state_next = WAIT ;
    //     endcase    
    // end

    // always_ff @ (posedge clk) begin
    //     if (rst)
    //         state <= WAIT;
    //     else
    //         state <= state_next;
    // end


    // //COUNTER
    // always_comb begin
    //     case (state)
    //         WAIT:   counter_next = 'd0;
    //         COUNTING:   counter_next =  counter +  'd100_000_000;
    //         SHOWING: counter_next = counter - 'd1;
    //         default: counter_next = 'd0;
    //     endcase
    // end

    // always_ff @ (posedge clk) begin
    //     if (rst)
    //         counter <= 'd0;
    //     else
    //         counter <= counter_next;
    // end

    // //OUTPUT
    // always_comb begin
    //     if (state == SHOWING)
    //         B15_IO0 = 'd1;
    //     else
    //         B15_IO0 = 'd0;
    // end

endmodule
