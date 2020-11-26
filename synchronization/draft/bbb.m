counter = 0;
a = 20:25;
b= 20:25;
for i =1:5
    plot(a(i),b(i),'r*')

saveas(gcf,strcat('case2_',num2str(counter),'.png'));
end