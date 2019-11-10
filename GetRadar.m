function r = GetRadar(dt)
%
%
persistent posp


if isempty(posp)
  posp = 0;
end


vel = 100  +  5*randn; % 100m/s의 속도 + 오차범위 5%
alt = 1000 + 10*randn; % 고도 1Km + 오차범위 5%

pos = posp + vel*dt;

v = 0 + pos*0.05*randn;

r = sqrt(pos^2 + alt^2) + v;

posp = pos;