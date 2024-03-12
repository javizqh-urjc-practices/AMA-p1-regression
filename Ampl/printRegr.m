function printRegr (M,r)
    figure
    hold on
    %axis([0,10],[0,10])
    plot(M(:,1),M(:,2),'rx')
    a = linspace(0,10);
    y = r(1) + r(2)*a;
    plot(a,y)
    hold off
end