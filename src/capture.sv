`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////
// Company: UTFSM
// Engineer: Jairo González
// 
// Create Date: 21.06.2020 23:31:30
// Design Name: capture
// Module Name: capture
// Project Name: test
// Target Devices: Trenz FPGA
// Tool Versions: Vivado 2019.1
// Description: Capture pulses at B16_L22_P, and emits them at LED 3.
//  LED: LED3
//  CLK: sys diff clk at 100MHz
//  Behavior: Every pulse captured is emited with 1 sec delay and 1 sec
//  duration.
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////


module  capture(
            input   logic   clk_in1_p,clk_in1_n,
            // input   logic   reset,
            input   logic   B16_L22_P, //E22 A19
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

    logic synchronized_pulse = 'b0;

    posedge_detector sync_inst(
        .clk(clk),
        .rst(),
        .signal(B16_L22_P),
        .detection(synchronized_pulse)
    );

    //Led Counter Logic
    logic [31:0] counter = 'd0;
    logic [31:0] counter_next = 'd0;
    always_comb begin
        if (pulse_counter == 'd0)
            counter_next =  'd0;
        else if (counter == 'd1_500_000_000)
            counter_next =  'd0;
        else
            counter_next = counter + 'd1;
    end

    //Pulse Counter Logic
    logic [31:0] pulse_counter = 'd0;
    logic [31:0] pulse_counter_next = 'd0;
    always_comb begin
        if (synchronized_pulse)
            pulse_counter_next =  pulse_counter + 'd1;
        else
            pulse_counter_next = pulse_counter;
    end


    // LED Logic
    logic B15_IO25_next = 'd1;
    always_comb begin
        if ((counter < 'd1_000_000_000)&&(pulse_counter>'d0))
            B15_IO25_next = 'd1;
        else if ((counter == 'd1_000_000_000)&&(pulse_counter>'d0)) begin
            B15_IO25_next = 'd0;
            pulse_counter_next = pulse_counter - 'd1;
        end
        else
            B15_IO25_next = 'd0;
    end


    //FF
    always_ff @ (posedge clk) begin
        counter <= counter_next;
        pulse_counter <= pulse_counter_next;
        B15_IO25 <= B15_IO25_next;
    end

endmodule
