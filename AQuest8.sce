//8. Write and execute programs to use spatial low pass and high pass filters

//LOW PASS FILTER

img = imread('D:\DIP PRACTICAL\img8.webp');

gray = rgb2gray(img);

subplot(2,1,1);

imshow(gray);

filter=fspecial('average',3);

avg = imfilter (gray, filter);

subplot(2,1,2);

imshow(avg);


//HIGH PASS FILTER
figure;
img = imread('D:\DIP PRACTICAL\col3.jpg');

gray = rgb2gray(img);

subplot(2,1,1);

imshow(gray);

filter = fspecial('laplacian');

lap = imfilter(gray, filter);

subplot(2,1,2);

imshow(lap);
