function f3 = testrk(A,Ab)
addpath main public;
global ts ta psisr W1 es ea i L;
syms t;
f1=psis(ts,ta,psisr,W1,es,ea);
f2=psig(t,Ab);
f4=QL(i,L);
%����������븺�ɺ��ˮ�±仯��������ʽ�м���f4
f3=(A*f1-Ab*f2+f4)*3600/(1000*117600*4186);
% ��άˮ��ģ���Ҳ��ʽ
end
