load('extract_CSI_matrics.mat')
train = cat(1,lay,none,sit1,sit2,sit3);
[n_train,~] = size(train);
[n_lay,~] = size(lay);
[n_none,~] = size(none);
[n_sit1,~] = size(sit1);
[n_sit2,~] = size(sit2);
[n_sit3,~] = size(sit3);
label = zeros(n_train,1);
label(1:n_lay) = 1;
label(n_lay+1:n_lay+n_none) = 2;
label(n_lay+n_none+1:n_train) = 3;