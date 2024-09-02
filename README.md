# 🚀 EE/CMPEN 417 - Field Programmable Devices: Lab 1 - Spring 2024


## 📜 Project Overview

In this lab, I explored different adder designs using various techniques discussed in class, and analyzed the performance of each design through static timing analysis. The lab consists of five main parts, along with an extra credit section. Each part builds upon the previous one, allowing us to deepen our understanding of adder architectures and their impact on performance.

## 🛠️ Lab Breakdown

### Part 0: 1-bit Ripple Carry Full Adder
- **Objective:** Create a 1-bit Ripple Carry Full Adder as the foundation for subsequent designs.
  
### Part 1: Variable Bit-width Ripple Carry Adder
- **Objective:** Expand the 1-bit adder to a variable bit-width ripple carry adder.
  
### Part 2: 128-bit Ripple Carry Adder with Pipelining
- **Objective:** Implement pipelining registers every 16-bits in a 128-bit ripple carry adder. Instantiate eight 16-bit adders from Part 1's design and insert pipelining registers to increase computation speed.

### Part 3: Variable Bit-width Behavioral Adder
- **Objective:** Develop a behavioral adder with a variable bit-width to optimize processing efficiency further.

### Part 4: Static Timing Analysis
- **Objective:** Simulate each design, analyze the worst negative slack (WNS), and inspect the critical paths.

### Extra Credit
- **Objective:** Answer the question on how to design a 256-bit adder to operate at a frequency close to that of a 32-bit adder, considering the impact on latency.

## 🔬 Performance Comparison

### Frequency Analysis:
- **Part 1:**
  - Maximum frequency: 0.0552 GHz
- **Part 2:**
  - Maximum frequency: 0.1290 GHz
- **Part 3:**
  - Maximum frequency: 0.1958 GHz
- **Part 5:**
  - Maximum frequency: 0.0823 GHz

### Key Observations:
- The ripple carry adder (RCA) in Part 1 had the lowest operating frequency. 
- Introducing pipelining in Part 2 significantly increased the frequency, enabling higher computation rates through parallel operations.
- The behavioral implementation in Part 3 achieved the highest frequency, demonstrating the impact of optimized design on processing efficiency.

### Latency Considerations:
- **Part 2:** Despite improved throughput and frequency due to pipelining, there was an 8-clock cycle delay between each input, highlighting the trade-off between speed and latency.

## 🧠 Key Question: 
### How to Design a 256-bit Adder with a Frequency Close to a 32-bit Adder?
To achieve this, a pipelined design could be utilized by breaking the 256-bit adder into stages, such as using sixteen 16-bit adders with pipelining registers every 16-bits. While this approach could bring the frequency close to that of a 32-bit adder, it would also increase latency, as seen with the pipelining technique.

## 📸 Screenshots

- **Part 1:** WNS, Waveforms, Paths for 16-bit, 32-bit, 64-bit, and 128-bit adders.
- **Part 2 & 3:** WNS, Waveforms, Paths.
- **Part 5:** 4-bit Waveform, WNS, and setup.
