with Ada.Text_Io;
with Ada.Integer_Text_Io;
use Ada.Text_Io;
use Ada.Integer_Text_Io;

procedure Sort is

   subtype Nametype is String(1..30);
   subtype Idtype is Natural range 0..9999;
   subtype Extensiontype is Natural range 0..999;

   type Studentrecord is
      record
         Name      : Nametype      := (others => ' ');
         Id        : Idtype;
         Extension : Extensiontype;
      end record;

   subtype Studentindex is Integer range 1..100;
   type Studentarraytype is array (Studentindex) of Studentrecord;
   Sort : Studentarraytype;
   Currentindex : Natural := 0;
   Currentstudent : Studentrecord;
   Countrecords : Integer := 0;
   Length : Integer := 0;

   procedure Getstudent (Item : in out Studentrecord) is
   begin
      Item.Name := (Others => ' ');
      Ada.Text_Io.Put("Please enter Student ID: ");
      Get(Item.Id);
      Skip_Line;

      Put("Please enter student Name: ");
      Get_Line(Item.Name,Length);

      Put("Please enter Extension: ");
      Get(Item.Extension);
      Skip_Line;
      New_Line;
   end Getstudent;

-------------------------------------------------------------
--Swapem
   procedure Swap (X,Y : in out StudentRecord) is
      Temp : StudentRecord;
   begin
      Temp := X;
      X := Y;
      Y := Temp;
   end Swap;
--------------------------------------------------------------------------
--SelectSort
   procedure SelectSort (Studentarray : in out Studentarraytype; Arraysize : in Integer) is

      Min : Integer;
   begin
      for PositionToFill in 1 .. Arraysize-1 loop
         Min := PositionToFill;
         for PositionToCompare in PositionToFill+1 .. Arraysize loop
            if Studentarray(PositionToCompare).Name < Studentarray(Min).
                  Name then
               Min := PositionToCompare;
            end if;
         end loop;

         if Min /= PositionToFill then
            Swap(Studentarray(PositionToFill),Studentarray(Min));
         end if;
      end loop;
   end SelectSort;
---------------------------------------------------------------------------
-- Main Program
CurrentI : Integer := 0;
begin
   Put_Line(Item => "Welcome to the Student Data Interface.");
   Put_Line("Type 0 to exit the program");
   loop
      GetStudent(CurrentStudent);   -- Get next student in loop
      exit when Currentstudent.Id = 0;
            CurrentI := 0;      -- Check for duplicates
            for I in 1..CurrentIndex loop
               If Sort(I).ID = CurrentStudent.ID then
                     CurrentI := I;
                end if;
            end loop;
         If CurrentI = 0 then
             CurrentIndex := CurrentIndex + 1;
             Sort(CurrentIndex) := CurrentStudent;
         else
            Sort(CurrentI) := CurrentStudent;
         end if;
   end loop;

   Put("NAME                                  ID        EXTENSION");
   New_Line;
   Put("_________________________________________________________");
   New_Line;

   Selectsort(Studentarray => Sort, Arraysize => Currentindex);
      while CurrentIndex /= CountRecords
      loop
            Countrecords := Countrecords + 1;
            Put(Sort(Countrecords).Name);
            Put(Sort(Countrecords).Id);
            Put(Sort(Countrecords).Extension);
            New_Line;
   end loop;
end Sort;
