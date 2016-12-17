% ‰Û‘è‚Q@ŠK’²”‚Æ‹^Ž——ÖŠs
% ‚QŠK’²C‚SŠK’²C‚WŠK’²‚Ì‰æ‘œ‚ð¶¬‚¹‚æD

clear; % •Ï”‚ÌƒI[ƒ‹ƒNƒŠƒA

ORG=imread('Leona.jpg'); % Œ´‰æ‘œ‚Ì“ü—Í
ORG = rgb2gray(ORG); % ‰æ‘œ‚ðƒOƒŒ[ƒXƒP[ƒ‹‚É•ÏŠ·
imagesc(ORG); % ‰æ‘œ‚ð•\Ž¦
colorbar; %  ƒJƒ‰[ƒo[‚ð•\Ž¦
colormap(gray); % ƒJƒ‰[ƒ}ƒbƒv‚ðƒOƒŒ[ƒXƒP[ƒ‹‚ÉÝ’è
axis image; % ƒAƒXƒyƒNƒg”ä‚ðŒÅ’è
pause; % ˆêŽž’âŽ~

% ‚QŠK’²‰æ‘œ‚Ì¶¬
IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar; axis image;
pause;

% ‚SŠK’²‰æ‘œ‚Ì¶¬
IMG0 = ORG>64;
IMG1 = ORG>128;
IMG2 = ORG>192;
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG); colormap(gray); colorbar; axis image;
pause;

% ‚WŠK’²‰æ‘œ‚Ì¶¬
IMG0 = ORG>32;
IMG1 = ORG>64;
IMG2 = ORG>96;
IMG3 = ORG>128;
IMG4 = ORG>160;
IMG5 = ORG>192;
IMG6 = ORG>224;
IMG = IMG0 + IMG1 + IMG2 + IMG3 + IMG4 + IMG5 + IMG6;
imagesc(IMG); colormap(gray); colorbar; axis image;
