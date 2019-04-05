NAME = fillit

SRC = main.c reader.c solver.c map.c tetrimino.c

OBJ = main.o reader.o solver.o map.o tetrimino.o

FLAG = -Wall -Werror -Wextra

all: $(NAME)

$(NAME):
	make -C libft
	gcc $(FLAG) -c $(SRC) -I libft
	gcc $(FLAG) -o $(NAME) $(OBJ) -I libft -L./libft -lft

clean:
	rm -f $(OBJ)
	make -C libft clean

fclean: clean
	rm -f $(NAME)
	make -C libft fclean

re:	fclean all
