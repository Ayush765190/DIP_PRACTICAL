
// Geometric Transformations in Scilab using Matrix and imtransform with Affine

// Load the image
originalImg = imread('D:\DIP PRACTICAL\img10.webp');

// Display the original image
subplot(2, 3, 1);
imshow(originalImg);
title('Original Image');

// a. Translation
translationMatrix =  [1, 0, 50; 0, 1, 30; 0, 0, 1];
translatedImg = imtransform(originalImg, translationMatrix, 'affine');
subplot(2, 3, 2);
imshow(translatedImg);
title('Translated Image');

// b. Scaling
scalingMatrix = [0.5, 0, 0; 0, 1.5, 0; 0, 0, 1];
scaledImg = imtransform(originalImg, scalingMatrix, 'affine');
subplot(2, 3, 3);
imshow(scaledImg);
title('Scaled Image');

// c. Rotation
theta = 30; // Rotation angle in degrees
rotationMatrix = [cosd(theta), -sind(theta), 0; sind(theta), cosd(theta), 0; 0, 0, 1];
rotatedImg = imtransform(originalImg, rotationMatrix, 'affine');
subplot(2, 3, 4);
imshow(rotatedImg);
title('Rotated Image');

// d. Shrinking
shrinkMatrix = [0.8, 0, 0; 0, 0.8, 0; 0, 0, 1];
shrunkImg = imtransform(originalImg, shrinkMatrix, 'affine');
subplot(2, 3, 5);
imshow(shrunkImg);
title('Shrunk Image');

// e. Zooming
zoomMatrix = [1.2, 0, 0; 0, 1.2, 0; 0, 0, 1];
zoomedImg = imtransform(originalImg, zoomMatrix, 'affine');
subplot(2, 3, 6);
imshow(zoomedImg);
title('Zoomed Image');











