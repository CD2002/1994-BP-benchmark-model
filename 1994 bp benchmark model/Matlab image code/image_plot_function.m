%%Image_plot%%
clc
clear all
dx = 0.0075;
dz = 0.01;
nx = 861;
nz = 241;
input='result_pris.dat';
output='result_pris.tif';
fid=fopen(input,'rb');
d=fread(fid,[nz,nx],'float');
xx=0:dx:(nx-1)*dx;
zz=0:dz:(nz-1)*dz;
%%%plot_part
figure(1);
g=pcolor(xx,zz,d);hold on;
shading interp;
% line([0,(nx-1)*dx],[(220-1)*dz,(220-1)*dz],'linewidth',2,'linestyle','--','color','r');hold on;
% line([175*dx,175*dx],[100*dz,150*dz],'linewidth',2,'color','r');hold on;
% line([175*dx,300*dx],[100*dz,100*dz],'linewidth',2,'color','r');hold on
% line([300*dx,300*dx],[100*dz,150*dz],'linewidth',2,'color','r');hold on;
% line([175*dx,300*dx],[150*dz,150*dz],'linewidth',2,'color','r');hold on;
colormap(flipud(gray));
caxis([-335.972 310.356]);
xlim([0 (nx-1)*dx]);
% ylim([0 (nz-1)*dz]);
ylim([10*dz (nz-1)*dz]);
set(gca, 'yTick', [10*dz:50*dz:(nz-1)*dz]);
set(gca,'yTickLabel',{'0','0.5','1','1.5','2'});
% xlim([175*dx 300*dx]);
% ylim([100*dz 150*dz]);

set(gca,'FontName','Times New Roman','FontSize',16,'fontweight','bold'); 
xlabel('Distance(km)','FontName','Times New Roman','FontSize',20,'fontweight','bold')
ylabel('Depth(km)','FontName','Times New Roman','FontSize',20,'fontweight','bold');
set(gca,'ydir','reverse','xaxislocation','top','yaxislocation','left',...
        'layer','top','linewidth',2,'tickDir','out');
% set(gca, 'outerposition', [-0.04,-0.090,1.050,1.100]); % 1:1
% set(gcf, 'position', [500,300,750,500]);
% set(gca, 'outerposition', [-0.030,-0.090,1.10,1.100]); % 2:1
% set(gcf, 'position', [500,300,850,400]);
set(gca, 'outerposition', [-0.065,-0.090,1.15,1.100]); % 3:1
set(gcf, 'position', [150,300,1200,400]);
% set(gca, 'outerposition', [-0.09,-0.090,1.18,1.100]); % 4:1
% set(gcf, 'position', [100,300,1600,400]);

box off
line([(nx-1)*dx,(nx-1)*dx],[0,(nz-1)*dz],'linewidth',2,'color','k');
line([0,(nx-1)*dx],[(nz-1)*dz,(nz-1)*dz],'linewidth',2,'color','k');
% line([300*dx,300*dx],[100*dz,150*dz],'linewidth',2,'color','k');
% line([175*dx,300*dx],[150*dz,150*dz],'linewidth',2,'color','k');
% ax2 = axes('Position',get(gca,'Position'),...
%            'XAxisLocation','top',...
%            'YAxisLocation','right',...
%            'Color','none',...
%            'XColor','k','YColor','k',...
%            'linewidth',2);
% set(ax2,'YTick', []);
% set(ax2,'XTick', []);
% box on

% exportgraphics(gcf,output,'Resolution',600);