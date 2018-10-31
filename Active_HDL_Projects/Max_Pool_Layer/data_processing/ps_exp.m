function[y,hex_fact] = ps_exp(x,n) 

series = zeros(n,1); 
hex_equivalent = []; 

for i = 1:1:n 
    series(i) = x^(i-1) / factorial(i-1); 
    hex_equivalent = [hex_equivalent; dec_to_hex_single(1/factorial(i-1))]; 
    
end 

y = sum(series); 
hex_fact = hex_equivalent; 

