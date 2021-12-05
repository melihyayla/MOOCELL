function moduleEffPow = moduleEff(module)

fill_factor = module(5);
voc = module(1);
isc = module(2);
size = module(4);

modulePow = fill_factor*100/voc*isc;
moduleEff = (modulePow/(size/10))/10;

moduleEffPow = [moduleEff,modulePow];

return