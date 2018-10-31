function dec_value = hex_to_dec_single(x)
x;
size(x);
if(x == '00000000')
    bin_value = zeros(1,32);
else 
    bin_value = hexToBinaryVector(x);
end 
bit_counter = 0; 

if(length(bin_value) < 32)
    while (bit_counter <= 32-length(bin_value)) 
        bin_value = [0, bin_value]; 
        bit_counter = bit_counter + 1; 
    end 
end 


if(bin_value(1) == 0) 
    sign = 1; 
else 
    sign = -1; 
end 

calc_value = []; 

for i = 2:1:9
    calc_value = [calc_value,bin_value(i)*(2^(8-(i-1)))]; 
end 

sum_exponent = sum(calc_value); 
dec_part_a = 2^(sum_exponent-127); 

calc_value_2 = []; 

for i = 10:1:32
    i;
    calc_value_2 = [calc_value_2,bin_value(i)*(2^(-1*(i-9)))]; 
end 

sum_mantissa = sum(calc_value_2); 
dec_part_b = sum_mantissa + 1; 

dec_value = sign*dec_part_a*dec_part_b; 

