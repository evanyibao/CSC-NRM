img = imread('00000000.jpg');
addpath(genpath('sparse_coding'));
load('CSC_dic_H_DIBR.mat')
load('svr_DIBR.mat')
 resize_factor =0.1;
csc_score   = CSC_NRM( img, H, svr , resize_factor );
% input: 
% img : is the input image 
% H: is the CSC codebook
% svr : is the regression model
% resize_factor is the rescaling factor in range of [0 1], where '1'
% indicates the original size