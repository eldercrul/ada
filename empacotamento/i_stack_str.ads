package I_Stack is

   -- Usando o mesmo nome, o que muda eh compilar com este arquivo ou com o
   -- outro
   type Int_Stack is private;

   -- Max stack size.
   Max_Size: constant Integer := 100;

   -- All the public stack operations.
   procedure Push(S: in out Int_Stack; I: CHARACTER);
   procedure Pop(S: in out Int_Stack; I: out CHARACTER);
   function Top(S: Int_Stack) return CHARACTER;
   function Empty(S: Int_Stack) return Boolean;
   function Full(S: Int_Stack) return Boolean;
   procedure Clean(S: in out Int_Stack);

   private
      -- The items here cannot be accessed by clients of the package.
      type Stack_Data_Type is array(1..Max_Size) of CHARACTER;
      type Int_Stack is record
         Size: CHARACTER := 'A';
         Data: Stack_Data_Type;
      end record;
end I_Stack;
