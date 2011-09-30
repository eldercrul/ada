package Generic_Stack is

   -- Gen_Stack stands for Generic Stack!
   type Gen_Stack is private;


   Max_Size: constant Integer := 100;

   procedure Push(S: in out Gen_Stack; I: Integer);
   procedure Pop(S: in out Gen_Stack; I: out Integer);
   function Top(S: Gen_Stack) return Integer;
   function Empty(S: Gen_Stack) return Boolean;
   function Full(S: Gen_Stack) return Boolean;
   procedure Clean(S: in out Gen_Stack);

   private

      type Stack_Data_Type is array(1..Max_Size) of Integer;
      type Gen_Stack is record
         Size: Integer := 0;
         Data: Stack_Data_Type;
      end record;

end Generic_Stack;
