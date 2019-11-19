with Ada.Text_IO; use Ada.Text_IO;

procedure Rec_Select is

   type Month_Type is
     (January, February, March, April, May, June, July,
      August, September, October, November, December);

   type Date is record
      Day   : Integer range 1 .. 31;
      Month : Month_Type;
      Year  : Integer range 1 .. 3000 := 2032;
   end record;

   Some_Day : Date := (16, June, 1989);

begin
   Some_Day.Day := 19;
   Some_Day.Month := November;
   Some_Day.Year := 2019;
   Put_Line ("Today is: " & Integer'Image (Some_Day.Day)
             & ",  The Month is: " & Month_Type'Image (Some_Day.Month)
             & ", the Year is: " & Integer'Image (Some_Day.Year));
end Rec_Select;

