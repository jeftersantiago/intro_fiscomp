MAIN = teste.f
BINARY = teste.exe
UTIL = teste.gp
TEX_FILE = teste.tex
PDF_FILE = teste.pdf

all:
	gfortran $(MAIN) -o $(BINARY)
run:
	./$(BINARY)

plot:
	gnuplot ./$(UTIL)
	pdflatex ./$(TEX_FILE)
	evince ./$(PDF_FILE) & 
	@rm *-inc*eps* *.log *.tex *.aux

clean:
	@rm *.exe *.dat
