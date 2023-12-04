// Load two binary images (0 and 1 values)
image1 = imread('D:\DIP PRACTICAL\img9.webp');
image2 = imread('D:\DIP PRACTICAL\img7.jpeg');


// Ensure both images have the same dimensions
[height1, width1] = size(image1);
[height2, width2] = size(image2);

if height1 ~= height2 || width1 ~= width2
    disp('Resizing images to a common size.');
    // Resize both images to a common size (adjust as needed)
    commonHeight = min(height1, height2);
    commonWidth = min(width1, width2);
    image1 = imresize(image1, [commonHeight, commonWidth]);
    image2 = imresize(image2, [commonHeight, commonWidth]);
end

// Perform AND operation
result_AND = image1 & image2;

// Perform OR operation
result_OR = image1 | image2;

// Perform intersection (element-wise minimum)
result_intersection = min(image1, image2);

// Perform NOT operation (element-wise negation)
result_NOT = ~image1;

// Display original images and results
figure;

subplot(2, 3, 1);
imshow(image1);
title('Image 1');

subplot(2, 3, 2);
imshow(image2);
title('Image 2');

subplot(2, 3, 3);
imshow(result_AND);
title('AND Operation Result');

subplot(2, 3, 4);
imshow(result_OR);
title('OR Operation Result');

subplot(2, 3, 5);
imshow(result_intersection);
title('Intersection Result');

subplot(2, 3, 6);
imshow(result_NOT);
title('NOT Operation Result (Negative Image)');
