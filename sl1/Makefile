all: mycc/lexer.l mycc/parser.y
	mkdir -p cfiles
	bison -d mycc/parser.y
	mv parser.tab.c cfiles/
	mv parser.tab.h cfiles/
	flex mycc/lexer.l
	mv lex.yy.c cfiles/
	gcc cfiles/*.c -o ./parser
