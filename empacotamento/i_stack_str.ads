package I_Stack_Str is

   -- Usando o mesmo nome, o que muda eh compilar com este arquivo ou com o
   -- outro
   type Int_Stack_Str is private;

   -- Tamanho maximo
   Max_Size: constant Integer := 100;

   -- Declaracao das funcoes e procedimentos:
   procedure Push(S: in out Int_Stack_Str; I: CHARACTER);
   procedure Pop(S: in out Int_Stack_Str; I: out CHARACTER);
   function Top(S: Int_Stack_Str) return CHARACTER;
   function Empty(S: Int_Stack_Str) return Boolean;
   function Full(S: Int_Stack_Str) return Boolean;
   procedure Clean(S: in out Int_Stack_Str);

   private
      -- Esta eh a parte inacessivel pelos programas q usam esta lib:
      type Stack_Data_Type is array(1..Max_Size) of CHARACTER;
      type Int_Stack_Str is record
         Size: Integer := 0;
         Data: Stack_Data_Type;
      end record;
end I_Stack_Str;
