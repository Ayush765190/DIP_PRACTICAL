// Question 3 practical list

//a. addition of two images

img1 = imread('D:\DIP PRACTICAL\img7.jpeg');
img2 = imread('D:\DIP PRACTICAL\img9.webp');

disp(size(img1));

//here we have resized img1 according to the height and width of img2
resizedImg =imresize(img1,[size(img2, 1) size(img2, 2)]);

//addition of two images
imgAdd= imadd(resizedImg, img2);

subplot(2,2,1);
imshow(img1);
title('1st image');

subplot(2,2,2);
imshow(img2);
title('2st image');

subplot(2,2,3);
imshow(resizedImg);
title('resized 1st image');

subplot(2,2,4);
imshow(imgAdd);
title('Added image');


figure;

//b. subtraction of one image from other image

imgSubtract = imsubtract(img2, resizedImg);
//or


subplot(2,2,1);
imshow(img1);
title('1st image');

subplot(2,2,2);
imshow(img2);
title('2st image');

subplot(2,2,3);
imshow(resizedImg);
title('resized 1st image');

subplot(2,2,4);
imshow(imgSubtract);
title('Subtracted image');

//c. Calculate mean value of image

[M,N]=size(img1);
img = zeros(M,N,3,'uint8');
grayImg = rgb2gray(img1);
ans=0;

for i =1:M
    for j = 1:N
        ans = (uint64(ans)+grayImg(i,j));
    end
    disp(i)
end

avg = double(ans)/(M*N);
disp(avg);
