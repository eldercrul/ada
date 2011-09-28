-- Programa cliente:

with Gnat.Io; use Gnat.Io;
with I_Stack; use I_Stack;

procedure Int_Stack_User is
   -- Pilha:
   S: Int_Stack;
   Exciting: Integer;

begin
   -- S.Size := 5; -> tipo privado, logo nao eh permitido

   -- Le numeros inteiros e empilha:
   loop
      Put("> ");
      Get(Exciting);
      exit when Exciting = -1;
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
