package I_Stack is

   -- Usando o mesmo nome, o que muda eh compilar com este arquivo ou com o
   -- outro
   type Int_Stack is private;

   -- Tamanho maximo
   Max_Size: constant Integer := 100;

   -- Declaracao das funcoes e procedimentos:
   procedure Push(S: in out Int_Stack; I: CHARACTER);
   procedure Pop(S: in out Int_Stack; I: out CHARACTER);
   function Top(S: Int_Stack) return CHARACTER;
   function Empty(S: Int_Stack) return Boolean;
   function Full(S: Int_Stack) return Boolean;
   procedure Clean(S: in out Int_Stack);

   private
      -- Esta eh a parte inacessivel pelos programas q usam esta lib:
      type Stack_Data_Type is array(1..Max_Size) of CHARACTER;
      type Int_Stack is record
         Size: Integer := 0;
         Data: Stack_Data_Type;
      end record;
end I_Stack;
