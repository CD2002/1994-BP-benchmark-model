clc
clear
dx = 0.02;
dz = 0.02;
nx = 438;
nz = 376;
input='./model_seam/SEAM_Vs_Elastic_438_376.dat';
% output='./model_seam/Figure16c.tif';
map=mymap("seismic");
fid=fopen(input,'rb');
d=fread(fid,[nz,nx],'float');
xx=0:dx:(nx-1)*dx;
zz=0:dz:(nz-1)*dz;
%%%plot_part
figure(1);
g=pcolor(xx,zz,d);hold on
shading interp;
% scatter(400*dx/1000,0*dz/1000,200,'p','filled','k');hold on
% hold on
% line([3726,3726],[0,320],'linestyle','--','linewidth',2,'color','r'); 
colormap(map)
caxis([0 3000]);
xlim([0 (nx-1)*dx]);
ylim([0 (nz-1)*dz]);
% xticklabels({'0','5','10','15','20','25'});
colorbar;
h = colorbar;
h.Label.String = 'Velocity(m/s)';
set(h, 'LineWidth',2.0,'fontweight','bold','FontSize',16);
set(gca,'FontName','Times New Roman','FontSize',16,'fontweight','bold'); 
xlabel('Distance(km)','FontName','Times New Roman','FontSize',20,'fontweight','bold')
ylabel('Depth(km)','FontName','Times New Roman','FontSize',20,'fontweight','bold');
set(gca,'ydir','reverse','xaxislocation','top','yaxislocation','left',...
        'layer','top','Color','k','linewidth',2,'tickDir','out');
    
set(gca, 'outerposition', [-0.04,-0.090,1.050,1.100]); % 1:1
set(gcf, 'position', [500,300,750,500]);
% set(gca, 'outerposition', [-0.030,-0.090,1.050,1.100]); % 2:1
% set(gcf, 'position', [500,300,1000,400]);
% set(gca, 'outerposition', [-0.065,-0.090,1.11,1.100]); % 3:1
% set(gcf, 'position', [150,300,1200,400]);
% set(gca, 'outerposition', [-0.087,-0.090,1.15,1.100]); % 4:1
% set(gcf, 'position', [100,300,1600,400]);

box off
line([(nx-1)*dx,(nx-1)*dx],[0,(nz-1)*dz],'linewidth',2,'color','k');
line([0,(nx-1)*dx],[(nz-1)*dz,(nz-1)*dz],'linewidth',2,'color','k');
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