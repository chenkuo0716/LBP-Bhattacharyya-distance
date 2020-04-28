close all;
clear;
clc;

F0='scs.png';
F1='herbe2.jpg';
F2='eau1.jpg';
F3='eau2.jpg';
F4='brique1.jpg';
F5='brique2.jpg';
F6='bois1.jpg';
F7='bois2.jpg';

I0=imread(F0);
%I0=rgb2gray(I0);
[r,c]=size(I0);
Hist0=lbp(I0,r,c);
plot(Hist0);

I1=imread(F1);
I1=rgb2gray(I1);
[r,c]=size(I1);
Hist1=lbp(I1,r,c);

I2=imread(F2);
I2=rgb2gray(I2);
[r,c]=size(I2);
Hist2=lbp(I2,r,c);

I3=imread(F3);
I3=rgb2gray(I3);
[r,c]=size(I3);
Hist3=lbp(I3,r,c);

I4=imread(F4);
I4=rgb2gray(I4);
[r,c]=size(I4);
Hist4=lbp(I4,r,c);

I5=imread(F5);
I5=rgb2gray(I5);
[r,c]=size(I5);
Hist5=lbp(I5,r,c);

I6=imread(F6);
I6=rgb2gray(I6);
[r,c]=size(I6);
Hist6=lbp(I6,r,c);

I7=imread(F7);
I7=rgb2gray(I7);
[r,c]=size(I7);
Hist7=lbp(I7,r,c);

Score01=bhat(Hist0, Hist1);
Score02=bhat(Hist0, Hist2);
Score03=bhat(Hist0, Hist3);
Score04=bhat(Hist0, Hist4);
Score05=bhat(Hist0, Hist5);
Score06=bhat(Hist0, Hist6);
Score07=bhat(Hist0, Hist7);

Score12=bhat(Hist1, Hist2);
Score13=bhat(Hist1, Hist3);
Score14=bhat(Hist1, Hist4);
Score15=bhat(Hist1, Hist5);
Score16=bhat(Hist1, Hist6);
Score17=bhat(Hist1, Hist7);

Score23=bhat(Hist2, Hist3);
Score24=bhat(Hist2, Hist4);
Score25=bhat(Hist2, Hist5);
Score26=bhat(Hist2, Hist6);
Score27=bhat(Hist2, Hist7);

Score34=bhat(Hist3, Hist4);
Score35=bhat(Hist3, Hist5);
Score36=bhat(Hist3, Hist6);
Score37=bhat(Hist3, Hist7);

Score45=bhat(Hist4, Hist5);
Score46=bhat(Hist4, Hist6);
Score47=bhat(Hist4, Hist7);

Score56=bhat(Hist5, Hist6);
Score57=bhat(Hist5, Hist7);

Score67=bhat(Hist6, Hist7);

disp(['La comparaison des images ',F0,' et ',F1,' donne un score de ',num2str(Score01)]);
disp(['La comparaison des images ',F0,' et ',F2,' donne un score de ',num2str(Score02)]);
disp(['La comparaison des images ',F0,' et ',F3,' donne un score de ',num2str(Score03)]);
disp(['La comparaison des images ',F0,' et ',F4,' donne un score de ',num2str(Score04)]);
disp(['La comparaison des images ',F0,' et ',F5,' donne un score de ',num2str(Score05)]);
disp(['La comparaison des images ',F0,' et ',F6,' donne un score de ',num2str(Score06)]);
disp(['La comparaison des images ',F0,' et ',F7,' donne un score de ',num2str(Score07)]);
disp(' ');
disp(['La comparaison des images ',F1,' et ',F2,' donne un score de ',num2str(Score12)]);
disp(['La comparaison des images ',F1,' et ',F3,' donne un score de ',num2str(Score13)]);
disp(['La comparaison des images ',F1,' et ',F4,' donne un score de ',num2str(Score14)]);
disp(['La comparaison des images ',F1,' et ',F5,' donne un score de ',num2str(Score15)]);
disp(['La comparaison des images ',F1,' et ',F6,' donne un score de ',num2str(Score16)]);
disp(['La comparaison des images ',F1,' et ',F7,' donne un score de ',num2str(Score17)]);
disp(' ');
disp(['La comparaison des images ',F2,' et ',F3,' donne un score de ',num2str(Score23)]);
disp(['La comparaison des images ',F2,' et ',F4,' donne un score de ',num2str(Score24)]);
disp(['La comparaison des images ',F2,' et ',F5,' donne un score de ',num2str(Score25)]);
disp(['La comparaison des images ',F2,' et ',F6,' donne un score de ',num2str(Score26)]);
disp(['La comparaison des images ',F2,' et ',F7,' donne un score de ',num2str(Score27)]);
disp(' ');
disp(['La comparaison des images ',F3,' et ',F4,' donne un score de ',num2str(Score34)]);
disp(['La comparaison des images ',F3,' et ',F5,' donne un score de ',num2str(Score35)]);
disp(['La comparaison des images ',F3,' et ',F6,' donne un score de ',num2str(Score36)]);
disp(['La comparaison des images ',F3,' et ',F7,' donne un score de ',num2str(Score37)]);
disp(' ');
disp(['La comparaison des images ',F4,' et ',F5,' donne un score de ',num2str(Score45)]);
disp(['La comparaison des images ',F4,' et ',F6,' donne un score de ',num2str(Score46)]);
disp(['La comparaison des images ',F4,' et ',F7,' donne un score de ',num2str(Score47)]);
disp(' ');
disp(['La comparaison des images ',F5,' et ',F6,' donne un score de ',num2str(Score56)]);
disp(['La comparaison des images ',F5,' et ',F7,' donne un score de ',num2str(Score57)]);
disp(' ');
disp(['La comparaison des images ',F6,' et ',F7,' donne un score de ',num2str(Score67)]);