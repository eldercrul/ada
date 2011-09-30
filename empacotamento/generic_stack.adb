package body Generic_Stack is

   procedure Push(S: in out Gen_Stack; I: Integer) is
   begin
      if S.Size < Max_Size then
         S.Size := S.Size + 1;
         S.Data(S.Size) := I;
      end if;
   end Push;


   procedure Pop(S: in out Gen_Stack; I: out Integer) is
   begin
      if S.Size > 0 then
         I := S.Data(S.Size);
         S.Size := S.Size - 1;
      end if;
   end Pop;


   function Top(S: Gen_Stack) return Integer is
   begin
      if S.Size > 0 then
         return S.Data(S.Size);
      else
         return 0;
      end if;
   end Top;


   function Empty(S: Gen_Stack) return Boolean is
   begin
      return S.Size = 0;
   end Empty;


   function Full(S: Gen_Stack) return Boolean is
   begin
      return S.Size = Max_Size;
   end Full;


   procedure Clean(S: in out Gen_Stack) is
   begin
      S.Size := 0;
   end Clean;
end Generic_Stack;
