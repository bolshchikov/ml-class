function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

part1 = 0;
for i = 1:m
    hx = 0;
    for z = 1:size(X, 2)
        hx = hx + X(i,z)*theta(z);
    end
    part1 = part1 + (hx-y(i))^2;
end;

J = part1/(2*m);



% =========================================================================

end
