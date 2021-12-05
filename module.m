function module = module(cell,cellNumber,optical_loss,size,fill_factor,cell_distance)
    
cell_voc = cell(2);
cell_isc = cell(3);
        
moduleVoc = cell_voc*cellNumber;
moduleIsc = cell_isc*optical_loss;

module = [moduleVoc,moduleIsc,cellNumber,size,fill_factor,cell_distance];

return