################################################################################
#
# Created by icc2 write_floorplan on Tue Mar 22 16:25:00 2022
#
################################################################################


set _dirName__0 [file dirname [file normalize [info script]]]

################################################################################
# Rows
################################################################################

remove_site_arrays -all

remove_site_rows -all

################################################################################
# Pins
################################################################################

set __pins [get_terminals -quiet]
if {[sizeof_collection $__pins] > 0} {
set __termShapes [get_shapes -of_objects [get_terminals * -quiet] -quiet]
if {[sizeof_collection $__termShapes] > 0} {
remove_shapes $__termShapes
}
set __termVias [get_vias -of_objects [get_terminals * -quiet] -quiet]
if {[sizeof_collection $__termVias] > 0} {
remove_vias $__termVias
}
set __termShapePatterns [get_shape_patterns -of_objects [get_terminals * -quiet] -quiet]
if {[sizeof_collection $__termShapePatterns] > 0} {
remove_shape_patterns $__termShapePatterns
}
}

################################################################################
# Net shapes and vias
################################################################################

set __netshapes [get_shapes -quiet]
if {[sizeof_collection $__netshapes] > 0} {
remove_shapes $__netshapes
}

set __netShapePatterns [get_shape_patterns -quiet]
if {[sizeof_collection $__netShapePatterns] > 0} {
remove_shape_patterns $__netShapePatterns
}

set __vias [get_vias -quiet]
if {[sizeof_collection $__vias] > 0} {
remove_vias $__vias
}

################################################################################
# Read DEF
################################################################################

read_def  ${_dirName__0}/floorplan.def

################################################################################
# Voltage areas
################################################################################

remove_voltage_areas -all



################################################################################
# User attributes of voltage areas
################################################################################

################################################################################
# Site arrays
################################################################################

create_site_array -name unit_row -site unit -default -boundary { {10.0000 \
    10.0000} {21.3960 21.4000} } -flip_first_row true -flip_alternate_row true \
    -transparent false -direction horizontal -x_margin 0.0000 -y_margin 0.0000 \
    -core_offset { 10.0000 10.0000 } -aligned true

################################################################################
# User attributes of site arrays
################################################################################


################################################################################
# User attributes of site rows
################################################################################


################################################################################
# Keepouts
################################################################################


################################################################################
# User attributes of cells
################################################################################


################################################################################
# Bounds and user attributes of bound shapes
################################################################################

remove_bounds -all


################################################################################
# User attributes of bounds
################################################################################


################################################################################
# Pin guides
################################################################################

remove_pin_guides -all


################################################################################
# Route guides and their user attributes
################################################################################

remove_routing_guides -all



################################################################################
# Blockages
################################################################################

remove_placement_blockages -all

remove_routing_blockages -all

remove_pin_blockages -all

remove_shaping_blockages -all

################################################################################
# User attributes of blockages
################################################################################

################################################################################
# Module Boundaries
################################################################################

set hbCells [get_cells -quiet -filter hierarchy_type==boundary -hierarchical]
if [sizeof_collection $hbCells] {
   set_cell_hierarchy_type -type normal $hbCells
}


################################################################################
# I/O guides
################################################################################

remove_io_guides -all


################################################################################
# User attributes of I/O guides
################################################################################


################################################################################
# Edit groups
################################################################################

remove_edit_groups -all


################################################################################
# User attributes of edit groups
################################################################################


################################################################################
# PG regions
################################################################################

remove_pg_regions -all


################################################################################
# User attributes of pg regions
################################################################################


################################################################################
# Routing corridors
################################################################################

remove_routing_corridors -all


################################################################################
# Via Rules
################################################################################


################################################################################
# Routing directions
################################################################################

set_attribute -objects [get_layers M1] -name routing_direction -value horizontal
set_attribute -objects [get_layers M2] -name routing_direction -value vertical
set_attribute -objects [get_layers M3] -name routing_direction -value horizontal
set_attribute -objects [get_layers M4] -name routing_direction -value vertical
set_attribute -objects [get_layers M5] -name routing_direction -value horizontal
set_attribute -objects [get_layers M6] -name routing_direction -value vertical
set_attribute -objects [get_layers M7] -name routing_direction -value horizontal
set_attribute -objects [get_layers M8] -name routing_direction -value vertical
set_attribute -objects [get_layers M9] -name routing_direction -value horizontal
set_attribute -objects [get_layers MRDL] -name routing_direction -value vertical

################################################################################
# Tracks and their user attributes
################################################################################

remove_tracks -all

set track [create_track -layer M1 -count 425 -dir Y -space 0.0740 -coord 0.0100 \
    -bbox {{0.0000 0.0100 } {31.3960 31.3860 }}]
set track [create_track -layer M1 -count 425 -dir X -space 0.0740 -coord 0.0100 \
    -bbox {{0.0100 0.0000 } {31.3860 31.4000 }}]
set track [create_track -layer M2 -count 523 -dir Y -space 0.0600 -coord 0.0400 \
    -bbox {{0.0000 0.0400 } {31.3960 31.3600 }}]
set track [create_track -layer M2 -count 523 -dir X -space 0.0600 -coord 0.0400 \
    -bbox {{0.0400 0.0000 } {31.3600 31.4000 }}]
set track [create_track -layer M3 -count 425 -dir Y -space 0.0740 -coord 0.0100 \
    -bbox {{0.0000 0.0100 } {31.3960 31.3860 }}]
set track [create_track -layer M3 -count 425 -dir X -space 0.0740 -coord 0.0100 \
    -bbox {{0.0100 0.0000 } {31.3860 31.4000 }}]
set track [create_track -layer M4 -count 425 -dir Y -space 0.0740 -coord 0.0100 \
    -bbox {{0.0000 0.0100 } {31.3960 31.3860 }}]
set track [create_track -layer M4 -count 425 -dir X -space 0.0740 -coord 0.0100 \
    -bbox {{0.0100 0.0000 } {31.3860 31.4000 }}]
set track [create_track -layer M5 -count 262 -dir Y -space 0.1200 -coord 0.0400 \
    -bbox {{0.0000 0.0400 } {31.3960 31.3600 }}]
set track [create_track -layer M5 -count 262 -dir X -space 0.1200 -coord 0.0400 \
    -bbox {{0.0400 0.0000 } {31.3600 31.4000 }}]
set track [create_track -layer M6 -count 262 -dir Y -space 0.1200 -coord 0.0400 \
    -bbox {{0.0000 0.0400 } {31.3960 31.3600 }}]
set track [create_track -layer M6 -count 262 -dir X -space 0.1200 -coord 0.0400 \
    -bbox {{0.0400 0.0000 } {31.3600 31.4000 }}]
set track [create_track -layer M7 -count 262 -dir Y -space 0.1200 -coord 0.0400 \
    -bbox {{0.0000 0.0400 } {31.3960 31.3600 }}]
set track [create_track -layer M7 -count 262 -dir X -space 0.1200 -coord 0.0400 \
    -bbox {{0.0400 0.0000 } {31.3600 31.4000 }}]
set track [create_track -layer M8 -count 262 -dir Y -space 0.1200 -coord 0.0400 \
    -bbox {{0.0000 0.0400 } {31.3960 31.3600 }}]
set track [create_track -layer M8 -count 262 -dir X -space 0.1200 -coord 0.0400 \
    -bbox {{0.0400 0.0000 } {31.3600 31.4000 }}]
set track [create_track -layer M9 -count 262 -dir Y -space 0.1200 -coord 0.0400 \
    -bbox {{0.0000 0.0400 } {31.3960 31.3600 }}]
set track [create_track -layer M9 -count 262 -dir X -space 0.1200 -coord 0.0400 \
    -bbox {{0.0400 0.0000 } {31.3600 31.4000 }}]
set track [create_track -layer MRDL -count 52 -dir Y -space 0.6000 -coord \
    0.4000 -bbox {{0.0000 0.4000 } {31.3960 31.0000 }}]
set track [create_track -layer MRDL -count 52 -dir X -space 0.6000 -coord \
    0.4000 -bbox {{0.4000 0.0000 } {31.0000 31.4000 }}]

################################################################################
# Terminals/shapes/vias of ports with user attributes
################################################################################

################################################################################
# User attributes of ports
################################################################################


################################################################################
# Shapes and vias of net and their user attributes
################################################################################


################################################################################
# User attributes of routing rules
################################################################################

define_user_attribute -classes routing_rule -type string routing_direction

################################################################################
# User attributes of pins
################################################################################


################################################################################
# User attributes of nets
################################################################################


################################################################################
# User attributes of current block
################################################################################


