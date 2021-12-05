function powerloss = powerloss(module,resistance,busbar)

module_isc = module(2);
module_ribbon_resistance_between_cell = resistance(5);
total_cell_series_resistance = resistance(6);
busbar_total_resistance = busbar(3);

power_loss_ribbons_bw_cells = module_isc^2*module_ribbon_resistance_between_cell;
power_loss_cell_series_resistance = module_isc^2*total_cell_series_resistance;
power_loss_busbar = module_isc*busbar_total_resistance;
module_total_power_loss = power_loss_ribbons_bw_cells+power_loss_cell_series_resistance+power_loss_busbar;

powerloss = [power_loss_ribbons_bw_cells,power_loss_cell_series_resistance,power_loss_busbar,module_total_power_loss];

return