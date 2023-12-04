//11. Write and execute program for image morphological operations erosion and dilation.

i=imread('D:\DIP PRACTICAL\imgg6.jpeg');
gray=rgb2gray(i);
subplot(3,1,1);
title('original image');

imshow(gray);

//Creating Structure Element for Morphological //operation 'rect', 'ellipse' and 'cross'

//The function constructs and returns the structuring //element that can be further passed to any //morphology filter

// 0 1 0
// 1 1 1
// 0 1 0

se = imcreatese('rect',3,3);

sd = imdilate(gray, se);

subplot(3,1,2);
title('dilation image');

imshow(sd);

se=imerode(gray, se);

subplot(3,1,3);
title('erosion image');

imshow(se);
