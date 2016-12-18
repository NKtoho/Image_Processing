% 課題１　標本化間隔と空間解像度
% 画像をダウンサンプリングして（標本化間隔を大きくして）表示せよ．

clear; % 変数のオールクリア

IMG=imread('Leona.png'); % 原画像の入力
imagesc(IMG); axis image; % 画像の表示
pause; % 一時停止
for i=1:5 % 5回繰返し
IMG = imresize(IMG,0.5); % 画像の縮小
IMG2 = imresize(IMG,2^i,'box'); % 画像の拡大
imagesc(IMG2); axis image; % 画像の表示
pause; % 一時停止
end %条件が満たされなければforに戻る、条件が満たされれば終了