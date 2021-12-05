function cellEffPow = cellEff(cell)

edge_length = cell(1);
voc = cell(2);
isc = cell(3);
fill_factor = cell(4);

area = edge_length^2/100;
power = voc * isc * fill_factor;
efficiency = power / area / 100;

cellEffPow = [efficiency,power];

%%%((156, 210), (320, 600), (9.7, 10.7), (70, 87))

return 