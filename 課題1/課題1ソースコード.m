% �ۑ�P�@�W�{���Ԋu�Ƌ�ԉ𑜓x
% �摜���_�E���T���v�����O���āi�W�{���Ԋu��傫�����āj
% �\������D

clear; % �ϐ��̃I�[���N���A

IMG=imread('Leona.jpg'); % ���摜�̓���
imagesc(IMG); axis image; % �摜�̕\��
pause; % �ꎞ��~
for i=1:5 % 5��J�Ԃ�
IMG = imresize(IMG,0.5); % �摜�̏k��
IMG2 = imresize(IMG,2^i,'box'); % �摜�̊g��
imagesc(IMG2); axis image; % �摜�̕\��
pause; % �ꎞ��~
end %��������������Ȃ����for�ɖ߂�A���������ΏI��