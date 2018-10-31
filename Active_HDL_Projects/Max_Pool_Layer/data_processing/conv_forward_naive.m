function [out, cache] = conv_forward_naive(x, w, b, conv_param)
    
    %   A naive implementation of the forward pass for a convolutional layer.
    % 
    %   The input consists of N data points, each with C channels, height H and width
    %   W. We convolve each input with F different filters, where each filter spans
    %   all C channels and has height HH and width HH.
    % 
    %   Input:
    %   - x: Input data of shape (N, C, H, W)
    %   - w: Filter weights of shape (F, C, HH, WW)
    %   - b: Biases, of shape (F,)
    %   - conv_param: A dictionary with the following keys:
    %     - 'stride': The number of pixels between adjacent receptive fields in the
    %       horizontal and vertical directions.
    %     - 'pad': The number of pixels that will be used to zero-pad the input.
    % 
    %   Returns a tuple of:
    %   - out: Output data, of shape (N, F, H', W') where H' and W' are given by
    %     H' = 1 + (H + 2 * pad - HH) / stride
    %     W' = 1 + (W + 2 * pad - WW) / stride
    %   - cache: (x, w, b, conv_param)

    %   N 		: Number of images
    %   C 		: Channels 
    %   H 		: Height 
    %   W		: Width 
    %   F 		: Number of filters
    %   HH 		: Filter Height 
    %   WW		: Filter Width 
    %   pad		: Number of pixels to zero-pad input 
    %   stride	: Number of pixels between adjacent receptive fields 
    
    %disp('EXECUTING CONV FORWARD NAIVE')

    % DISPLAY THE CRITICAL DIMENSIONS 
    pad = cell2mat(conv_param(1)); 
    stride = cell2mat(conv_param(2));
    
    % Input Volume Dimensions
    x_forward = x(1,1,:,:); 
    x_dim = size(x)
    %x_conv_forward_dim = size(x)

    N = x_dim(1)
    C = x_dim(2)
    H = x_dim(3)
    W = x_dim(4)
    

    %Filter Dimensions
    w; 
    w_dim = size(w) 

    F  = w_dim(1) 
    HH = w_dim(3)
    WW = w_dim(4)


    % Output Volume Dimensions
    OH = 1 + ((H + 2 * pad - HH)/stride);
    OW = 1 + ((W + 2 * pad - WW)/stride) ;

    % TAKE BLOCKS OF INPUT VOLUME AND RESHAPE 
    X_col = zeros(int32(OH)*int32(OW), C*HH*WW); 
    %X_col_dim = size(X_col);

    w_row = zeros(F,HH*WW*C); 	

%     x_pad = zeros(1,(H +(pad*2))*(W +(pad*2))*C,'gpuArray'); 	
%     x_pad = reshape(x_pad, C,(H+(pad*2)), (W+(pad*2))); 
%     x_pad_dim = size(x_pad);

    x_pad = zeros(1,N*(H +(pad*2))*(W +(pad*2))*C); 	
    x_pad = reshape(x_pad,(W+(pad*2)),(H+(pad*2)),C,N); 
    x_pad_dim = size(x_pad);

     
    X_block = zeros(WW,HH,C); 	

    out = zeros(N,F,int32(OH),int32(OW)); 	 

    filter_w = zeros(HH, WW); 	

%     for ii = 1:1:F 
%         for iii = 1:1:C 
%             filter_w = w(ii,iii,:,:); 
%             %filter_w_dim = size(filter_w);
%             filter_w = filter_w(:);
%             %filter_w = reshape(filter_w, HH*WW,1);
%             %filter_w_dim = size(filter_w);
%             w_row(ii,(iii*HH*WW - HH*WW + 1):(iii*HH*WW)) = filter_w; 
%         end 
%     end 
    w_old = w; 
    w = permute(w, [4,3,2,1]); 
    w = reshape(w, HH*WW,C,F);
    w_row = reshape(w, C*HH*WW, F); 
    w_row = transpose(w_row);
    
    x_old = x; 
    x = permute(x, [4,3,2,1]); 
    x_pad(pad+1:x_pad_dim(2)-pad, pad+1:x_pad_dim(1)-pad,:,:) = x; 
    
    for i = 1:1:N 
        %i 
        %x_test1 = x(i,1,:,:);
        %x_test2 = x(i,2,:,:);
        %x_test3 = x(i,3,:,:);
        %#x_pad(:, pad+1:x_pad_dim(2)-pad, pad+1:x_pad_dim(3)-pad) = x(i,:,:,:); 
        %pad_test1 = x_pad(1,:,:);
        %pad_test2 = x_pad(2,:,:);
        %pad_test3 = x_pad(3,:,:);
        %padded_x = x_pad; 
        %padded_x_dim = size(padded_x);

        loc_counter = 1; 

        j = 1;
        k = 1;
        horz_count = 0;
        vert_count = 0;

        while vert_count < OH
            while horz_count < OW

                X_block = x_pad(k:k+WW-1,j:j+HH-1,:,i); 

                %X_block = permute(X_block, [3,2,1]);
                X_block = X_block(:); 

                X_col(loc_counter,:) = X_block; 

                k = k + stride; 
  
                loc_counter = loc_counter + 1; 
                horz_count = horz_count + 1; 
            end 

            k = 1; 
            horz_count = 0; 
            j = j + stride;
            vert_count = vert_count + 1;
        end

        %X_col;
       % X_col_dim = size(X_col);

        conv_out = w_row * transpose(X_col); 
        %conv_out_dim = size(conv_out); 

        conv_out = reshape(conv_out, [F,OH,OW]); 
        %conv_out_dim = size(conv_out); 

        %iiii = 0; 
        for iiii = 1:1:F
             conv_out(iiii,:,:) = conv_out(iiii,:,:) + b(iiii);
              
        end; 
        conv_out = permute(conv_out, [1,3,2]);
        %conv_out(1,:,:)
        %conv_out_dim = size(conv_out); 

        out(i,:,:,:) = conv_out; 

    %out;  
    %out_dim = size(out); 

    end
    %sample1_channel1 = out(1,1,:,:);
    %sample1_channel2 = out(1,2,:,:);
    %sample1_channel3 = out(1,3,:,:);
   
    %sample2_channel1 = out(2,1,:,:);
    %sample2_channel2 = out(2,2,:,:);
    %sample2_channel3 = out(2,3,:,:);
    
    w = w_old; 
    x = x_old; 
    cache = {x,w,b}; 
    
    %out_conv_forward = size(out)
end 


