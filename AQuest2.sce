//Question 2 write and execute image programs using point processing method
//a. Obtain  negative image

originalImg = imread('D:\DIP PRACTICAL\img5.webp');
// Obtain the negative image
maxIntensity = 255;  // Assuming 8-bit image
negativeImg = maxIntensity - originalImg;

// Display the original and negative images side by side
subplot(1, 2, 1);
imshow(originalImg);
title('Original Image');

subplot(1, 2, 2);
imshow(negativeImg);
title('Negative Image');

figure;
//b. Obtain flip image
//calculating horizontally flipped image
flippedImg=flipdim(originalImg,1);

//1 :- use for flipping vertically
//2 :- use forf flipping horizontally

subplot(1, 2, 1);
imshow(originalImg);
title('Original Image');

subplot(1, 2, 2);
imshow(flippedImg);
title('flipped image');

//c - thesholding
figure;

// Set the threshold value (adjust as needed)
thresholdValue = 128;

// Apply thresholding
binaryImg = (originalImg > thresholdValue)*255;

// Display the original and binary images side by side
subplot(1, 2, 1);
imshow(originalImg);
title('Original Image');

subplot(1, 2, 2);
imshow(binaryImg);
title('Thresholded Image');

//d. Contrast stretching
figure;

colorImg=imread("D:\DIP PRACTICAL\img7.jpeg");

// define range of contrast stretching (adjust as needed)
lowIn=0.2; //Low input intensity percentile
highIn=0.8; //High input intensity percentile

//perform contrast stretching using imasdjust 
cs=imadjust(colorImg,[lowIn,highIn],[0,1]);
// Display the original and contrast-stretched images side by side
subplot(1, 2, 1);
imshow(colorImg);
title('Original Color Image');

subplot(1, 2, 2);
imshow(cs);
title('Contrast Stretched Image');



