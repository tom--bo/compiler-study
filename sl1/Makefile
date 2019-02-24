all: mycc/lexer.l mycc/parser.y
	mkdir -p cfiles
	bison -d mycc/parser.y
	mv parser.tab.c cfiles/
	mv parser.tab.h cfiles/
	flex --header-file=lex.yy.h mycc/lexer.l
	mv lex.yy.c cfiles/
	mv lex.yy.h cfiles/
	gcc cfiles/*.c -o ./parser

clean:
	rm -f cfiles/*
	rm -f parser
