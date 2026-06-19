function [reconstructedOutput, latentRepresentation, dataTest] = predictAEBTool3(obj,ytool,partLabels)
% Purpose:
% This function applies a trained RRAE to the Tool3 dataset. The test
% samples are preprocessed into the required cell-array format and passed
% through the encoder and constrained decoder to obtain their latent
% representations and reconstructed signals.
%
% Input Parameters:
% - obj: trained RRAE object
% - ytool: matrix containing the Tool3 acoustic measurements
% - partLabels: labels identifying the corresponding part number
%
% Return Parameters:
% - reconstructedOutput: reconstructed test signals
% - latentRepresentation: latent-space representation of each test signal
% - dataTest: original test samples used for evaluation
% Initializations
reconstructedOutput = {};
latentRepresentation = {};

% Data preprocessing
[dataTrain,dataTest] = generateAEBinputTool3(ytool,partLabels);
allData = {dataTrain{:},dataTest{:}};
originalInput = allData';

% Reconstruction
[latentRepresentation,reconstructedOutput] = obj.reconstructionAED(dataTest);

end