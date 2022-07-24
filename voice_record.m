clc
clear all
close all
warning off
Fs=8000;
ch=1;
datatype='unit8';
nbits=16;
Nseconds=10;
recorder=audiorecorder(Fs,nbits,ch);
disp('Start Speaking')
recordblocking(recorder,Nseconds);
disp('End Speaking');
x=getaudiodata(recorder,datatype);
audiowrite('recordl.wav',x,Fs);