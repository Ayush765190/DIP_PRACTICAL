// Question 1----->

// a) - read and display image
var = imread("D:\DIP PRACTICAL\img3.jpeg"); // raed image
subplot(1,2,1); //creates the first subplot in a grid with 4 row and 4 columns. and the 1 at the end indicates that we are currently setting up the first subplot.
imshow(var); // Display image
title("Origional Image");


// c ) RESIZE AN IMAGE
figure;
subplot(1,2,1);
imshow(var);
title("Original Image ");

imgResize=imresize(var,[100,100]);//this is used to resize pixels of the image
subplot(1,2,2);
imshow(imgResize);
title("resized Image ");

//or
/*
imgResize1=imresize(var,[100,100],'bicubic');
subplot(4,4,3);

imshow(imgResize1);
title("resized Image 2");
*/


// d. Convert given color image into gray-scale image
// first read the image and then resiz it into dimesion M x N x 2 then apply rgb2gray().
figure;
var2=imread("D:\DIP PRACTICAL\col8.webp");

rs=imresize(var2,[100,100],'bicubic');

gImage=rgb2gray(rs);
subplot(1,2,1);
imshow(var2);
title("Original Image ");

subplot(1,2,2);
imshow(gImage);
title("grayscale image");


// e)-Convert given color/gray-scale image into black & white image
// use gray image or first convert color image to gray image

// Manually set a threshold value (you may need to adjust this)
figure;
threshold = 0.5;
// Binarize the image using im2bw function
binaryImg = im2bw(gImage,threshold);

subplot(1,2,1);
imshow(gImage);
title("grayscale image");

subplot(1,2,2);
imshow(binaryImg);
title("Black and White Image");


// f. Draw image profile
figure;
imshow(var2);
title("Original image");

iProfile=improfile(var2);
//subplot(4,4,5);
imshow(iProfile);
title("profile of image");



// g. Separate color image in three R G & B planes

// Read the color image using imread function
figure;

colorImg = imread("D:\DIP PRACTICAL\col7.webp");

// Display the original color image
subplot(2, 4, 1);
imshow(colorImg);
title('Original Color Image');

// Separate the RGB channels
redChannel = colorImg(:, :, 1);
greenChannel = colorImg(:, :, 2);
blueChannel = colorImg(:, :, 3);


// Display the R, G, and B channels separately
subplot(2, 4, 2);
imshow(redChannel);
title('Red Channel');

subplot(2, 4, 3);
imshow(greenChannel);
title('Green Channel');

subplot(2, 4, 4);
imshow(blueChannel);
title('Blue Channel');


[R, C] =size(colorImg);
//here values of R(rows) is 5070 and C(columns) is 3353
//to get only red , only green and only blue images
Rim=zeros(R,C,3);
Gim=zeros(R,C,3);
Bim=zeros(R,C,3);

Rim(:,:,1)=colorImg(:, :, 1);
Gim(:,:,2)=colorImg(:, :, 2);
Bim(:,:,3)= colorImg(:, :, 3);
subplot(2,4,5);
imshow(Rim);
title("red scale image");
subplot(2,4,6);
imshow(Gim);
title("green scale image");
subplot(2,4,7);
imshow(Bim);
title("blue scale image");



// h. Create color image using R, G and B three separate planes
figure;

subplot(2, 2, 1);
imshow(redChannel);
title('Red Channel');

subplot(2, 2, 2);
imshow(greenChannel);
title('Green Channel');

subplot(2, 2, 3);
imshow(blueChannel);
title('Blue Channel');

colorImage  = cat(3,redChannel,greenChannel,blueChannel);
subplot(2, 2, 4);
imshow(colorImage);
title("created color image");

//g. write given 2D data in image file
figure;

imwrite(colorImage, 'D:\DIP PRACTICAL\col9.webp');
//or
// Create a sample 2-D data (matrix)
data = [1, 2, 3; 4, 5, 6; 7, 8, 9];
// Choose the filename and format (e.g., PNG or JPG)
filename = 'D:\DIP PRACTICAL\img4.webp';
// Write the 2-D data to an image file
va1 = imwrite(data, filename);
imshow(va1);
im1=imread("D:\DIP PRACTICAL\img5.webp");
imshow(im1);
title("output image");
