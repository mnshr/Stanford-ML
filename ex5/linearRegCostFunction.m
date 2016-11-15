function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
%Grad
H = X * theta;
Hy = H-y; %Errors vector
HyX = Hy' * X; 
HyXtmp = 1/m * HyX;
grad = HyXtmp;

%Cost
Hcc = X * theta;
Hy = Hcc - y;
Err_Sq = Hy.^2;
Err_Sq_Sum = sum(Err_Sq);
J = 1/(2*m)*Err_Sq_Sum;

%Jreg 
theta_org= theta;
theta(1) = 0;
theta = sum(theta.^2);
theta = lambda/(2*m)*theta;
J = J + theta;
%grad reg
theta = theta_org;
theta(1) = 0;
grad_reg = theta*lambda/m;
grad = grad_reg' + grad;

% =========================================================================

grad = grad(:);

end
