# Autor: Liber Dovat
#
# Makefile para compilar un documento latex
#
# Para utilizar solo hay que llenar el campo NAME de la siguiente
# manera NAME=nombre_del_archivo sin agregar la extension
#

# El nombre del archivo sin la extension
NAME=japones

# Compiladores y programas
PDFLATEX = pdflatex

# Otras opciones
OPCIONESLATEX =

all: $(NAME).pdf

$(NAME).pdf: $(NAME).tex colorful.sty makefile
	$(PDFLATEX) $(OPCIONESLATEX) $(NAME).tex
	$(PDFLATEX) $(OPCIONESLATEX) $(NAME).tex

view: all
	okular $(NAME).pdf &

clean:
	rm -f $(NAME).out $(NAME).aux $(NAME).toc $(NAME).log $(NAME).nav $(NAME).snm
	touch $(NAME).tex

again: clean all