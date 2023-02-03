function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
  


    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

  k = 0;
  for i = 1:m
    k = k + (X(i,:)*theta - y(i)) * X(i,1);
  end
  k2 = 0;
  for j = 1:m
    k2 = k2 + (X(j,:)*theta - y(j)) * X(j,2);
  end
  theta(1,1) = theta(1,1) - alpha*k/m;
  theta(2,1) = theta(2,1) - alpha*k2/m;





    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
