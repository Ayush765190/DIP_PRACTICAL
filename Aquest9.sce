//Question 9

// A) apply fft on given image.

img=imread('D:\DIP PRACTICAL\img8.webp');

a = rgb2gray(img);

subplot(1,2,1);
title('original image');
imshow(a);

af = fft2(im2double(a));

subplot(1,2,2);

title('after applying fft');

imshow(mat2gray(log(1+abs(fftshift(af)))));

//B) Perform low pass and high pass filtering in frequency domain.
figure;
img=imread('D:\DIP PRACTICAL\img3.jpeg');

a = rgb2gray(img);

subplot(3,3,1);
 title('original image');
imshow(a);

af=fft2(im2double(a));

f = mkfftfilter(a, 'gauss',0.5);

f1 = mkfftfilter(a, 'butterworth1',0.4);

f2 = mkfftfilter(a, 'binary', 0.2);

//Low pass

l1 = fftshift(f).*af;

l2 = fftshift(f1).*af;

l3 = fftshift(f2).*af;

//high pass

hf = mkfftfilter(a, 'gauss',0.1);

hf1 = mkfftfilter(a, 'butterworth1',0.08);

hf2 = mkfftfilter(a, 'binary',0.05);

h1 = fftshift(1-hf).*af;

h2 = fftshift(1-hf1).*af;

h3 = fftshift(1-hf2).*af;


//C) Apply IFFT to reconstruct image
img1 = real(ifft(l1));
img2 = real(ifft(l2));
img3 = real(ifft(l3));

img4 = real(ifft(h1));
img5 = real(ifft(h2));
img6 = real(ifft(h3));

subplot(3,3,2);
title('low pass gauss');
imshow(img1);

subplot(3,3,3);
title('low pass butterwoth1');
imshow(img2);

subplot(3,3,4);
title('low pass binary');
imshow(img3);

subplot(3,3,5);
title('high pass gauss');
imshow(img4);

subplot(3,3,6);
title('high pass butterwoth1');
imshow(img5);

subplot(3,3,7);
title('high pass binary');
imshow(img6);
