module DFF (
	input clk,    // Enable
	input clr,	 // Asynchronous clear
	input D,	 // Data input
	output Q,
	output Qbar
);

wire X, Y;
reg Q;
reg Qbar;

always @(posedge clk or negedge clr) 
begin 
	if(~clr) 
	begin
		Q <= 0;
		Qbar <= 1;
	end 
	else 
	begin
		Q <= D;
		Qbar <= ~D;
	end
end

endmodule