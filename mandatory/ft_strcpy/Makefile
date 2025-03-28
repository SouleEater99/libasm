NASM = nasm
LD = ld
NASM_FLAGSS = -f elf64
LD_FLAGS = -e main
NAME = ft_strcpy
SRC = 	./ft_strcpy.s \
		./main_asm.s
OBJ = $(SRC:.s=.o)

%.o : %.s
	$(NASM) $(NASM_FLAGSS) $< -o $@

all: $(NAME)

$(NAME) : $(OBJ)
	$(LD) $(LD_FLAGS) $(OBJ) -o $(NAME)

clean:
	rm $(OBJ)
fclean: clean
	rm $(NAME)
re: fclean all