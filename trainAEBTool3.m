function trainAEBTool3(obj,ytool,partLabels,basisFun)
% trainAEBTool3
%
% Purpose:
% Train the Rayleigh-Ritz Autoencoder (RRAE) using the Tool3 milling data.
%
% Inputs:
%   obj         - AutoencoderBasisFunCantilever object
%   ytool       - matrix containing all Tool3 signals (180 x 224)
%   partLabels  - vector containing the part number of each signal
%   basisFun    - basis function matrix used by the decoder
%
% Description:
%   Converts the Tool3 data into the cell-array format required by the
%   autoencoder, stores the basis functions, and trains the model.

%Convert Tool3 data into cell-array format
[dataCell,~] = generateAEBinputTool3(ytool,partLabels);
% Store basis functions
obj.BasisFunctions = basisFun;
% Train the autoencoder
obj.setUpAndTrainAEB(dataCell,basisFun);

end