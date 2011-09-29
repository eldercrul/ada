package body I_Stack is
   -- Push an integer.  If the stack is already full, ignore the push.
   procedure Push(S: in out Int_Stack; I: Integer) is
   begin
      if S.Size < Max_Size then
         S.Size := S.Size + 1;
         S.Data(S.Size) := I;
      end if;
   end Push;

   -- Pop and integer.  If the stack is empty, a zeor is placed in I.
   procedure Pop(S: in out Int_Stack; I: out Integer) is
   begin
      if S.Size > 0 then
         I := S.Data(S.Size);
         S.Size := S.Size - 1;
      end if;
   end Pop;

   -- Get the top item, or 0 if the stack is empty.
   function Top(S: Int_Stack) return Integer is
   begin
      if S.Size > 0 then
         return S.Data(S.Size);
      else
         return 0;
      end if;
   end Top;

   -- Tell if the stack is empty.
   function Empty(S: Int_Stack) return Boolean is
   begin
      return S.Size = 0;
   end Empty;

   -- Tell if the stack is empty.
   function Full(S: Int_Stack) return Boolean is
   begin
      return S.Size = Max_Size;
   end Full;

   -- Make the stack empty.
   procedure Clean(S: in out Int_Stack) is
   begin
      S.Size := 0;
   end Clean;
end I_Stack;
