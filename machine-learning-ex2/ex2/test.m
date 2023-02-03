X = [1, 2, 3;
     1, 8, 7;
     1, 8, 9;
     5, 1, 3];
Y = [1;1;0;1];

theta = 2*ones(3,1);
L = 1;
[j,g] = costFunctionReg(theta, X, Y, L)