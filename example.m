clear;
clc;
addpath(genpath('sparse_coding'));
img = imread('00000000.jpg');
load('CSC_dic_H_DIBR.mat')
load('svr_DIBR.mat')
resize_factor =1;
csc_score  = CSC_NRM( img, H, svr , resize_factor );
 % input:
 % img: is the input image
 % H: is the trained CSC codebook 
 % svr: is the regression model 
 % resize_factor: is the rescaling factore in a range of [0 1], where '1'
 % indicates the original image size.
 % output: csc_score is the predicted score