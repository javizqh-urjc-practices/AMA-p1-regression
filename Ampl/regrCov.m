function [x,W] = regrCov (M)
  A = [ones(10,1), M(:,1)];
  b = M(:,2);
  Cov = rand(10);
  V = transpose(Cov)*Cov;
  %V = cov(Cov);
  AtVA = transpose(A)*inv(V)*A;
  x = inv(AtVA) * transpose(A) * inv(V) * b;
  W = inv(AtVA);
end