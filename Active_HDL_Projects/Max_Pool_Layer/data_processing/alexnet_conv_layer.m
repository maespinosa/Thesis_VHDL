fclose('all'); 
clear all; 
close all; 

%% Get Weight Data
disp('Get Weight Data')
W1_file = fopen('.\W1.bin');
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
end

%% Convert to Floating Point Half Precision Hex
disp('Convert to Floating Point Half Precision Hex'); 

weight_data_half_hex = []; 

for i = 1:1:length(W1_read_single)
        hex = dec_to_hex_single(W1_read_single(i));  %
        weight_data_half_hex = [weight_data_half_hex; [hex(1:4),'0000']]; %Make data Half Precision
end 
%% Convert to Decimal from Half Precision Hex
disp('Convert to Decimal from Half Precision Hex')

weight_data = []; 

for i = 1:1:length(W1_read_single)
    weight_data = [weight_data; hex_to_dec_single(weight_data_half_hex(i,:))]; 
end 
%% Rearrange Data into Image Matrix
disp('Rearrange Data into Image Matrix')
index = 1; 

for filters = 1:1:num_filters 
    for channels = 1:1:num_channels
        for HH = 1:1:width%filters = 1:1:num_filters %channels = 1:1:num_channels
            for WW = 1:1:width%channels = 1:1:num_channels
                W1_single(HH,WW,channels,filters) = weight_data(index,1); 
                index = index + 1; 
            end
        end 
    end 
end 
fclose('all');

W1_single = permute(W1_single,[4,3,1,2]); 

%% Get Bias Data
disp('Get Bias Data')
b1_file = fopen('.\b1.bin');
% Essential Parameters 
num_filters = 96; 

b1_read = fread(b1_file,[num_filters,1],'double');
b1_single = zeros(num_filters);

Hex_b1_read = []; 
for i=1:1:length(b1_read)
    Hex_b1_read = [Hex_b1_read; dec_to_hex_single(b1_read(i))];
end

%% Convert to Floating Point Half Precision Hex
disp('Convert to Floating Point Half Precision Hex'); 

bias_data_half_hex = []; 

for i = 1:1:length(b1_read)
        hex = dec_to_hex_single(b1_read(i));  %
        bias_data_half_hex = [bias_data_half_hex; [hex(1:4),'0000']]; %Make data Half Precision
end 
%% Convert to Decimal from Half Precision Hex
disp('Convert to Decimal from Half Precision Hex')

bias_data = []; 

for i = 1:1:length(b1_read)
    bias_data = [bias_data; hex_to_dec_single(bias_data_half_hex(i,:))]; 
end 



%% Get Image Data    
disp('Get Image Data')
image_data = imread('./input_image.jpg'); 
[H,W,C]= size(image_data); 

imshow(image_data)

image_for_conv = permute(image_data,[3,1,2]); 
image_4d = zeros(1,C,H,W); 
image_4d(1,:,:,:) = image_for_conv; 

image_data_permute = permute(image_data,[2,1,3]); 
image_data_reshape = reshape(image_data_permute, [H*W*C,1]); 


hex_image_data = []; 

for i=1:1:length(hex_image_data)
    hex_image_data = [hex_image_data; dec_to_hex_single(image_data_reshape(i))]; 
end 

%% Execute Convolution
disp('Execute Convolution')
stride = 4;
pad = 0;
    
conv_param = {pad, stride}; 
[out, cache] = conv_forward_naive(image_4d, W1_single, bias_data, conv_param); 

%% Convert Convolution Ouptut to Floating Point Half Precision Hex
disp('Convert Convolution Ouptut to Floating Point Half Precision Hex')
[N,F,H,W] = size(out); 

out_data_permute = permute(out,[4,3,2,1]); 
out_data_reshape = reshape(out_data_permute,[N*F*H*W,1]); 

hex_out_data = []; 
for i=1:1:length(out_data_reshape)
    hex = dec_to_hex_single(out_data_reshape(i)); 
    hex_out_data = [hex_out_data; [hex(1:4), '0000']]; 
end 

%% Write Conv Output Truth File 
disp('Write Conv Output Truth File ')
fileID = fopen('.\conv_truth_data.txt','w');
for i = 1:1:length(out_data_reshape)
    data = hex_out_data(i,1:4);  
    fprintf(fileID, '%s\n',data(1:4));
end 
fclose(fileID); 

%% Convert to Decimal from Half Precision Hex
disp('Convert to Decimal from Half Precision Hex')

conv_truth_data = []; 

for i = 1:1:length(out_data_reshape)
    conv_truth_data = [conv_truth_data; hex_to_dec_single(hex_out_data(i,:))]; 
end 



%% Get Modelsim Output
disp('Getting Modelsim Simulation Output')
num_channels = 96; 
height = 55; 
width = 55; 


sim_file = fopen('.\conv_output.txt','r'); 
conv_sim_data_read = fscanf(sim_file,'%x'); %Will import as integer
fclose(sim_file); 


disp('Rearrange Data') 

% rearranged_data = reshape(conv_sim_data_read, [55,96,55]); 
% rearranged_data_permute = permute(rearranged_data, [1,3,2]); 
% rearranged_data_reshape = reshape(rearranged_data_permute,[55*55*96,1]); 

rearranged_data = zeros(55,55,96); 
for j = 1:1:55
    for i = 1:1:96
        rearranged_data(j,:,i) = conv_sim_data_read(1+55*(i-1):55+55*(i-1),1); 
    end 
end 

rearranged_data_permute = permute(rearranged_data,[2,1,3]); 
rearranged_data_reshape = reshape(rearranged_data_permute, [55*55*96,1]); 


disp('Converting Data to Hex Integer')
conv_sim_data_hex = dec2hex(rearranged_data_reshape); %Convert to hex
[M,N] = size(conv_sim_data_hex);

%%Convert to Floating Point Half Precision
disp('Convert to Floating Point Half Precision')
conv_sim_data_hex_8 = []; 
for i = 1:1:M
    conv_sim_data_hex_8 = [conv_sim_data_hex_8;[conv_sim_data_hex(i,1:4), '0000']];
end


%%Convert from Floating Point Half Precision to decimal
disp('Convert from Floating Point Half Precision to decimal')
conv_sim_data = []; 
for i = 1:1:M
    conv_sim_data = [conv_sim_data;hex_to_dec_single(conv_sim_data_hex_8(i,:))];  
end

%% Write Conv Output Truth File 
disp('Write Conv Output Rearranged File ')
fileID = fopen('.\conv_sim_reout.txt','w');
for i = 1:1:M
    data = conv_sim_data_hex_8(i,1:4);  
    fprintf(fileID, '%s\n',data(1:4));
end 
fclose(fileID); 


truth_data = conv_truth_data;
sim_data = conv_sim_data;
data_delta = abs(truth_data-sim_data);
percent_diff = (data_delta./truth_data)*100.00;
diff_average = sum(percent_diff)/length(percent_diff)
