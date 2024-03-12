function x = regr (M)
  A = [ones(10,1), M(:,1)];
  b = M(:,2);
  x = inv(transpose(A)*A)*transpose(A)*b;
end