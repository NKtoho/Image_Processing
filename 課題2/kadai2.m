% 課題２　階調数と疑似輪郭
% ２階調，４階調，８階調の画像を生成せよ．

clear; % 変数のオールクリア

ORG=imread('Leona.png'); % 原画像の入力
ORG = rgb2gray(ORG); % 画像をグレースケールに変換
imagesc(ORG); % 画像を表示
axis image; % アスペクト比を固定
colorbar; %  カラーバーを表示
colormap(gray); % カラーマップをグレースケールに設定
pause; % 一時停止

% ２階調画像の生成
IMG = ORG>127;
imagesc(IMG); axis image; colormap(gray); colorbar;
pause;
a=[4,5,6];
b= a>5*3-11;
disp(b);
pause;
% ４階調画像の生成
IMG = ORG>63; % 65以上を1、それ以外を0として記録
for i=2:3 % 2回繰返し
   IMG = IMG + (ORG>64*i-1); % 4等分の区間を加算
end % 条件が満たされるまで繰返し
imagesc(IMG); axis image; colormap(gray); colorbar;
pause;

% ８階調画像の生成
IMG = ORG>31; % 32以上を1、それ以外を0として記録
for i=2:7 % 6回繰返し
   IMG = IMG + (ORG>32*i-1); % 8等分の区間を加算
end % 条件が満たされるまで繰返し
imagesc(IMG); axis image; colormap(gray); colorbar;