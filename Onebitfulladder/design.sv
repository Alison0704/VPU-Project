module onebitadd
  (
    input wire A,
    input wire B,
    input wire Cin,
    output wire D,
    output wire Cout
  );
  
  assign D=A^B^Cin;
  assign Cout= (B&Cin)|(A&B)|(A&Cin);
  
endmodule