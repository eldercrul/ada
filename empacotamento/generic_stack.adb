package body I_Stack_Int is

   procedure Push(S: in out Int_Stack_Int; I: Integer) is
   begin
      if S.Size < Max_Size then
         S.Size := S.Size + 1;
         S.Data(S.Size) := I;
      end if;
   end Push;


   procedure Pop(S: in out Int_Stack_Int; I: out Integer) is
   begin
      if S.Size > 0 then
         I := S.Data(S.Size);
         S.Size := S.Size - 1;
      end if;
   end Pop;


   function Top(S: Int_Stack_Int) return Integer is
   begin
      if S.Size > 0 then
         return S.Data(S.Size);
      else
         return 0;
      end if;
   end Top;


   function Empty(S: Int_Stack_Int) return Boolean is
   begin
      return S.Size = 0;
   end Empty;


   function Full(S: Int_Stack_Int) return Boolean is
   begin
      return S.Size = Max_Size;
   end Full;


   procedure Clean(S: in out Int_Stack_Int) is
   begin
      S.Size := 0;
   end Clean;
end I_Stack_Int;