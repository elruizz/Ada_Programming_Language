with Ada.Text_IO;  use Ada.Text_IO;

procedure Readfile is
   File : File_Type;
begin
   Open (File => File,
         Mode => In_File,
         Name => "readfile.adb");
   While not  End_Of_File (File) Loop
      Put_Line (Get_Line (File));
   end loop;

   Close (File);
end Readfile;
