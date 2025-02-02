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

	total_t1 = 0;
	total_t2 = 0;
	for i = 1:m;
		total_t1 = total_t1 + (theta(1,1)*X(i,1) + theta(2,1)*X(i,2) - y(i))*X(i,1);
		total_t2 = total_t2 + (theta(1,1)*X(i,1) + theta(2,1)*X(i,2) - y(i))*X(i,2);
	end;


	theta(1,1) = theta(1,1) - (alpha/m) * (total_t1);
	theta(2,1) = theta(2,1) - (alpha/m) * (total_t2);



    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
