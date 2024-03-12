function [x, W] = regrRecurrenteCov (M1, M2, xant, Want)
  A1 = [ones(size(M1,1),1), M1(:,1)];
  A = [ones(size(M2,1),1), M2(:,1)];
  %A = [A1;A2];
  b2 = M2(:,2);
  %Cov = rand(size(M1,1) + size(M2,1));
  Cov = rand(size(M2,1));
  V = transpose(Cov)*Cov;
  %V = cov(Cov)
  AtVA = transpose(A)*inv(V)*A;
  W = inv(inv(Want) + AtVA);
  K = W*transpose(A)*inv(V);
  x = xant + K*(b2 - A*xant);
end