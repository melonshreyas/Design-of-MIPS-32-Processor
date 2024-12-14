###############################################################################
# Change list, formatted for IC Compiler
#
# 
#
###############################################################################
current_instance
current_instance {G2_Datapath}
size_cell {HFSBUF_277_5} {SAEDLVT14_BUF_S_1}
current_instance
current_instance {G2_Datapath/m1}
insert_buffer [get_pins {Bus_reg_7_/Q}] SAEDLVT14_BUF_2 -new_net_names {net_PTECO_DRC_NET1} -new_cell_names {U_PTECO_DRC_BUF1}
insert_buffer [get_pins {Bus_reg_2_/Q}] SAEDLVT14_BUF_2 -new_net_names {net_PTECO_DRC_NET2} -new_cell_names {U_PTECO_DRC_BUF2}
insert_buffer [get_pins {Bus_reg_5_/Q}] SAEDLVT14_BUF_2 -new_net_names {net_PTECO_DRC_NET3} -new_cell_names {U_PTECO_DRC_BUF3}
insert_buffer [get_pins {Bus_reg_1_/Q}] SAEDLVT14_BUF_2 -new_net_names {net_PTECO_DRC_NET4} -new_cell_names {U_PTECO_DRC_BUF4}
insert_buffer [get_pins {Bus_reg_4_/Q}] SAEDLVT14_BUF_2 -new_net_names {net_PTECO_DRC_NET5} -new_cell_names {U_PTECO_DRC_BUF5}
insert_buffer [get_pins {Bus_reg_3_/Q}] SAEDLVT14_BUF_2 -new_net_names {net_PTECO_DRC_NET6} -new_cell_names {U_PTECO_DRC_BUF6}
current_instance
