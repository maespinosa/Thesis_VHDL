fclose('all'); 
clear all; 
close all; 

W1_file = fopen('.\W1.bin');
% W2_file = fopen('.\W2_tensorflow.bin');
% W3_file = fopen('.\W3_tensorflow.bin');
% W4_file = fopen('.\W4_tensorflow.bin');
% W5_file = fopen('.\W5_tensorflow.bin');
% W6_file = fopen('.\W6_tensorflow.bin');
% W7_file = fopen('.\W7_tensorflow.bin');
% W8_file = fopen('.\W8_tensorflow.bin');

%% Convert W1 Data
disp('Converting W1 data')

num_filters = 96; 
num_channels = 3; 
height = 11; 
width = 11; 

W1_read = fread(W1_file,[num_filters*num_channels*height*width,1],'double');
W1 = zeros(height,width,num_channels,num_filters);

index = 1; 

for filters = 1:1:num_filters 
    for channels = 1:1:num_channels
        for HH = 1:1:width%filters = 1:1:num_filters %channels = 1:1:num_channels
            for WW = 1:1:width%channels = 1:1:num_channels
                W1(HH,WW,channels,filters) = W1_read(index,1); 
                index = index + 1; 
            end
        end 
    end 
end 

W1_array = reshape(W1,[height*width*num_channels*num_filters,1]);

% %% Convert W2 Data
% disp('Converting W2 data')
% 
% num_filters = 256; 
% num_channels = 96; 
% height = 5; 
% width = 5; 
% 
% W2_read = fread(W2_file,[num_filters*num_channels*height*width,1],'float32');
% W2 = zeros(height,width,num_channels,num_filters);
% index = 1; 
% 
% for HH = 1:1:height 
%     for WW = 1:1:width
%         for channels = 1:1:num_channels
%             for filters = 1:1:num_filters
%                 W2(HH,WW,channels,filters) = W2_read(index,1); 
%                 index = index + 1; 
%             end
%         end 
%     end 
% end 
% 
% %% Convert W3 Data
% disp('Converting W3 data')
% 
% num_filters = 384; 
% num_channels = 256; 
% height = 3; 
% width = 3; 
% 
% W3_read = fread(W3_file,[num_filters*num_channels*height*width,1],'float32');
% W3 = zeros(height,width,num_channels,num_filters);
% index = 1; 
% 
% for HH = 1:1:height 
%     for WW = 1:1:width
%         for channels = 1:1:num_channels
%             for filters = 1:1:num_filters
%                 W3(HH,WW,channels,filters) = W3_read(index,1); 
%                 index = index + 1; 
%             end
%         end 
%     end 
% end 
% 
% %% Convert W4 Data
% disp('Converting W4 data')
% 
% 
% num_filters = 384; 
% num_channels = 384; 
% height = 3; 
% width = 3; 
% 
% W4_read = fread(W4_file,[num_filters*num_channels*height*width,1],'float32');
% W4 = zeros(height,width,num_channels,num_filters);
% index = 1; 
% 
% for HH = 1:1:height 
%     for WW = 1:1:width
%         for channels = 1:1:num_channels
%             for filters = 1:1:num_filters
%                 W4(HH,WW,channels,filters) = W4_read(index,1); 
%                 index = index + 1; 
%             end
%         end 
%     end 
% end 
% 
% %% Convert W5 Data
% disp('Converting W5 data')
% 
% 
% num_filters = 256; 
% num_channels = 384; 
% height = 3; 
% width = 3; 
% 
% W5_read = fread(W5_file,[num_filters*num_channels*height*width,1],'float32');
% W5 = zeros(height,width,num_channels,num_filters);
% index = 1; 
% 
% for HH = 1:1:height 
%     for WW = 1:1:width
%         for channels = 1:1:num_channels
%             for filters = 1:1:num_filters
%                 W5(HH,WW,channels,filters) = W5_read(index,1); 
%                 index = index + 1; 
%             end
%         end 
%     end 
% end 
% 
% %% Convert W6 Data
% disp('Converting W6 data')
% 
% num_filters = 4096; 
% num_channels = 256; 
% height = 6; 
% width = 6; 
% 
% W6_read = fread(W6_file,[num_filters*num_channels*height*width,1],'float32');
% W6 = zeros(height,width,num_channels,num_filters);
% index = 1; 
% 
% for HH = 1:1:height 
%     for WW = 1:1:width
%         for channels = 1:1:num_channels
%             for filters = 1:1:num_filters
%                 W6(HH,WW,channels,filters) = W6_read(index,1); 
%                 index = index + 1; 
%             end
%         end 
%     end 
% end 
% 
% %% Convert W7 Data
% disp('Converting W7 data')
% 
% height = 4096; 
% width = 4096; 
% 
% W7_read = fread(W7_file,[height*width,1],'float32');
% W7 = zeros(height,width);
% index = 1; 
% 
% for HH = 1:1:height 
%     for WW = 1:1:width
%         W7(HH,WW) = W7_read(index,1); 
%         index = index + 1; 
%     end 
% end 
% 
% 
% %% Convert W8 Data
% disp('Converting W8 data')
% 
% height = 1000; 
% width = 4096; 
% 
% W8_read = fread(W8_file,[height*width,1],'float32');
% W8 = zeros(height,width);
% index = 1; 
% 
% for HH = 1:1:height 
%     for WW = 1:1:width
%         W8(HH,WW) = W8_read(index,1); 
%         index = index + 1; 
%     end 
% end
% 
fclose('all');

W1_permute = permute(W1,[2,1,3,4]); 
W1_reshape = reshape(W1_permute,[height*width*num_channels*num_filters,1]);
%W1_char = num2hex(single(W1_reshape)); 

%size(W1_reshape)
W1_char = []; 
%W1_char = zeros(size(W1_reshape));
%size(W1_char)
for i = 1:1:length(W1_reshape)
    %W1_reshape(i)
    W1_char = [W1_char; dec_to_hex_single(W1_reshape(i))]; 
end 



disp('Writing W1 TXT File ...')


W1_char_size=size(W1_char)
W1_char_size(1)


fileID = fopen('.\W1_coe.txt','w');
for i = 1:1:W1_char_size(1)
    data = W1_char(i,1:4); 
    fprintf(fileID, '%s,\n',data);
end 
fclose(fileID); 

fileID = fopen('.\W1.txt','w');
for i = 1:1:W1_char_size(1)
    data = W1_char(i,1:4); 
    fprintf(fileID, '%s\n',data);
end 
fclose(fileID); 

% W2_dest = fopen('.\W2.bin', 'w');
% fwrite(W2_dest, W2, 'short');
% fclose(W2_dest);
% 
% W3_dest = fopen('.\W3.bin', 'w');
% fwrite(W3_dest, W3, 'short');
% fclose(W3_dest);
% 
% W4_dest = fopen('.\W4.bin', 'w');
% fwrite(W4_dest, W4, 'short');
% fclose(W4_dest);
% 
% W5_dest = fopen('.\W5.bin', 'w');
% fwrite(W5_dest, W5, 'short');
% fclose(W5_dest);
% 
% W6_dest = fopen('.\W6.bin', 'w');
% fwrite(W6_dest, W6, 'short');
% fclose(W6_dest);
% 
% W7_dest = fopen('.\W7.bin', 'w');
% fwrite(W7_dest, W7, 'short');
% fclose(W7_dest);
% 
% W8_dest = fopen('.\W8.bin', 'w');
% fwrite(W8_dest, W8, 'short');
% fclose(W8_dest);



% b1_dest = fopen('.\b1.bin', 'w');
% fwrite(b1_dest, b1);
% fclose(b1_dest);
% 
% b2_dest = fopen('.\b2.bin', 'w');
% fwrite(b2_dest, b2);
% fclose(b2_dest);
% 
% b3_dest = fopen('.\b3.bin', 'w');
% fwrite(b3_dest, b3);
% fclose(b3_dest);
% 
% b4_dest = fopen('.\b4.bin', 'w');
% fwrite(b4_dest, b4);
% fclose(b4_dest);
% 
% b5_dest = fopen('.\b5.bin', 'w');
% fwrite(b5_dest, b5);
% fclose(b5_dest);
% 
% b6_dest = fopen('.\b6.bin', 'w');
% fwrite(b6_dest, b6);
% fclose(b6_dest);
% 
% b7_dest = fopen('.\b7.bin', 'w');
% fwrite(b7_dest, b1);
% fclose(b7_dest);
% 
% b8_dest = fopen('.\b8.bin', 'w');
% fwrite(b8_dest, b8);
% fclose(b8_dest);
