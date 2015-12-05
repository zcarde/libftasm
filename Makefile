# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zcarde <zcarde@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/05 06:17:03 by zcarde            #+#    #+#              #
#    Updated: 2015/03/07 08:52:22 by zcarde           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC	=	ft_bzero.s\
		ft_strcat.s\
		ft_isalpha.s\
		ft_isdigit.s\
		ft_isalnum.s\
		ft_isascii.s\
		ft_isprint.s\
		ft_toupper.s\
		ft_tolower.s\
		ft_puts.s\
		ft_strlen.s\
		ft_memset.s\
		ft_memcpy.s\
		ft_strdup.s\
		ft_cat.s\
		ft_memalloc.s\
		ft_strcpy.s

OBJ = $(SRC:.s=.o)

NAME = libfts.a 

all: $(NAME)

$(NAME): $(OBJ) 
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

%.o: %.s
	nasm -f macho64 $^ 

memalloc: all

strcpy: all
	gcc -Wall -Werror -Wextra main_cpy.c -L. -lfts -o main_cpy -I includes
	./main_cpy

memalloc: all
	gcc -Wall -Werror -Wextra main_alloc.c -L. -lfts -o main_alloc -I includes
	./main_alloc

cat:
	gcc -Wall -Werror -Wextra main_cat.c -L. -lfts -o main_cat -I includes
	./main_cat

moulitest:
	make part3 -C moulitest_42projects/libftasm_tests

clean :
	rm -f $(OBJ)

fclean : clean
	rm -f $(NAME)
	rm -f main_cat
	rm -f main_alloc
	rm -f main_cpy

re : fclean all
