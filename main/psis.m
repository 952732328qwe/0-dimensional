function psis = psis(ts,ta,psisr,W1,es,ea)
addpath main public;
%psis ˮ��ľ�����ͨ����psisr-̫�����䣬psiar-������������,rs-ˮ���̫������ķ�����,ra-ˮ��Դ�����������ķ����ʣ�psiwe-ˮ�淢���ĳ�������,psic-����
%psisr,es,ea,ta,W1,
ra=0.03;
rs=0.07;
%psisr,es,ea,ta,W1,
sigma=5.67e-8;
Cr=0.17;
omega=0.5;
epsilonw=0.97;
P0=97220;
Cb=0.00061;
%syms t;
epsilona=(1-0.261*exp((-0.74e-4)*ta^2))*(1+Cr*omega^2);
% Cr-���Ʋ��ȷ����ϵ����omega-�Ʋ㸲�ǵı���
psiar=sigma*epsilona*(ta+273.15)^4;
% sigma-Stefan-Boltzmann����,epsilona-����������,ta-����
psiwr=sigma*epsilonw*(ts+273.15)^4;
% epsilonw-ˮ�泤��������
psie1=psie(ts,ta,W1);
% es-ˮ���¶�����Ӧ�ı���ˮ��ѹ��ea-������ˮ��ѹ��W1-ˮ���Ϸ�1.5�״��ķ���
psic=(psie1/(es-ea))*Cb*P0*(ts-ta);
% P0-ˮ���ϵĴ���ѹ����Cb-Bowen����
psis = (1-rs)*psisr+(1-ra)*psiar-psiwr-psie1-psic;
end

