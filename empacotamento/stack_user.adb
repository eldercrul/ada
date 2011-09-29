-- Programa cliente:

with Gnat.Io; use Gnat.Io;
with I_Stack_Str; use I_Stack_Str;
--with I_Stack_Int; use I_Stack_Int;

procedure Int_Stack_User is
   -- Pilha:
   S: Int_Stack_Str;
   --S: Int_Stack_Int;
   --Exciting: Integer;
   Exciting: CHARACTER;

begin
   -- S.Size := 5; -> tipo privado, logo nao eh permitido

   -- Le numeros inteiros e empilha:
   loop
      Put("> ");
      Get(Exciting);
      --exit when Exciting = -1;
      exit when Exciting = '0';
      Push(S, Exciting);
   end loop;

   -- Desempilha e imprime
   while not Empty(S) loop
      Pop(S, Exciting);
      Put(Exciting);
      exit when Empty(S);
      Put(" ");
   end loop;
   New_Line;
end Int_Stack_User;
