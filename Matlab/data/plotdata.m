%%

elx = @(t, xc, a, b, phi) xc+a*cos(t)*cos(phi)-b*sin(t)*sin(phi);
ely = @(t, yc, a, b, phi) yc+a*cos(t)*sin(phi)-b*sin(t)*cos(phi);

N = 500;
t = randn(1, N)*2*pi;
el1x = elx(t, -6, 2, 6, -2);, el1y = ely(t, 0, 2, 6, -2);
el2x = elx(t, -2, 4, 3, -1);, el2y = ely(t, -2, 4, 3, -1);
el3x = elx(t, 2, 4, 1, 0.9);, el3y = ely(t, 4, 4, 1, 0.9);

edata = [el1x(:), el1y(:); el2x(:), el2y(:); el3x(:), el3y(:); ];
edata = edata + randn(size(edata))*0.5;
w = ones(numel(el1x),1);
elabels = [w;w*2;w*3];

%%

figure(1), hold on;
scatter(edata(:,1), edata(:,2),[],elabels,'linewidth', 2.5)
axis off

%%

t = rand(1,1000)*2*pi;
el1x = elx(t, 0, 3, 9, -1);, el1y = ely(t, 0, 3, 9, -1);
el1x = el1x + randn(size(el1x)).*t*.2;
el1y = el1y + randn(size(el1y)).*t*.2;
figure(2);
plot(el1x,el1y,'k.','markersize',15);
axis off
