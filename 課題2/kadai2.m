% �ۑ�Q�@�K�����Ƌ^���֊s
% �Q�K���C�S�K���C�W�K���̉摜�𐶐�����D

clear; % �ϐ��̃I�[���N���A

ORG=imread('Leona.png'); % ���摜�̓���
ORG = rgb2gray(ORG); % �摜���O���[�X�P�[���ɕϊ�
imagesc(ORG); % �摜��\��
axis image; % �A�X�y�N�g����Œ�
colorbar; %  �J���[�o�[��\��
colormap(gray); % �J���[�}�b�v���O���[�X�P�[���ɐݒ�
pause; % �ꎞ��~

% �Q�K���摜�̐���
IMG = ORG>127;
imagesc(IMG); axis image; colormap(gray); colorbar;
pause;
a=[4,5,6];
b= a>5*3-11;
disp(b);
pause;
% �S�K���摜�̐���
IMG = ORG>63; % 65�ȏ��1�A����ȊO��0�Ƃ��ċL�^
for i=2:3 % 2��J�Ԃ�
   IMG = IMG + (ORG>64*i-1); % 4�����̋�Ԃ����Z
end % ���������������܂ŌJ�Ԃ�
imagesc(IMG); axis image; colormap(gray); colorbar;
pause;

% �W�K���摜�̐���
IMG = ORG>31; % 32�ȏ��1�A����ȊO��0�Ƃ��ċL�^
for i=2:7 % 6��J�Ԃ�
   IMG = IMG + (ORG>32*i-1); % 8�����̋�Ԃ����Z
end % ���������������܂ŌJ�Ԃ�
imagesc(IMG); axis image; colormap(gray); colorbar;