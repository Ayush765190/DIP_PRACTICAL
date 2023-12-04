//7) to understand various image noise models and to write program for 

//a) image restoration
img = imread('D:\DIP PRACTICAL\img10.webp');

grayed =rgb2gray(img);

subplot(2,2,1); 
title('original image'); 
imshow(grayed);

//adding noise

imn=imnoise(grayed, 'speckle' );

subplot(2,2,2); 
title("image with noise"); 
imshow(imn);

//applying filter

median_filter = immedian(imn,3);

subplot(2,2,3);

title("image after applying filter");
imshow(median_filter);

//B) removing salt and pepper noise

figure;

img = imread('D:\DIP PRACTICAL\img7.jpeg');

grayed= rgb2gray(img);

imn_snp= imnoise(grayed, 'salt & pepper');

subplot(2,2,1);
title('salt and pepper noise');
imshow(imn_snp);

filter=fspecial('average', 3);

avg_on_snp=imfilter(imn_snp, filter);

subplot(2,2,2);

title('avg filter applied');
 imshow(avg_on_snp);

//C) Minimize Gaussian noise
figure;

img=imread('D:\DIP PRACTICAL\img3.jpeg');
grayed=rgb2gray(img);
 

gaussian_noise=imnoise(grayed, 'gaussian');

subplot(2,2,1);

title('gaussian noise');

imshow(gaussian_noise);

filter_gaussian = fspecial('gaussian', 3);

gaussian_on_gaussian_noise =imfilter(gaussian_noise, filter_gaussian );

subplot(2,2,2);

title('applied gaussian filter');
imshow(gaussian_on_gaussian_noise);
 
 //D) median filter
 
figure;

img = imread('D:\DIP PRACTICAL\img8.webp');

grayed=rgb2gray(img);

subplot(2,2,1);

title('original image');

imshow(grayed);


salt_n_pepper_noise = imnoise (grayed, 'salt & pepper', 0.4);

subplot(2,2,2);

title('salt n pepper noise');
imshow(salt_n_pepper_noise);
 

median_filter = immedian(salt_n_pepper_noise, 3);

subplot(2,2,3);
title('median filter');
imshow(median_filter);
