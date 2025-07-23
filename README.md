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

# Simulations
<img width="500" height="500" alt="image" src="https://github.com/user-attachments/assets/a85f44f5-351e-4c57-8b25-c51a1e3ca5ed" />
<img width="500" height="500" alt="image" src="https://github.com/user-attachments/assets/87c3b511-4325-4a62-84f9-fd05955b7418" />

# State Diagram
![WhatsApp Image 2025-07-23 at 16 01 47_d3ce589a](https://github.com/user-attachments/assets/cd9fc922-b8ad-41ed-b646-b2cc452cf59c)


