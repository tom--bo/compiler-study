enum {
	ND_NUM = 256,
	TK_EOF,
};

typedef struct {
	int ty;
	int val;
	char *input;
} Token;

typedef struct Node {
	int ty;
	struct Node *lhs;
	struct Node *rhs;
	int val;
} Node;

