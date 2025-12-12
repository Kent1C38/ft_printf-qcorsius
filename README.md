*This project has been created as part of th 42 curriculum by qcorsius.*

# Description
This project is a basic reproduction of the original `printf()` function of C language
The function is contained in a static archive named `libftprintf.a` which is created at the root of this repository.

# Instructions
To compile the project, you must run the folowing command: `make`
If you want to clean up `.o` and `.d` files, run the command: `make clean`
If you want to clean up everything, including the final archive, run the command: `make fclean`
If you want to clean everything and recompile the archive, run the command: `make re`

# Resources
- Unix manual (`man printf` command in a Unix terminal)
- [w3schools](https://www.w3schools.com/c/ref_stdio_printf.php)'s printf manual

No AI were used during this project.

# Usage
- `%%`: represents a single '%' sign
- `%c`: represents a single character
- `%s`: represents a characters string
- `%i` and `%d`: represents an integer (Integer-32bits)
- `%u`: represents an unsigned integer (Unsigned Integer-32bits)
- `%x`: represents the hexadecimal value of an unsigned integer (Unsigned Integer-32bits) in lowercase
- `%X`: represents the hexadecimal value of an unsigned integer (Unsigned Integer-32bits) in uppercase
- `%p`: represents the memory address of a pointer with hexadecimal digits

# Explanations
This functions reads the string given in args and prints every characters. If a  '%' character is found, it checks what the following character is, and prints the content of
the associated argument with the representation defined by the indicator character.
The return value of the function is the number of printed characters. It return -1 if it fails at some point.
