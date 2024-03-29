with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Direction is
   N : Integer;
begin
   Put ("Enter the coordinate value: ");  -- Puts a String
   Get (N);  --  Reads an Integer
   Put (N);  --  Puts an Integer
   if N = 0 or N = 360 then
      Put_Line (" is due east");
   elsif N in 1 .. 89 then
      Put_Line (" is in the northeast quadrant");
   elsif N = 90 then
      Put_Line (" is due north");
   elsif N in 91 .. 179 then
      Put_Line (" is in the northwest quadrant");
   elsif N = 180 then
      Put_Line (" is due west");
   elsif N in 181 .. 269 then
      Put_Line (" is in the southwest quadrant");
   elsif N = 270 then
      Put_Line (" is due south");
   elsif N in 271 .. 359 then
      Put_Line (" is in the southeast quadrant");
   else
      Put_Line (" is not in the range 0..360");
   end if;
end Direction;
