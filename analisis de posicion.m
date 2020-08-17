L1=5;
L2=5*(2)^(1/2);
L3=0;

delta=10;
deltar=delta*pi/180;
teta=(0:deltar:2*pi)';
n=length(teta);
w=zeros(n,1)

for p=1:n
  alfa=pi-asin((L1*sin(teta(p))-L3)/L2);
  x=L1*cos(teta(p))-L2*cos(alfa)-(L2-L1);
  %x=L1*cos(teta(p))-(L2*L2-L1*L1(sin(teta(p))*sin(teta(p))))^(1/2);
  plot([0 L1*cos(teta(p)) x],[0 L1*sin(teta(p)) L3],'b')
  xlim([-5 10])
  ylim([-6 6])
  hold on;
  xlabel('posicion (cm) ')
  title('Analisis de la posicion -angulo (c/10°) ')
  end 