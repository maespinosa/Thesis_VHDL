fclose('all'); 
clear all; 
close all; 

image_data = imread('input_image.jpg'); 
[H,W,C]= size(image_data); 

imshow(image_data)

image_permute = permute(image_data,[2,1,3]); 
image_reshape = reshape(image_permute,[H*W*C,1]);

disp('Writing Image TXT File ...')


image_reshape_size=size(image_reshape);
image_reshape_size(1)

%hex_image_reshape = num2hex(single(image_reshape)); 

hex_image_reshape = []; 
for i = 1:1:length(image_reshape)
    %image_reshape(i)
    hex_image_reshape = [hex_image_reshape; dec_to_hex_single(double(image_reshape(i)))]; 
end



fileID = fopen('.\input_image_coe.txt','w');
for i = 1:1:image_reshape_size(1)
    data = hex_image_reshape(i,1:4); 
    fprintf(fileID, '%s,\n',data(1:4));
end 
fclose(fileID); 

fileID = fopen('.\input_image.txt','w');
for i = 1:1:image_reshape_size(1)
    data = hex_image_reshape(i,1:4);  
    fprintf(fileID, '%s\n',data(1:4));
end 
fclose(fileID); 

% 
% fileID = fopen('.\input_image_coe.txt','w');
% for i = 1:1:image_reshape_size(1)
%     data = num2hex(double(image_reshape(i))); 
%     fprintf(fileID, '%s,\n',data(1:4));
% end 
% fclose(fileID); 
% 
% fileID = fopen('.\input_image.txt','w');
% for i = 1:1:image_reshape_size(1)
%     data = num2hex(double(image_reshape(i)));  
%     fprintf(fileID, '%s\n',data(1:4));
% end 
% fclose(fileID); 