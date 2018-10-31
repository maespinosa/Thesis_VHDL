function hex_value = hex_convert_single(x)

integer = x - mod(abs(x),1);  
mantissa =  mod(abs(x),1); 
denominator = 2; 
bin_array = []; 
mantissa_bin_array = []; 
exp_bin_array = [];
bit_field = []; 

%Calculate the Sign bit

if(x >= 0) 
    sign_bit = 0; 
else 
    sign_bit = 1; 
end 

%Calculate Binary of integer if greater than 0
if(integer ~=0)
    while(integer ~= 1)
        bin_value = mod(integer,2);
        bin_array = [bin_array, bin_value]; 
        if(bin_value == 0) 
            numerator = integer/denominator; 
            integer = numerator; 
        else 
            numerator = (integer-bin_value)/2; 
            integer = numerator;
        end
    end 

    bin_array = [bin_array, 1];
    bin_array = fliplr(bin_array); 
else 
    bin_array = [0, bin_array]; 
end 

%Calculate Fractional bits if greater than zero
bit_counter = 32; 

if(mantissa > 0) 
    while(bit_counter ~= 0) 
        mantissa = mantissa*2; 
        if(mantissa >=1) 
            bit_value = 1;
            mantissa = mantissa - 1; 
        else 
            bit_value = 0; 
        end 
        mantissa_bin_array = [mantissa_bin_array, bit_value]; 
        bit_counter = bit_counter - 1;
    end 
else 
    mantissa_bin_array = zeros(1,32);
end 

% Find the exponent from the integer bit array
bit_counter = 1; %length(bin_array); 
exp_found = 0; 
exponent = 0; 

while(exp_found == 0 && bit_counter ~= length(bin_array))%0) 
    if(bin_array(bit_counter) == 1) 
        exponent = length(bin_array)-bit_counter 
        exp_found = 1; 
    else 
        bit_counter = bit_counter + 1; 
        exp_found = 0; 
    end 
end

% Find the exponent from the mantissa bit array
if(exponent == 0 && bin_array(end) == 0 && exp_found == 0)
    bit_counter = 1; 
    while(exp_found == 0 && bit_counter ~= length(mantissa_bin_array))
        if(mantissa_bin_array(bit_counter) == 1) 
            exponent = -1*bit_counter; 
            exp_found = 1; 
        else 
            bit_counter = bit_counter + 1; 
            exp_found = 0; 
        end 
    end
end 

% Calculate the Floating Point Exponent Field value 
exponent_value = 127+exponent

while(exponent_value ~= 1)
    exp_bin_value = mod(exponent_value,2);
    exp_bin_array = [exp_bin_array, exp_bin_value]; 
    if(exp_bin_value == 0) 
        numerator = exponent_value/denominator; 
        exponent_value = numerator; 
    else 
        numerator = (exponent_value-exp_bin_value)/2; 
        exponent_value = numerator;
    end
end 

exp_bin_array = [exp_bin_array, 1];

exp_bin_array = fliplr(exp_bin_array); 

pad_length = (8-length(exp_bin_array))-1; 

for i=0:1:pad_length 
    exp_bin_array = [0,exp_bin_array]; 
end 


bit_field = [bin_array, mantissa_bin_array]; 

% 
bit_counter = 1; 
exp_found = 0; 
mantissa_bits = []; 
mantissa_done = 0; 

while(mantissa_done == 0 && bit_counter <= length(bit_field)) 
    if(bit_field(bit_counter) == 1) 
      
       mantissa_done = 1;  
       mantissa_bits = bit_field(bit_counter+1:end); 
        
    else 
        bit_counter = bit_counter + 1; 
        mantissa_done = 0; 
    end 
end

exp_sign_length = length(exp_bin_array) + 1; 

final_bin_value = []; 
final_bin_value = [sign_bit,exp_bin_array,mantissa_bits(1:32-exp_sign_length)]; 

hex_value = binaryVectorToHex(final_bin_value); 

    
    
        
        