with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Check_Positive is
   N : Integer;
begin
   Put ("Enter an integer value: ");  -- Put a String
   Get (N);  --  Read in an integer value
   if N > 0 then
      Put (N);  --  Put an Integer
      Put_Line (" is a positive number");
   else
    Put_line ("Not a positive number, exiting the program");
   end if;
end Check_Positive;
