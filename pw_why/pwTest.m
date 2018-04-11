clear,clc,close all
phase = -pi + 2*pi*rand(128,128);
% load 'IM.mat'; IM = IM(1:10,1:10); phase = angle(IM);

N = size(phase);
figure, imshow(phase, [-pi, pi]) ,title('Original phase');
[ resMap ] = phaseResidue(phase);
% resMap3 = PhaseResidues(phase, ones(size(phase))); % ���к�С�Ĳ��, Ӧ���ǻ����������, ����һ����2pi������,���Բ�Ӱ��
figure, imshow(resMap) ,title('Residue flag');

y=zeros(N,'logical');