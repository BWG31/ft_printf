# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bgolding <bgolding@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/08 13:19:59 by bgolding          #+#    #+#              #
#    Updated: 2023/11/09 10:07:54 by bgolding         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libftprintf.a

SRC		=	ft_printf.c \
			i_put.c
			
OBJ		=	${SRC:%.c=%.o}

CC		=	gcc

CFLAGS	=	-Wall -Werror -Wextra

LIB		=	ft_printf.h

all:		${NAME}

${NAME}:	${OBJ}
			-ar -rc $@ $^

%.o:		%.c
			${CC} ${CFLAGS} -c $^ -o $@

clean:
			rm -f ${OBJ}

fclean:		clean
			rm -f ${NAME}

re:			fclean all

.PHONY:		all clean fclean re
