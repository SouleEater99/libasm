NASM = nasm
LD = ld
NASM_FLAGSS = -f elf64
LD_FLAGS = -e main
NAME = ft_strlen
SRC = ./ft_strlen.s ./main_asm.s
OBJ = $(SRC:.s=.o)

%.s : %.o
	$(NASM) $(NASM_FLAGSS) $@ -o $<

all: $(NAME)

$(NAME) : $(OBJ)
	$(LD) $(LD_FLAGS) $(OBJ) -o $(NAME)