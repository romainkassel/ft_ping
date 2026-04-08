NAME = ft_ping

SRCS = ./srcs/

INCLUDES = -Iincludes

CFILES = $(SRCS)main.c
OFILES = $(CFILES:.c=.o)

CC = cc
FLAGS = -Wall -Wextra -Werror -g3 -pthread

all: $(NAME)

$(NAME): $(OFILES)
	$(CC) -g -o $(NAME) $(OFILES) -pthread

$(SRCS)%.o: $(SRCS)%.c
	$(CC) $(FLAGS) -g -c -o $@ $< $(INCLUDES)

clean:
	rm -f $(OFILES)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re