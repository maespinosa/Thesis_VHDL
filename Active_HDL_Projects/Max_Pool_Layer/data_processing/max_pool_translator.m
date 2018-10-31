fclose('all'); 
clear all; 
close all; 

mp1_file = fopen('.\maxpool1.bin');

%% Convert mp1 Data
disp('Converting MAXPPOOL1 data')

num_channels = 96; 
height = 27; 
width = 27; 

mp1_read = fread(mp1_file,[num_channels*height*width,1],'double');
mp1 = zeros(height,width,num_channels);

index = 1; 

for channels = 1:1:num_channels %HH = 1:1:height 
    for HH = 1:1:height %WW = 1:1:width
        for WW = 1:1:width %channels = 1:1:num_channels
            mp1(HH,WW,channels) = mp1_read(index,1); 
            index = index + 1; 
        end 
    end 
    
end 

mp1_array = reshape(mp1,[height*width*num_channels,1]);

fclose('all');

mp1_permute = permute(mp1,[2,1,3,4]); 
mp1_reshape = reshape(mp1_permute,[height*width*num_channels,1]);
mp1_char = num2hex(single(mp1_reshape)); 
% 
%  mp1_char = []; 
% % 
%  for i = 1:1:length(mp1_reshape) 
%      mp1_char = [mp1_char; dec_to_hex_single(double(mp1_reshape(i)))]; 
%  end 



disp('Writing MAXPOOL1 TXT File ...')


mp1_char_size=size(mp1_char);
mp1_char_size(1);


fileID = fopen('.\mp1_coe.txt','w');
for i = 1:1:mp1_char_size(1)
    data = mp1_char(i,1:4); 
    fprintf(fileID, '%s,\n',data);
end 
fclose(fileID); 

fileID = fopen('.\mp1.txt','w');
for i = 1:1:mp1_char_size(1)
    data = mp1_char(i,1:4); 
    fprintf(fileID, '%s\n',data);
end 
fclose(fileID); 


