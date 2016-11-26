function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
rows_length = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %


    columns_length = size(X, 2);
    new_thetas = zeros(columns_length, 1);
    for n = 1:columns_length
        upper_part = 0;
        for m = 1:rows_length
            hx = 0;
            for z = 1:columns_length
                hx = hx+ X(m,z)*theta(z);
            end;
            upper_part = upper_part + (hx - y(m))*X(m,n);
        end;
        new_thetas(n) = theta(n) - (alpha*upper_part)/rows_length;
    end;
    
theta = new_thetas;



    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
