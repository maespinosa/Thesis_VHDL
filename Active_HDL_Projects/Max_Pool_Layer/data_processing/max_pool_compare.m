fclose('all')
close all; 
clear all; 

num_channels = 96; 
height = 27; 
width = 27; 

disp('Getting Modelsim Simulation Output'); 

sim_file = fopen('.\maxpool_output.txt', 'r'); 

maxpool_sim_data_read = fscanf(sim_file,'%x'); 
fclose(sim_file); 

max_pool_sim_data_hex = dec2hex(maxpool_sim_data_read); 

max_pool_sim_data = []; 

[M,N] = size(max_pool_sim_data_hex); 

%Convert to Floating Point Single Precision
for i = 1:1:M 
    max_pool_sim_data_hex_8 = [max_pool_sim_data_hex(i,1:4), '0000']; 
    max_pool_sim_data = [max_pool_sim_data; hex_to_dec_single(max_pool_sim_data_hex_8)]; 
end 

max_pool_sim_data_image = reshape(max_pool_sim_data,[height, width, num_channels]); 
max_pool_sim_data_image = permute(max_pool_sim_data_image, [2,1,3]); 



%Get Truth data form Python File. 
disp('Getting Max Pool Truth Data')

python_max_pool_file = fopen('.\maxpool1.bin'); 
%File saved as 64bit Double Precision Floating Point
maxpool_read = fread(python_max_pool_file, [num_channels*height*width,1], 'double'); 

%Check size 
[R,C] = size(maxpool_read); 

%Process Max Pool datato display

max_pool_image = reshape(maxpool_read,[height,width,num_channels]); 
max_pool_image = permute(max_pool_image,[2,1,3]); 

min_value = min(min(max_pool_image,[],1),[],2); 
adjusted= repmat(abs(min_value), height,width); 
adjusted = adjusted + max_pool_image; 

max_value = max(max(adjusted,[],1), [],2); 
norm_values = repmat(max_value, height,width); 
max_image = 255.*(adjusted./ norm_values); 

figure(2)
show_array = []; 
for x = 1:1:num_channels 
    show_array = [show_array, max_image(:,:,x)]; 
end 
imshow(show_array)
%imshow([uint8(max_pool_image(:,:,1)), uint8(max_pool_image(:,:,2)), uint8(max_pool_image(:,:,3)), uint8(max_pool_image(:,:,4)), uint8(max_pool_image(:,:,5))])

disp('Convert to Floating Point Single Precision Hex'); 
max_pool_hex = []; 


for i =1:1:num_channels 
    for j= 1:1:height
        for k = 1:1:width
            [i,j,k]
            hex= dec_to_hex_single(max_pool_image(j,k,i)); 
            max_pool_hex = [max_pool_hex; [hex(1:4),'0000']]; %Make data Half Precision 
        end 
    end 
end 

disp('Convert to Decimal from Half Precision Hex')

maxpool_python_data = []; 

for i = 1:1:M
    maxpool_python_data = [maxpool_python_data; hex_to_dec_single([max_pool_hex(i,1:4),'0000'])]; 
end 

maxpool_python_data = reshape(maxpool_python_data,[height, width, num_channels]); 
maxpool_python_data = permute(maxpool_python_data,[2,1,3]); 
fclose('all'); 

python_data = maxpool_python_data; 
sim_data = max_pool_sim_data_image; 
data_delta = abs(maxpool_python_data-max_pool_sim_data_image)
percent_diff = (data_delta./python_data)*100.00; 
diff_average = sum(percent_diff) / length(percent_diff)

