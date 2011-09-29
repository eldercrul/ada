package I_Stack is

   type Int_Stack is private;

   -- Max stack size.
   Max_Size: constant Integer := 100;

   -- All the public stack operations.
   procedure Push(S: in out Int_Stack; I: Integer);
   procedure Pop(S: in out Int_Stack; I: out Integer);
   function Top(S: Int_Stack) return Integer;
   function Empty(S: Int_Stack) return Boolean;
   function Full(S: Int_Stack) return Boolean;
   procedure Clean(S: in out Int_Stack);

   private
      -- The items here cannot be accessed by clients of the package.
      type Stack_Data_Type is array(1..Max_Size) of Integer;
      type Int_Stack is record
         Size: Integer := 0;
         Data: Stack_Data_Type;
      end record;
end I_Stack;
