% 課題５　判別分析法
% 判別分析法を用いて画像二値化せよ．

ORG=imread('Leona.png'); % 原画像の入力
ORG = rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); axis image; colormap(gray); colorbar;
pause;

H = imhist(ORG); %ヒストグラムのデータを列ベクトルHに格納
myu_T = mean(H);
max_val = 0;
max_thres = 1;
for i=1:255
C1 = H(1:i); %ヒストグラムを2つのクラスに分ける
C2 = H(i+1:256);
n1 = sum(C1); %画素数の算出
n2 = sum(C2);
myu1 = mean(C1); %平均値の算出
myu2 = mean(C2);
sigma1 = var(C1); %分散の算出
sigma2 = var(C2);
sigma_w = (n1 *sigma1+n2*sigma2)/(n1+n2); %クラス内分散の算出
sigma_B = (n1 *(myu1-myu_T)^2+n2*(myu2-myu_T)^2)/(n1+n2); %クラス間分散の算出
if max_val<sigma_B/sigma_w %記録してある分離度と比較
max_val = sigma_B/sigma_w; %分離度を記録
max_thres =i; % 閾値を記録
end;
end;

IMG = ORG > max_thres; % 分離度が最大のときの閾値以上を1にする。
imagesc(IMG); axis image; colormap(gray); colorbar;