% 課題４　画像のヒストグラム
% 画素の濃度ヒストグラムを生成せよ．

clear; % 変数のオールクリア

ORG=imread('Leona.png'); % 原画像の入力
ORG=rgb2gray(ORG); % カラー画像をグレースケールに変換
imagesc(ORG); axis image; colormap(gray); colorbar;
pause;

imhist(ORG); % ヒストグラムの表示





