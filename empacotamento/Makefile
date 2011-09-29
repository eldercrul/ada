
all:
	@echo "Escolha entre int e str"
	@exit 1


int:
	@gnatmake -gnatc i_stack_int.ads i_stack_int.adb
	@gnatmake int_stack_user.adb


str:
	@gnatmake -gnatc i_stack_str.ads i_stack_str.adb
	@gnatmake int_stack_user.adb


clean:
	@rm *.ali *.o int_stack_user
