module test;
    reg A, B, Cin;
    wire D, Cout;

    onebitadd uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .D(D),
        .Cout(Cout)
    );

    initial begin
      
        for (integer i = 0; i < 8; i = i + 1) begin
            {A, B, Cin} = i;   
            #1;        
          $display("A=%b B=%b  C=%b         D=%b   Cout=%b", A, B, Cin, D, Cout);
          
        end
        $finish;
    end
endmodule
