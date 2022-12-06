MAIN = tarefa-a1.f
BINARY = tarefa-a1.exe
UTIL = grafico-tarefa-a1.gp
TEX_FILE = grafico-tarefa-a1.tex
PDF_FILE = grafico-tarefa-a1.pdf

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
