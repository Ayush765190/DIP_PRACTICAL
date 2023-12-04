//5) write a program for histogram calculation and equalization using
//a. Standard MATLAB function

i=imread("D:\DIP PRACTICAL\img10.webp");
//imshow(i);

ig=rgb2gray(i);

he=imhistequal(ig);

[q,l]=imhist(ig);

[qe,le]=imhist(he);

// Display the original image
figure;
subplot(2, 2, 1);
imshow(ig);
title('Original Image');

// Calculate and display the histogram
subplot(2, 2, 2);
bar(l,q);
title('Histogram');


// Display the equalized image
subplot(2, 2, 3);
imshow(he);
title('Equalized Image');

// Calculate and display the equalized histogram
subplot(2, 2, 4);
bar(le,qe);
title('Equalized Histogram');


//b. Program without using standard MATLAB functions

figure;
img=imread('D:\DIP PRACTICAL\img10.webp');

gray = rgb2gray(img);

[M,N]= size(gray);

arr = zeros(256,1, 'uint32');
arr1 = zeros(256,1, 'uint32');

for i=1:256 
    arr1(i) =i; 
end

for i=1:M 
    for j=1:N 
        arr(gray(i,j)+1) = (1+arr(gray(i,j)+1)); 
    end
end

bar(arr1, arr); // Create a vertical bar graph 
xlabel('0-255'); // Label the x-axis 
ylabel('frequency'); // Label the y-axis

//equalization of image

//figure;


img=imread('D:\DIP PRACTICAL\imgg5.avif'); 
[M,N]= size(img); 
subplot(2,2,1); 
imshow(img);

//gray image

gray=rgb2gray(img); 
subplot(2,2,2); 
imshow(gray);

//for getting frequency of gray Levels 
arr=zeros(256,1, 'uint32');

arr1 = zeros(256,1, 'uint32');

for i=1:256
    arr1(i) =i; 
end

//getting gray value of a pixel, and increment the 
//arr[ gray value ]

for i=1:M

    for j=1:N 
        d= gray(i,j); 
        arr(d+1)= arr(d+1)+1; 
    end
end
pd=zeros(256,1, 'double');

///probability /

//distribution of gray Levels

for i=1:256 
    pd(i)=double(arr(i))/double(M*N); 
end

cdd=zeros(256,1, 'double');

temp =0.0

//cumulative prob. Distribution.

for i=1:256 
    temp=temp + pd(i) 
    cdd(i) = temp;
end

fin = zeros(256,1, 'double');

// multiplying with max gray Level

for i=1:256 
    fin(i) = round(cdd(i)*255) 
end

bar(arr1, fin); // Create a vertical bar graph 
xlabel('0-255'); // Label the x-axis 
ylabel('frequency'); // Label the y-axis 

img_s=zeros(M, N, 'uint8');

// replacing image pixels with equalized value of gray Levels

for i=1:M 
    for j=1:N 
        curr=gray(i,j) 
        img_s(i,j)=fin(curr+1) 
    end
end

subplot(2,2,3); 
imshow(img_s);













