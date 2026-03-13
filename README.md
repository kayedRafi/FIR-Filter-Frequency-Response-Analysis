# FIR-Filter-Frequency-Response-Analysis
Design and analysis of a Band-Pass FIR filter using MATLAB to study frequency response and noise reduction in digital signals.
# FIR Filter Frequency Response Analysis

This project explores the fundamental characteristics of Finite Impulse Response (FIR) filters and analyzes the frequency response of noisy and enhanced signals using user-defined MATLAB functions.

## Project Overview

FIR filters are widely used in digital signal processing due to their stability and linear phase properties. In this project, a band-pass FIR filter is designed to suppress noise from an input signal while preserving the desired frequency components.

The filter is implemented using MATLAB and evaluated by analyzing magnitude response, phase response, and signal spectrum before and after filtering.

## Objectives

- Understand the characteristics of FIR filters
- Implement FIR filters using user-defined functions
- Analyze noisy and filtered signals
- Study frequency response and filter performance

## Filter Specifications

| Parameter | Value |
|----------|------|
| Filter Type | Band Pass |
| Sampling Frequency | 8 kHz |
| Passband | 1500 – 2750 Hz |
| Lower Stopband | 0 – 1 kHz |
| Upper Stopband | 3.5 – 4.5 kHz |
| Passband Ripple | 0.5 dB |
| Stopband Attenuation | 40 dB |

## Design Method

The FIR filter is designed using the **Windowing Method**, which truncates the ideal impulse response using a window function such as Hamming or Hanning.

## Software Used

- MATLAB R2023a

## Results

The frequency spectrum of the noisy signal contains unwanted high-frequency components. After applying the FIR filter, noise is significantly attenuated while preserving the desired signal frequencies.

## Applications

- Audio signal enhancement
- Communication systems
- Biomedical signal processing
- Noise reduction

## Author

Kayed Ibnet  
Department of ECE
