#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "9cc.h"

void error(int i);
void tokenize(char *p);
Node *expr();
Node *term();
Node *new_node(int ty, Node *lhs, Node *rhs);
Node *new_node_num(int val);

Token tokens[100];
int pos = 0;

Node *new_node(int ty, Node *lhs, Node *rhs) {
	Node *node = malloc(sizeof(Node));
	node->ty = ty;
	node->lhs = lhs;
	node->rhs = rhs;
	return node;
}

Node *new_node_num(int val) {
	Node *node = malloc(sizeof(Node));
	node->ty = ND_NUM;
	node->val = val;
	return node;
}

Node *expr() {
	Node *lhs = term();
	if (tokens[pos].ty == '+') {
		pos++;
		return new_node('+', lhs, expr());
	}
	if (tokens[pos].ty == '-') {
		pos++;
		return new_node('-', lhs, expr());
	}
	return lhs;
}

Node *term() {
	if (tokens[pos].ty == ND_NUM) return new_node_num(tokens[pos++].val);
	else {
		error(pos);
	}
}

void gen(Node *node) {
	if (node->ty == ND_NUM) {
		printf("	push %d\n", node->val);
		return;
	}

	gen(node->lhs);
	gen(node->rhs);

	printf("	pop rdi\n");
	printf("	pop rax\n");

	switch (node->ty) {
		case '+':
			printf("	add rax, rdi\n");
			break;
		case '-':
			printf("	sub rax, rdi\n");
			break;
	}
	printf("	push rax\n");

}

int main(int argc, char **argv) {
	if (argc != 2) {
		fprintf(stderr, "2 args needed");
		return 1;
	}

	tokenize(argv[1]);
	Node* node = expr();

	printf(".intel_syntax noprefix\n");
	printf(".global main\n");
	printf("main:\n");

	gen(node);

	printf("	pop rax\n");
	printf("	ret\n");
	return 0;
}

void error(int i) {
	fprintf(stderr, "Unexpected token: %s\n", tokens[i].input);
	exit(1);
}

void tokenize(char *p) {
	int i = 0;
	while (*p) {
		if (isspace(*p)) {
			p++;
			continue;
		}

		if (*p == '+' || *p == '-') {
			tokens[i].ty = *p;
			tokens[i].input = p;
			i++;
			p++;
			continue;
		}

		if (isdigit(*p)) {
			tokens[i].ty = ND_NUM;
			tokens[i].input = p;
			tokens[i].val = strtol(p, &p, 10);
			i++;
			continue;
		}

		fprintf(stderr, "Can not tokenize!!: %s\n", p);
		exit(1);
	}

	tokens[i].ty = TK_EOF;
	tokens[i].input = p;
}


