function [dataCell,dataTest] = generateAEBinputTool3(ytool,partLabels)
% generateAEBinputTool3
%
% Purpose:
% Convert the Tool3 milling dataset into the cell-array format required
% by the Rayleigh-Ritz Autoencoder (RRAE).
%
% Parts 1 and 2 correspond to a healthy tool and are used for training.
% Parts 3-7 are used for testing.

% Identify training and testing samples
healthyIdx = find(partLabels <= 2);
testIdx = find(partLabels > 2);

% Extract training and testing matrices
Ytrain = ytool(:,healthyIdx);
Ytest = ytool(:,testIdx);

% Convert training samples to cell array
dataCell = {};
for i = 1:size(Ytrain,2)
    dataCell{i} = Ytrain(:,i);
end

%Convert testing samples to cell array
dataTest = {};
for i = 1:size(Ytest,2)
    dataTest{i} = Ytest(:,i);
end

end