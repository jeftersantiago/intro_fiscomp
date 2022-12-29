MAIN = tarefa-a2.f
BINARY = tarefa-a2.exe
UTIL = grafico-tarefa-a2.gp
TEX_FILE = grafico-tarefa-a2.tex
PDF_FILE = grafico-tarefa-a2.pdf

all:
	gfortran $(MAIN) -o $(BINARY)
run:
	./$(BINARY)

plot:
	gnuplot ./$(UTIL)
	pdflatex ./$(TEX_FILE)
	@rm *-inc*eps* *.log *.tex *.aux

show:
	xreader ./$(PDF_FILE) & 
clean:
	@rm *.exe *.dat
