
class transaction;
  //declaring the transaction items
  //Random cyclic. Generate the numbers uniquely until one cycle completion happens and then follows back.
  randc bit [8:0] DIN;
  bit [8:0] Bus;
  bit Done;
  bit [8:0] temp_add_res,temp_sub_res,temp_mvi,temp_mv;
  /* 
  The constraints are made to generate only one opcode here. Modify to generate all. 
  Initial we want the register to be filled with some content then only we can do or carry out other operation otherwise all will be in High-impendance state.
  Refer the Simple Processor J Component Report.pdf
  That's the reason we are generating the mv opcode only. 
  Whereas the Register are from R0 to R7. 
  */
  constraint din {DIN[8:6] >= 3'd0;DIN[8:6] < 3'd1;DIN[5:3]>= 3'd0;DIN[5:3]<= 3'd7;DIN[2:0]>= 3'd0;DIN[2:0]<= 3'd7;};
  // Constraint for generating all opcodes. 
  constraint ALL_OPCODES {DIN[8:6] >= 3'd0;DIN[8:6] < 3'd7;DIN[5:3]>= 3'd0;DIN[5:3]<= 3'd7;DIN[2:0]>= 3'd0;DIN[2:0]<= 3'd7;};

  function new();
	this.DIN <= DIN;
  endfunction

  function automatic void print (bit [8:0] DIN);
	  this.DIN <= DIN;
	  $display("Time=%0t --  DIN=%b_%b_%b  --",$time,DIN[8:6],DIN[5:3],DIN[2:0]);
  endfunction
  
endclass


/*
// Testbench to evaluate only transaction class.
module tb();
  transaction trans;
  initial
  begin
    trans = new();
    // Disabling all the constraints
    // trans.rand_mode(0);
    // Disabling the constraint type din.
    trans.din.constraint_mode(0);
    $display("Disabling the Constraint condition Name : din");
    for (int i =0; i <8; i++)
    begin     
      #5 assert(trans.randomize());
          trans.print (trans.DIN);
    end
  end
endmodule
*/







