function resistance = resistance(cell, module, ribbon, busbar)
    
    ribbon_resistivity = ribbon(3);
    cell_distance = module(6);
    edge_length = cell(1);
    ribbon_width = ribbon(2);
    ribbon_thickness = ribbon(1);
    cell_number = module(2);
    busbar_number = cell(5);
    series_resistance = cell(6);
    busbar_total_resitance = busbar(3);

    resistance_bw_cells = ribbon_resistivity*(cell_distance+edge_length*2/1000)/(ribbon_width * ribbon_thickness);
    series_ribbon_resistance_bw_cell_module = resistance_bw_cells*cell_number /busbar_number;
    module_cell_series_res = cell_number * series_resistance;
    module_total_resistance = series_ribbon_resistance_bw_cell_module + module_cell_series_res + busbar_total_resitance;
    module_ribbon_resistance_between_cell = (resistance_bw_cells*cell_number/busbar_number-(ribbon_resistivity*cell_distance/ribbon_thickness* ribbon_width *busbar_number))*2/3;
    total_cell_series_resistance = series_resistance*cell_number;

    resistance = [resistance_bw_cells,series_ribbon_resistance_bw_cell_module,module_cell_series_res,module_total_resistance,module_ribbon_resistance_between_cell,total_cell_series_resistance];

return