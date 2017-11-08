%comparison of two histogram
%written and executed by Rupali Gupta

close all
clc

%Reading the first image file 
%converting the image to grayscale
%plotting the image on graph
figure (1)
firstimag=imread('IMG_9716.jpg'); %reads the first image file
firstimage=rgb2gray(firstimag); %converts RGB to grayscale
subplot(2,2,1); %plots the image on the graph as a subplot
imshow(firstimage); %displays the first image
title('First Image'); %names the plot


%creating the histogram of the First image
%plotting the histogram on the graph
subplot(2,2,2); %plots the histogram of first image
imhist(firstimage,256); %creates the histogram of the first image
title('Histogram of First Image'); %names the histogram image on plot


%Reading the second image file 
%converting the image to grayscale
%plotting the image on graph
secondimag=imread('IMG_9735.jpg'); %reads the image file
secondimage=rgb2gray(secondimag); %converts RGB to grayscale
subplot(2,2,3); %plots the image on the same graph as subplot
imshow(secondimage); %displays image on graph
title('Second Image'); %names the plot


%creating the histogram of the First image
%plotting the histogram on the graph
subplot(2,2,4); %plots the histogram image as subplot
imhist(secondimage,256); %creates the histogram of second image
title('Histogram of Second image') %names the plot

figure(2) %plots second graph
a=imhist(firstimage,256); % stores the histogram values in a
b=imhist(secondimage,256);% stores the histogram values in b
diff = imabsdiff(a,b); %absolute difference between a and b
plot(diff) %plots the difference
title ('Difference in HISTOGRAM');



figure(3)
originalimag=imread('IMG_9716.jpg');
originalimage=rgb2gray(originalimag);
subplot(2,3,1);
imshow(originalimage);
title('Original Image');

r=edge(originalimage,'roberts');
subplot(2,3,2);
imshow(r);
title('Roberts operator');

p=edge(originalimage,'prewitt');
subplot(2,3,3);
imshow(p);
title('Prewitt operator');

s=edge(originalimage,'sobel');
subplot(2,3,4);
imshow(s);
title('Sobel operator');

c=edge(originalimage,'canny');
subplot(2,3,5);
imshow(c);
title('Canny edge detector');




