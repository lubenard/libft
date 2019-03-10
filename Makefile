# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lubenard <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/06 17:01:46 by lubenard          #+#    #+#              #
#    Updated: 2019/03/10 20:58:34 by lubenard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_memset.c \
	ft_bzero.c \
	ft_memcpy.c \
	ft_memccpy.c \
	ft_memmove.c \
	ft_memchr.c \
	ft_memcmp.c \
	ft_strlen.c \
	ft_strdup.c \
	ft_strcpy.c \
	ft_strncpy.c \
	ft_strcat.c \
	ft_strncat.c \
	ft_strlcat.c \
	ft_strchr.c \
	ft_strrchr.c \
	ft_strstr.c \
	ft_strnstr.c \
	ft_strcmp.c \
	ft_strncmp.c \
	ft_atoi.c \
	ft_isalpha.c \
	ft_isdigit.c \
	ft_isalnum.c \
	ft_isascii.c \
	ft_isprint.c \
	ft_toupper.c \
	ft_tolower.c \
	ft_memalloc.c \
	ft_memdel.c \
	ft_strnew.c \
	ft_strdel.c \
	ft_strclr.c \
	ft_striter.c \
	ft_striteri.c \
	ft_strmap.c \
	ft_strmapi.c \
	ft_itoa.c \
	ft_strjoin.c \
	ft_strsub.c \
	ft_strsplit.c \
	ft_strtrim.c \
	ft_putchar.c \
	ft_strequ.c \
	ft_strnequ.c \
	ft_putstr.c \
	ft_putendl.c \
	ft_putnbr.c \
	ft_putchar_fd.c \
	ft_putstr_fd.c \
	ft_putendl_fd.c \
	ft_putnbr_fd.c \
	ft_fill.c \
	ft_occur.c \
	ft_countwords.c \
	ft_realloc.c \
	ft_lstnew.c \
	ft_lstdel.c \
	ft_lstdelone.c \
	ft_lstadd.c \
	ft_lstiter.c \
	ft_lstmap.c \
	ft_sqrt.c

OBJ = $(SRC:.c=.o)

CC = clang

CFLAGS = -Wall -Wextra -Werror

all:  $(NAME)

$(NAME):$(OBJ)
	@printf "\033[33mCompilation de $(NAME)...\033[0m"
	@ar rcs $(NAME) $(OBJ)
	@printf "\033[32m[✓]\033[0m\n"

%.o : %.c
	@printf "\033[36mCompilation de $<...\033[0m"
	@$(CC) -c $(CFLAGS) $< -o $@
	@printf "\033[32m[✓]\033[0m\n"

clean:
	@printf "\033[31mFclean de $(NAME)..\033[0m"
	@rm -f $(OBJ)
	@printf "\033[32m[✓]\033[0m\n"

fclean: clean
	@printf "\033[31mFclean de $(NAME)...\033[0m"
	@rm -f $(NAME)
	@printf "\033[32m[✓]\033[0m\n"


re: fclean all
