fclose('all'); 
clear all; 
close all; 

image_file = fopen('.\n02100583_11540.bin');

%% Convert W1 Data
disp('Converting image data')

num_channels = 3; 
height = 227; 
width = 227; 

image_read = fread(image_file,[num_channels*height*width,1],'double');
image = zeros(height,width,num_channels);

index = 1; 
for channels = num_channels:-1:1
    for HH = 1:1:height 
        for WW = 1:1:width
                image(HH,WW,channels) = image_read(index,1); 
                index = index + 1; 
        end 
    end 
end 
figure(1)
imshow(uint8(image(:,:,1)))
figure(2)
imshow(uint8(image(:,:,2)))
figure(3)
imshow(uint8(image(:,:,3)))
figure(4)
imshow(uint8(image))

image_array = reshape(image,[height*width*num_channels,1]);


fclose('all');

image_permute = permute(image,[2,1,3])
image_reshape = reshape(image_permute,[height*width*num_channels,1]);
image_char = num2hex(image_reshape); 



disp('Writing image TXT File ...')


image_char_size=size(image_char)
image_char_size(1)


fileID = fopen('.\image_coe.txt','w');
for i = 1:1:image_char_size(1)
    data = image_char(i,1:4); 
    fprintf(fileID, '%s,\n',data);
end 
fclose(fileID); 

fileID = fopen('.\image.txt','w');
for i = 1:1:image_char_size(1)
    data = image_char(i,1:4); 
    fprintf(fileID, '%s\n',data);
end 
fclose(fileID); 
