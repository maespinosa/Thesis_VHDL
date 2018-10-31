% fclose('all'); 
% clear all; 
% close all; 

% conv1_file = fopen('.\conv1.bin');
% 
% %% Convert Conv1 Data
% disp('Converting CONV1 data')
% 
% num_channels = 96; 
% height = 55; 
% width = 55; 
% 
% conv1_read = fread(conv1_file,[num_channels*height*width,1],'double');
% conv1 = zeros(height,width,num_channels);
% 
% index = 1; 
% 
% for channels = 1:1:num_channels %HH = 1:1:height 
%     for HH = 1:1:height %WW = 1:1:width
%         for WW = 1:1:width %channels = 1:1:num_channels
%             conv1(HH,WW,channels) = conv1_read(index,1); 
%             index = index + 1; 
%         end 
%     end 
% end 
% 
% conv1_array = reshape(conv1,[height*width*num_channels,1]);
% 
% fclose('all');
% 
% 
% conv1_permute = permute(conv1,[2,1,3,4]); 
% conv1_reshape = reshape(conv1_permute,[height*width*num_channels,1]);
% conv1_char = num2hex(single(conv1_reshape)); 
% % 
% %  conv1_char = []; 
% % % 
% %  for i = 1:1:length(conv1_reshape) 
% %      conv1_char = [conv1_char; dec_to_hex_single(double(conv1_reshape(i)))]; 
% %  end 
% 

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

figure(1)
imshow([uint8(conv_image(:,:,1)),uint8(conv_image(:,:,1)),uint8(conv_image(:,:,1))])



disp('Convert to Floating Point Single Precision Hex'); 

conv1_hex = []; 

for i = 1:1:R
    hex = dec_to_hex_single(conv1_read(i));  %
    conv1_hex = [conv1_hex; [hex(1:4),'0000']]; %Make data Half Precision
end 

disp('Convert to Decimal from Half Precision Hex')

conv1_python_data = []; 

for i = 1:1:R
    conv1_python_data = [conv1_python_data; hex_to_dec_single([conv1_hex(i,1:4),'0000'])]; 
end 



disp('Writing conv1 TXT File ...')


conv1_char_size=size(conv1_hex);
conv1_char_size(1);


fileID = fopen('.\conv1_coe.txt','w');
for i = 1:1:conv1_char_size(1)
    data = conv1_hex(i,1:4); 
    fprintf(fileID, '%s,\n',data);
end 
fclose(fileID); 

fileID = fopen('.\conv1.txt','w');
for i = 1:1:conv1_char_size(1)
    data = conv1_hex(i,1:4); 
    fprintf(fileID, '%s\n',data);
end 
fclose(fileID); 


