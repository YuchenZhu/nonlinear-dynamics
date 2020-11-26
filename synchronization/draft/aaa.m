counter = 0;
a = 1:5;
b= 1:5;
for i =1:5
    plot(a(i),b(i),'r*')

saveas(gcf,strcat('case1_',num2str(counter),'.png'));
end