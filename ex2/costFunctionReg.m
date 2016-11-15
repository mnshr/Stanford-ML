function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


thetaTX = X*theta;
G = sigmoid(thetaTX);

theta(1) = 0;
thetaS = theta' * theta;
thetaS = (lambda/(2*m)) * thetaS;

LG = log (G);
LG1 = log(1-G);
Left = -y' * LG;
Right = (1-y)' * LG1;
J = Left-Right;
J = J/m;
J = J + thetaS;

theta = theta * lambda/m;
grad = X' * (G - y);
grad = grad/m;

grad=grad+theta;


% =============================================================

end
