close all; 
clear all; 
fclose('all')
 

num_channels = 96; 
height = 55; 
width = 55; 

disp('Getting Modelsim Simulation Output')


sim_file = fopen('.\conv_output.txt','r'); 
%type conv_output.txt

conv_sim_data_read = fscanf(sim_file,'%x'); %Will import as integer
fclose(sim_file); 

conv_sim_data_hex = dec2hex(conv_sim_data_read); %Convert to hex

conv_sim_data = []; 

[M,N] = size(conv_sim_data_hex);

test = [conv_sim_data_hex(1,1:4),'0000'];

%Convert to Floating Point Single Precision
for i = 1:1:M
    conv_sim_data_hex_8 = [conv_sim_data_hex(i,1:4), '0000'];
    conv_sim_data = [conv_sim_data;hex_to_dec_single(conv_sim_data_hex_8)]; 
end

conv_sim_data_image = reshape(conv_sim_data, [55,96]);
conv_sim_data_image = permute(conv_sim_data_image, [2,1]);





%% Get Truth Data from Python file

num_channels = 96; 
height = 55; 
width = 55; 

disp('Getting truth data from Python bin file')

conv1_file = fopen('.\conv1.bin');

conv1_read = fread(conv1_file,[num_channels*height*width,1],'double'); %File saved as 64bit Floating Point Double Precision 
[R,C] = size(conv1_read); 

conv1_read_image = reshape(conv1_read, [55,55,96]);
conv1_read_image = permute(conv1_read_image, [2,1,3]);

min_value = min(min(conv1_read_image,[],1),[],2);
adjusted = repmat(abs(min_value),55,55);
adjusted = adjusted + conv1_read_image; 

max_value = max(max(adjusted,[],1),[],2); 
norm_values = repmat(max_value,55,55); 
conv_image = 255.*(adjusted ./ norm_values); 

figure(2)
imshow([uint8(conv_image(:,:,1)),uint8(conv_image(:,:,1)),uint8(conv_image(:,:,1))])

% 
% show_array = []
% for i = 1:1:96
%     show_array = [show_array, uint8(conv_image(:,:,i))]; 
% end 
% 
% figure(3)
% imshow(show_array)

disp('Convert to Floating Point Single Precision Hex'); 

conv1_hex = []; 

for i = 1:1:55
    for j = 1:1:96
        hex = dec_to_hex_single(conv1_read_image(1,i,j));  %
        conv1_hex = [conv1_hex; [hex(1:4),'0000']]; %Make data Half Precision
    end 
end 

disp('Convert to Decimal from Half Precision Hex')

conv1_python_data = []; 

for i = 1:1:M
    conv1_python_data = [conv1_python_data; hex_to_dec_single([conv1_hex(i,1:4),'0000'])]; 
end 

conv1_python_data = reshape(conv1_python_data, [96,55]);
    


fclose('all')
python_data = conv1_python_data;
sim_data = conv_sim_data_image;
data_delta = abs(python_data-sim_data);
percent_diff = (data_delta./python_data)*100.00;
diff_average = sum(percent_diff)/length(percent_diff)
