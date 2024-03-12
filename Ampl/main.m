points = 10.*rand(10,2);
p = [1 1; 2 2; 3 3; 4 4; 5 5; 6 6; 7 7 ; 8 8; 9 9; 10 10];
points_extra = 10.*rand(6,2);

% First regrex
x = regr(points);
printRegr(points,x)
% Adding regrex
for i= 1:6
  x = regrRecurrente(points,points_extra(i,:));
end
printRegr([points;points_extra],x)

% Now with Kalman
[x, W] = regrCov(points);
printRegr(points,x);

% First 1

[x,W] = regrRecurrenteCov(points,points_extra(1,:),x,W);

% Then 2
[x,W] = regrRecurrenteCov(points,points_extra(2:3,:),x,W);

% Final 3
[x,W] = regrRecurrenteCov(points,points_extra(4:6,:),x,W);

printRegr([points;points_extra],x)