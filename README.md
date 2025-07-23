# Verilog-Based-Round-Robin-Arbiter-for-Fair-Resource-Allocation
A Verilog-based arbiter that shares resources fairly among multiple users. It works in a round-robin manner, giving each user a turn and skipping inactive ones. Tested using simulation and waveform analysis.

# Features
Equal priority scheduling of 4 requesters (R1–R4)

Automatic skipping of idle requesters

Finite State Machine (FSM) implementation

Fully simulated with Verilog testbench

RTL and waveform analysis

# Architecture
FSM with 5 states: Idle, S0, S1, S2, S3

req[3:0] for requests and grant[3:0] for outputs

Grant logic based on current active requester

# RTL Diagram
<img width="500" height="500" alt="image" src="https://github.com/user-attachments/assets/a215126d-e5fe-4b86-ae74-84c9d13c6c96" />
