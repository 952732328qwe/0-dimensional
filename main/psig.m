function psig = psig(t,Ab)
addpath main public;
%psig-��ˮ�������Ļ�����,lambdag-�����ĵ���ϵ��,P-������ܳ�,tg-���صĵ���ˮ�¶�
dg = 2;
lambdag=2.78;
P=954;
tg=21;
psig = (0.99*(lambdag/dg)+0.9*(lambdag*P/Ab))*(t-tg);
% dg-����ˮλ�����֮��Ĵ�ֱ���룬lambdag-�����ĵ���ϵ����P-������ܳ���tg-���صĵ���ˮ�¶�
end

