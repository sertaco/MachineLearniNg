
clear ; close all; clc
%% Training set for XOR operator
X = [0 0 1 1 ...
    ;0 1 0 1];
y = [1 0 0 1];

%% Training a two layer NN with 2 hidden layers
% Note: As expected xor can be imitated with atleast two hidden layers.
% With one hidden layer, the NN reduces to 1 layer NN, that is a basic
% logit regressor, which cannot learn xor function.
% Note: With only 1 hidden layer and 400 iterations sometimes I don't get XOR 
% (depending on random initial theta's). Increasing the number of hidden layers 
%guarantee the fit. (With h=4 it's almost always trained well)

hidden_layer_size = 4;
lambda = 0;
MaxIter = 2000;

[Theta1, Theta2] =  NN2(X,y,hidden_layer_size,MaxIter,lambda);

%% Checking the results for the training set
pred = predictNN2(Theta1, Theta2, X);

fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == y)) * 100);
