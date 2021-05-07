clc;clear;
foto = imread('C:\Program Files\Polyspace\R2020b\toolbox\sl3d\library\objects\Textures\General\Earth.jpg');
size(foto)
Enyakinkomsuluk = imresize(foto,0.5,'nearest');
Bikubik = imresize(foto,0.5,'bicubic');
Bilineer = imresize(foto,0.5,'bilinear');
figure('Name',' Metodların uzaklaştırma bazında karşılaştırılması ');
suptitle('Tüm metodlara 2 kat uzaklaştırma işlemi')
subplot 221;
subimage(foto);
ylabel('Pixel')
xlabel('Pixel')
title('Orijinal Fotoğraf');
subplot 222;
subimage(Enyakinkomsuluk);
ylabel('Pixel')
xlabel('Pixel')
title('En yakın komşuluk İnterpolasyon');
size(Enyakinkomsuluk)
subplot 223;
subimage(Bikubik);
ylabel('Pixel')
xlabel('Pixel')
title('Bikübik İnterpolasyon');
size(Bikubik)
subplot 224;
subimage(Bilineer);
ylabel('Pixel')
xlabel('Pixel')
title('Bilineer İnterpolasyon');
size(Bilineer)
Nearestneighbour = imresize(foto,2,'nearest');
Bicubic = imresize(foto,2,'bicubic');
Bilinear = imresize(foto,2,'bilinear');
figure('Name','Metodların yakınlaştırma bazında karşılaştırılması');
suptitle('Tüm metodlara 2 kat yakınlaştırma işlemi');
subplot 221;
subimage(foto);
ylabel('Pixel')
xlabel('Pixel')
title('Orijinal Fotoğraf');
subplot 222;
subimage(Nearestneighbour);
ylabel('Pixel')
xlabel('Pixel')
title('En yakın komşuluk Interpolasyon');
size(Nearestneighbour)
subplot 223;
subimage(Bicubic);
ylabel('Pixel')
xlabel('Pixel')
title('Bikübik Interpolasyon');
size(Bicubic)
subplot 224;
subimage(Bilinear);
ylabel('Pixel')
xlabel('Pixel')
title('Bilineer Interpolasyon');
size(Bilinear)