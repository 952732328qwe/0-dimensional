function QL = QL(i,L)
addpath main public;
global COP;
if i>7535 || i<1656 %��ů��
    %ͨ��ʱ���������ֿյ�������ů���Լ����ȼ�
    QL=-(1-1/COP)*L;
elseif i>1656 && i<6192 %�յ���
    QL=(1+1/COP)*L;
else
    QL=0; %���ȼ�
end
end

