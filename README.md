**# Finite-impulse-response-filter-of-order-10**
**📌 Overview**
This project implements a Finite Impulse Response (FIR) filter of order 10, a fundamental digital signal processing (DSP) component used to filter signals by removing unwanted noise or extracting useful frequency components.
An FIR filter produces an output that depends only on the current and past input values, making it inherently stable and suitable for hardware implementations such as FPGA and ASIC designs.

**Features**
FIR filter of order 10 (11 taps)
Linear and stable filter structure
Suitable for real-time signal processing
Hardware-friendly implementation
Can be extended for higher-order filters

**Theory**
The output of an FIR filter is given by:
y[n]=∑k=0Nh[k]⋅x[n−k]y[n] = \sum_{k=0}^{N} h[k] \cdot x[n-k]y[n]=k=0∑N​h[k]⋅x[n−k]
Where:
y[n]y[n]y[n]: Output signal
x[n]x[n]x[n]: Input signal
h[k]h[k]h[k]: Filter coefficients
N=10N = 10N=10: Filter order
This means the output is a weighted sum of current and past inputs.

**Implementation Details**
Structure
Shift register to store previous inputs
Multipliers for coefficient multiplication
Adders to sum the results
Components
11 delay elements (for order 10)
11 multipliers
Adder tree

**Technologies Used**
Hardware Description Language (Verilog)
Simulation tools (Vivado)
MATLAB

**Project Structure**
FIR-Filter-Order-10/│── src/│   ├── fir_filter.v│   ├── coefficients.v││── tb/│   ├── fir_filter_tb.v││── docs/│   ├── design_notes.md││── README.md

**Testbench**
The testbench:
    Provides sample input signals
    Verifies filter response
    Checks correctness of output

**Applications**
Audio signal filtering
Noise reduction
Communication systems
Image processing
FPGA-based DSP systems




