fclose('all'); 
clear all; 
close all; 

W1_file = fopen('.\W1.bin');

%% Convert W1 Data
disp('Converting W1 data')

% Essential Parameters 
num_filters = 96; 
num_channels = 3; 
height = 11; 
width = 11; 

W1_read_single = fread(W1_file,[num_filters*num_channels*height*width,1],'double');
W1_single = zeros(height,width,num_channels,num_filters);

Hex_W1_read_single = []; 
for i=1:1:length(W1_read_single)
    Hex_W1_read_single = [Hex_W1_read_single; dec_to_hex_single(W1_read_single(i))];
    Hex_W1_read_single(i,:) = [Hex_W1_read_single(i,1:4),'0000'];
    W1_read_single(i) = hex_to_dec_single(Hex_W1_read_single(i,:)); 
end





index = 1; 

for filters = 1:1:num_filters 
    for channels = 1:1:num_channels
        for HH = 1:1:width%filters = 1:1:num_filters %channels = 1:1:num_channels
            for WW = 1:1:width%channels = 1:1:num_channels
                W1_single(HH,WW,channels,filters) = W1_read_single(index,1); 
                index = index + 1; 
            end
        end 
    end 
end 

fclose('all');


First_kernel = single(W1_single(1:11,1:11,1,1));
First_kernel_permute = permute(First_kernel,[2,1]); 
First_kernel_reshape = reshape(First_kernel_permute,[11*11,1]); 
Hex_First_kernel = []; 
for i = 1:1:length(First_kernel_reshape)
    Hex_First_kernel = [Hex_First_kernel; dec_to_hex_single(First_kernel_reshape(i))];
    Hex_First_kernel(i,:) = [Hex_First_kernel(i,1:4),'0000']; 
    First_kernel_reshape(i) = hex_to_dec_single(Hex_First_kernel(i,:)); 
end 
First_kernel = permute(reshape(First_kernel_reshape, [11,11]),[2,1]);  
    


Second_kernel = single(W1_single(1:11,1:11,2,1));
Second_kernel_permute = permute(Second_kernel,[2,1]); 
Second_kernel_reshape = reshape(Second_kernel_permute,[11*11,1]); 
Hex_Second_kernel = []; 
for i = 1:1:length(Second_kernel_reshape)
    Hex_Second_kernel = [Hex_Second_kernel; dec_to_hex_single(Second_kernel_reshape(i))]; 
    Hex_Second_kernel(i,:) = [Hex_Second_kernel(i,1:4),'0000']; 
    Second_kernel_reshape(i) = hex_to_dec_single(Hex_Second_kernel(i,:)); 
end     
Second_kernel = permute(reshape(Second_kernel_reshape, [11,11]),[2,1]); 



Third_kernel = single(W1_single(1:11,1:11,3,1));
Third_kernel_permute = permute(Third_kernel,[2,1]); 
Third_kernel_reshape = reshape(Third_kernel_permute,[11*11,1]); 
Hex_Third_kernel = []; 
for i = 1:1:length(Third_kernel_reshape)
    Hex_Third_kernel = [Hex_Third_kernel; dec_to_hex_single(Third_kernel_reshape(i))]; 
    Hex_Third_kernel(i,:) = [Hex_Third_kernel(i,1:4),'0000']; 
    Third_kernel_reshape(i) = hex_to_dec_single(Hex_Third_kernel(i,:)); 
end 
Third_kernel = permute(reshape(Third_kernel_reshape, [11,11]),[2,1]);



%Image Data and Convolution



image_data = imread('./input_image.jpg'); 
[H,W,C]= size(image_data); 

imshow(image_data)



image_under_first_kernel = image_data(1:11,1:11,1);
image_permute_first_kernel = permute(image_under_first_kernel,[2,1]); 
image_reshape_first_kernel = reshape(image_permute_first_kernel, [11*11,1]); 


hex_image_under_first_kernel = []; 

for i=1:1:length(image_reshape_first_kernel)
    hex_image_under_first_kernel = [hex_image_under_first_kernel; dec_to_hex_single(double(image_reshape_first_kernel(i)))]; 
end 



multiplied_first_kernel = double(image_under_first_kernel) .* double(First_kernel);
multiplied_permute_first_kernel = permute(multiplied_first_kernel,[2,1]); 
multiplied_reshape_first_kernel = reshape(multiplied_permute_first_kernel,[11*11,1]);

hex_multiplied_first_kernel = []; 

for i = 1:1:length(multiplied_reshape_first_kernel)
    hex_multiplied_first_kernel = [hex_multiplied_first_kernel; dec_to_hex_single(multiplied_reshape_first_kernel(i))]; 
    hex_multiplied_first_kernel(i,:) = [hex_multiplied_first_kernel(i,1:4),'0000']; 
    multiplied_reshape_first_kernel(i) = hex_to_dec_single(hex_multiplied_first_kernel(i,:));
end 

multiplied_first_kernel = reshape(multiplied_reshape_first_kernel, [11,11]); 
accumulate_first_kernel = double(sum(multiplied_first_kernel,1)) 




image_under_second_kernel = image_data(1:11,1:11,2);
image_permute_second_kernel = permute(image_under_second_kernel,[2,1]); 
image_reshape_second_kernel = reshape(image_permute_second_kernel, [11*11,1]); 


hex_image_under_second_kernel = []; 

for i=1:1:length(image_reshape_second_kernel)
    hex_image_under_second_kernel = [hex_image_under_second_kernel; dec_to_hex_single(double(image_reshape_second_kernel(i)))]; 
end 

multiplied_second_kernel = double(image_under_second_kernel) .* double(Second_kernel);
multiplied_permute_second_kernel = permute(multiplied_second_kernel,[2,1]); 
multiplied_reshape_second_kernel = reshape(multiplied_permute_second_kernel, [11*11,1]); 

hex_multiplied_second_kernel = []; 

for i = 1:1:length(multiplied_reshape_second_kernel)
    hex_multiplied_second_kernel = [hex_multiplied_second_kernel; dec_to_hex_single(multiplied_reshape_second_kernel(i))]; 
    hex_multiplied_second_kernel(i,:) = [hex_multiplied_second_kernel(i,1:4),'0000']; 
    multiplied_reshape_second_kernel(i) = hex_to_dec_single(hex_multiplied_second_kernel(i,:));
end 

multiplied_second_kernel = reshape(multiplied_reshape_second_kernel, [11,11]); 
accumulate_second_kernel = double(sum(multiplied_second_kernel,1)) 







image_under_third_kernel = image_data(1:11,1:11,3);
image_permute_third_kernel = permute(image_under_third_kernel,[2,1]); 
image_reshape_third_kernel = reshape(image_permute_third_kernel, [11*11,1]); 


hex_image_under_third_kernel = []; 

for i=1:1:length(image_reshape_third_kernel)
    hex_image_under_third_kernel = [hex_image_under_third_kernel; dec_to_hex_single(double(image_reshape_third_kernel(i)))]; 
end 

multiplied_third_kernel = double(image_under_third_kernel) .* double(Third_kernel);
multiplied_permute_third_kernel = permute(multiplied_third_kernel,[2,1]); 
multiplied_reshape_third_kernel = reshape(multiplied_permute_third_kernel, [11*11,1]); 

hex_multiplied_third_kernel = []; 

for i = 1:1:length(multiplied_reshape_third_kernel)
    hex_multiplied_third_kernel = [hex_multiplied_third_kernel; dec_to_hex_single(multiplied_reshape_third_kernel(i))]; 
    hex_multiplied_third_kernel(i,:) = [hex_multiplied_third_kernel(i,1:4),'0000']; 
    multiplied_reshape_third_kernel(i) = hex_to_dec_single(hex_multiplied_third_kernel(i,:));
end 

multiplied_third_kernel = reshape(multiplied_reshape_third_kernel, [11,11]); 
accumulate_third_kernel = double(sum(multiplied_third_kernel,1)) 








accumulate = accumulate_first_kernel + accumulate_second_kernel + accumulate_third_kernel

hex_accumulate = []; 

for i = 1:1:length(accumulate)
    hex_accumulate = [hex_accumulate; dec_to_hex_single(accumulate(i))]; 
    hex_accumulate(i,:) = [hex_accumulate(i,1:4),'0000']; 
    accumulate(i) = hex_to_dec_single(hex_accumulate(i,:));
end 

accumulate_all = sum(accumulate)

final = dec_to_hex_single(accumulate_all);
final = [final(1:4),'0000']

hex_to_dec_single(final)
