function busbar = busbar(edge_resistance, middle_resistance)

    total_resistance = edge_resistance + middle_resistance;
    busbar = [edge_resistance,middle_resistance, total_resistance];
    
return