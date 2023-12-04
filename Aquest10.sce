//10. Write a program in C and MATLAB/SCILAB for edge detection using different edge detection mask.

image = imread('D:\DIP PRACTICAL\eyee.jpeg');

gray = rgb2gray(image);

img1 = edge(gray, 'sobel', 0.55)

img2 = edge(gray, 'prewitt',0.1)

img3 = edge(gray, 'log',0.1)

subplot(2,2,1);

imshow(gray);
title("Original gray image");

subplot(2,2,2);

imshow(img1);
title("Sobel operator image");

subplot(2,2, 3);

imshow(img2);
title("prewitt operator image");

subplot(2,2,4);

imshow(img3);
title("log operator image");
