module user_project_wrapper (user_clock2,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    vssa2,
    vdda2,
    vssa1,
    vdda1,
    vssd2,
    vccd2,
    vssd1,
    vccd1,
    analog_io,
    io_in,
    io_oeb,
    io_out,
    la_data_in,
    la_data_out,
    la_oenb,
    user_irq,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
 input user_clock2;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 input vssa2;
 input vdda2;
 input vssa1;
 input vdda1;
 input vssd2;
 input vccd2;
 input vssd1;
 input vccd1;
 inout [28:0] analog_io;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [127:0] la_data_in;
 output [127:0] la_data_out;
 input [127:0] la_oenb;
 output [2:0] user_irq;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;


 openGFX430 GFX430 (.dbg_freeze_i(wbs_cyc_i),
    .irq_gfx_o(user_irq[0]),
    .lt24_cs_n_o(io_oeb[0]),
    .lt24_d_en_o(io_oeb[4]),
    .lt24_on_o(io_oeb[6]),
    .lt24_rd_n_o(io_oeb[1]),
    .lt24_reset_n_o(io_oeb[5]),
    .lt24_rs_o(io_oeb[3]),
    .lt24_wr_n_o(io_oeb[2]),
    .lut_ram_cen_o(la_data_out[45]),
    .lut_ram_wen_o(la_data_out[44]),
    .mclk(wb_clk_i),
    .per_en_i(wbs_stb_i),
    .puc_rst(wb_rst_i),
    .vccd1(vccd1),
    .vid_ram_cen_o(la_data_out[18]),
    .vid_ram_wen_o(la_data_out[17]),
    .vssd1(vssd1),
    .lt24_d_i({wbs_dat_i[31],
    wbs_dat_i[30],
    wbs_dat_i[29],
    wbs_dat_i[28],
    wbs_dat_i[27],
    wbs_dat_i[26],
    wbs_dat_i[25],
    wbs_dat_i[24],
    wbs_dat_i[23],
    wbs_dat_i[22],
    wbs_dat_i[21],
    wbs_dat_i[20],
    wbs_dat_i[19],
    wbs_dat_i[18],
    wbs_dat_i[17],
    wbs_dat_i[16]}),
    .lt24_d_o({io_out[15],
    io_out[14],
    io_out[13],
    io_out[12],
    io_out[11],
    io_out[10],
    io_out[9],
    io_out[8],
    io_out[7],
    io_out[6],
    io_out[5],
    io_out[4],
    io_out[3],
    io_out[2],
    io_out[1],
    io_out[0]}),
    .lut_ram_addr_o({la_data_out[43],
    la_data_out[42],
    la_data_out[41],
    la_data_out[40],
    la_data_out[39],
    la_data_out[38],
    la_data_out[37],
    la_data_out[36],
    la_data_out[35]}),
    .lut_ram_din_o({la_data_out[61],
    la_data_out[60],
    la_data_out[59],
    la_data_out[58],
    la_data_out[57],
    la_data_out[56],
    la_data_out[55],
    la_data_out[54],
    la_data_out[53],
    la_data_out[52],
    la_data_out[51],
    la_data_out[50],
    la_data_out[49],
    la_data_out[48],
    la_data_out[47],
    la_data_out[46]}),
    .lut_ram_dout_i({la_data_in[15],
    la_data_in[14],
    la_data_in[13],
    la_data_in[12],
    la_data_in[11],
    la_data_in[10],
    la_data_in[9],
    la_data_in[8],
    la_data_in[7],
    la_data_in[6],
    la_data_in[5],
    la_data_in[4],
    la_data_in[3],
    la_data_in[2],
    la_data_in[1],
    la_data_in[0]}),
    .per_addr_i({wbs_adr_i[13],
    wbs_adr_i[12],
    wbs_adr_i[11],
    wbs_adr_i[10],
    wbs_adr_i[9],
    wbs_adr_i[8],
    wbs_adr_i[7],
    wbs_adr_i[6],
    wbs_adr_i[5],
    wbs_adr_i[4],
    wbs_adr_i[3],
    wbs_adr_i[2],
    wbs_adr_i[1],
    wbs_adr_i[0]}),
    .per_din_i({wbs_dat_i[15],
    wbs_dat_i[14],
    wbs_dat_i[13],
    wbs_dat_i[12],
    wbs_dat_i[11],
    wbs_dat_i[10],
    wbs_dat_i[9],
    wbs_dat_i[8],
    wbs_dat_i[7],
    wbs_dat_i[6],
    wbs_dat_i[5],
    wbs_dat_i[4],
    wbs_dat_i[3],
    wbs_dat_i[2],
    wbs_dat_i[1],
    wbs_dat_i[0]}),
    .per_dout_o({io_out[31],
    io_out[30],
    io_out[29],
    io_out[28],
    io_out[27],
    io_out[26],
    io_out[25],
    io_out[24],
    io_out[23],
    io_out[22],
    io_out[21],
    io_out[20],
    io_out[19],
    io_out[18],
    io_out[17],
    io_out[16]}),
    .per_we_i({wbs_sel_i[0],
    wbs_we_i}),
    .vid_ram_addr_o({la_data_out[16],
    la_data_out[15],
    la_data_out[14],
    la_data_out[13],
    la_data_out[12],
    la_data_out[11],
    la_data_out[10],
    la_data_out[9],
    la_data_out[8],
    la_data_out[7],
    la_data_out[6],
    la_data_out[5],
    la_data_out[4],
    la_data_out[3],
    la_data_out[2],
    la_data_out[1],
    la_data_out[0]}),
    .vid_ram_din_o({la_data_out[34],
    la_data_out[33],
    la_data_out[32],
    la_data_out[31],
    la_data_out[30],
    la_data_out[29],
    la_data_out[28],
    la_data_out[27],
    la_data_out[26],
    la_data_out[25],
    la_data_out[24],
    la_data_out[23],
    la_data_out[22],
    la_data_out[21],
    la_data_out[20],
    la_data_out[19]}),
    .vid_ram_dout_i({wbs_dat_i[31],
    wbs_dat_i[30],
    wbs_dat_i[29],
    wbs_dat_i[28],
    wbs_dat_i[27],
    wbs_dat_i[26],
    wbs_dat_i[25],
    wbs_dat_i[24],
    wbs_dat_i[23],
    wbs_dat_i[22],
    wbs_dat_i[21],
    wbs_dat_i[20],
    wbs_dat_i[19],
    wbs_dat_i[18],
    wbs_dat_i[17],
    wbs_dat_i[16]}));
endmodule
