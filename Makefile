NAME = libftprintf.a

CC = cc
CFLAGS = -Wall -Werror -Wextra
CPPFLAGS = -MMD

SRCDIR = src
INCDIR = includes
BUILDDIR = .build

SRCSFILES = \
	ft_printf.c \
	utils.c \

SRCS = $(addprefix $(SRCDIR)/, $(SRCFILES))
OBJS = $(addprefix $(BUILDDIR)/, $(SRCSFILES:.c=.o))
DEPS = $(OBJS:.o=.d)

AR = ar
ARFLAGS = rcs

$(NAME): $(OBJS)
	$(AR) $(ARFLAGS) $(NAME) $^

$(BUILDDIR)/%.o: $(SRCDIR)/%.c
	@mkdir -p $(BUILDDIR)
	$(CC) $(CFLAGS) $(CPPFLAGS) -o $@ -c $<

-include $(DEPS)

all: $(NAME)

clean:
	rm -rf $(BUILDDIR)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re