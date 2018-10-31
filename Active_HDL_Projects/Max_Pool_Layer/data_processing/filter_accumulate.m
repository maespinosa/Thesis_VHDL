function [dec_data, hex_data] = filter_accumulate(a,b,c,d,e,f,g,h,i,j,k)

dec_data = hex_to_dec_single(a) + hex_to_dec_single(b) + hex_to_dec_single(c) + hex_to_dec_single(d) + hex_to_dec_single(e) + hex_to_dec_single(f) + hex_to_dec_single(g) + hex_to_dec_single(h) + hex_to_dec_single(i) + hex_to_dec_single(j) + hex_to_dec_single(k);
hex_data = dec_to_hex_single(dec_data); 