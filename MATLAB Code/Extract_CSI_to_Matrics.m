clc
clear
csi_trace = read_bf_file('sample_data/raw_data/sit3.dat');
[n,~] = size(csi_trace);
dat = zeros(n,2,3,30);
for i = 1:1435
    dat(i,:,:,:) = csi_trace{i,1}.csi;
end