function x = regrRecurrente (M1, M2)
  A = [ones(10,1), M1(:,1)];
  AtA = inv(transpose(A)*A);
  b = M1(:,2);
  r = [1, M2(1)];
  b2 = M2(2);
  c = 1/(1+r*AtA*transpose(r));
  x = (AtA-c*AtA*transpose(r)*r*AtA) * (transpose(A)*b+transpose(r)*b2);
end