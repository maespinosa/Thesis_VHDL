% fclose('all'); 
% clear all; 
% close all; 

relu1_file = fopen('.\relu1.bin');

%% Convert relu1 Data
disp('Converting RELU1 data')

num_channels = 96; 
height = 55; 
width = 55; 

relu1_read = fread(relu1_file,[num_channels*height*width,1],'double');
relu1 = zeros(height,width,num_channels);

index = 1; 

for channels = 1:1:num_channels %HH = 1:1:height 
    for HH = 1:1:height %WW = 1:1:width
        for WW = 1:1:width %channels = 1:1:num_channels
            relu1(HH,WW,channels) = relu1_read(index,1); 
            index = index + 1; 
        end 
    end 
end 

relu1_array = reshape(relu1,[height*width*num_channels,1]);

fclose('all');

relu1_permute = permute(relu1,[2,1,3,4]); 
relu1_reshape = reshape(relu1_permute,[height*width*num_channels,1]);
relu1_char = num2hex(single(relu1_reshape)); 
% 
%  relu1_char = []; 
% % 
%  for i = 1:1:length(relu1_reshape) 
%      relu1_char = [relu1_char; dec_to_hex_single(double(relu1_reshape(i)))]; 
%  end 



disp('Writing RELU1 TXT File ...')


relu1_char_size=size(relu1_char);
relu1_char_size(1);


fileID = fopen('.\relu1_coe.txt','w');
for i = 1:1:relu1_char_size(1)
    data = relu1_char(i,1:4); 
    fprintf(fileID, '%s,\n',data);
end 
fclose(fileID); 

fileID = fopen('.\relu1.txt','w');
for i = 1:1:relu1_char_size(1)
    data = relu1_char(i,1:4); 
    fprintf(fileID, '%s\n',data);
end 
fclose(fileID); 


