% clear all;
% close all;
% a = 1:5;
% b = 1:5;
% for i=1:5
%     for j=1:5
%     figure()
%     plot(a(i),b(j),'*r')
%     saveas(gcf,sprintf('FIG%d.png',i))
% end

clear all;
close all;
a = 1:5;
b = 1:5;
counter=0;
for i=1:5
    for j=1:5
    figure()
    plot(a(i),b(j),'*r')
    counter = counter+1;
    saveas(gcf,strcat('case1_',num2str(counter),'.png'));
    end
end
