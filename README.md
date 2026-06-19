# tool-wear-monitoring-rrae
Tool wear monitoring using a Rayleigh-Ritz Autoencoder (RRAE) and acoustic machining data.

# Tool Wear Monitoring using a Rayleigh-Ritz Autoencoder

## Overview

This project investigates whether acoustic measurements from a CNC milling process can be used to identify tool wear using a Rayleigh-Ritz Autoencoder (RRAE).

The model was trained using healthy tool measurements and evaluated on progressively worn tool conditions. Reconstruction errors were then analysed as a potential wear indicator.

## Methodology

* Data preprocessing and organisation of Tool3 measurements
* Selection of Fourier basis functions for the constrained decoder
* Training of the RRAE on healthy operating conditions
* Signal reconstruction of worn tool measurements
* Reconstruction-error based wear analysis

## Results

The trained model successfully reconstructed the dominant behaviour of the acoustic signals. Worn tool conditions generally produced larger reconstruction errors than healthy conditions, indicating that reconstruction-based anomaly detection can be used for condition monitoring.

## Repository Contents

* `generateAEBinputTool3.m`
* `trainAEBTool3.m`
* `predictAEBTool3.m`
* Analysis report and figures

## Note

The original RRAE framework was provided by the Chair of Automation, University of Leoben, and is not included in this repository.
