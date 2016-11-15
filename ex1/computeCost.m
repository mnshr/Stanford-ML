function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
h = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

h = X*theta;
h = h - y;
for i = 1:length(h);
% h(i)= square(h(i));
 h(i) = h(i)^2;
 J = J + h(i);
end
J = J/2;
J = J/length(X);
fprintf('Theta found by gradient descent: %f\n', J);



% =========================================================================

end
