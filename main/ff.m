function k = ff(y)
addpath main public;
A=19600;
Ab=29400;
z=testrk(A,Ab);
%ʵ��ˮ��ģ���Ҳ��ʽ����z=�Ҳ��ʽ
g=vpa(z,4)
%�������ʽ���������4λС��
f=matlabFunction(z);
%��zֵ������t����ʽ�е�t
k = f(y);
end