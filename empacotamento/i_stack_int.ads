package I_Stack_Int is

   type Int_Stack_Int is private;


   Max_Size: constant Integer := 100;

   procedure Push(S: in out Int_Stack_Int; I: Integer);
   procedure Pop(S: in out Int_Stack_Int; I: out Integer);
   function Top(S: Int_Stack_Int) return Integer;
   function Empty(S: Int_Stack_Int) return Boolean;
   function Full(S: Int_Stack_Int) return Boolean;
   procedure Clean(S: in out Int_Stack_Int);

   private

      type Stack_Data_Type is array(1..Max_Size) of Integer;
      type Int_Stack_Int is record
         Size: Integer := 0;
         Data: Stack_Data_Type;
      end record;

end I_Stack_Int;
