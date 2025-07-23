module test3(clk , rst , req , grant);
input clk , rst;
input [3:0] req;
output reg [3:0] grant;
reg [2:0] present_state;
reg [2:0] next_state;
parameter [2:0] S_IDLE = 3'b000;
parameter [2:0] S_0 = 3'b001;
parameter [2:0] S_1 = 3'b010;
parameter [2:0] S_2 = 3'b011;
parameter [2:0] S_3 = 3'b100;
always @(posedge clk or posedge
rst) begin
if(rst)
present_state <= S_IDLE;
else
present_state <= next_state;
end
// Next State Logic
always @(*) begin
case (present_state)
S_IDLE : begin
if(req[0])
next_state = S_0;
else if(req[1])
next_state = S_1;
else if(req[2])
next_state = S_2;
else if(req[3])
next_state = S_3;
else
next_state = S_IDLE;
end
S_0 : begin
if(req[1])
next_state = S_1;
else if(req[2])
next_state = S_2;
else if(req[3])
next_state = S_3;
else if(req[0])
next_state = S_0;
else
next_state = S_IDLE;
end
S_1 : begin
if(req[2])
next_state = S_2;
else if(req[3])
next_state = S_3;
else if(req[0])
next_state = S_0;
else if(req[1])
next_state = S_1;
else
next_state = S_IDLE;
end
S_2 : begin
if(req[3])
next_state = S_3;
else if(req[0])
next_state = S_0;
else if(req[1])
next_state = S_1;
else if(req[2])
next_state = S_2;
else
next_state = S_IDLE;
end
S_3 : begin
if(req[0])
next_state = S_0;
else if(req[1])
next_state = S_1;
else if(req[2])
next_state = S_2;
else if(req[3])
next_state = S_3;
else
next_state = S_IDLE;
end
default : begin
if(req[0])
next_state = S_0;
else if(req[1])
next_state = S_1;
else if(req[2])
next_state = S_2;
else if(req[3])
next_state = S_3;
else
next_state = S_IDLE;
end
endcase
end
// Output Logic
always @(*) begin
case(present_state)
S_0 : grant = 4'b0001;
S_1 : grant = 4'b0010;
S_2 : grant = 4'b0100;
S_3 : grant = 4'b1000;
default : grant = 4'b0000;
endcase
end
endmodule
