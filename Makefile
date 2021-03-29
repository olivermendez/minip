all:

	bison -yd parse.y
	flex SimpleScanner.l 
	gcc -o program main.c y.tab.c lex.yy.c -lm
	./program < Positiva.txt > Result_Positive1.txt
	./program < Negativa.txt > Result_Negative1.txt
	./program < Positiva2.txt > Result_Positive2.txt
	./program < Negativa2.txt > Result_Negative2.txt
	./program < Positiva3.txt > Result_Positive3.txt
	./program < Negativa3.txt > Result_Negative3.txt
	

clear:
	rm -rf lex.yy.c
	rm -rf y.tab.c
	rm -rf y.tab.h
	rm -rf program

