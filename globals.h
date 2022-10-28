#define MAX_FUNCS 2048
#define MAX_CMDS  688

struct globals {
	/* functions indexed by token code */
	const struct funcname *func_table[MAX_FUNCS];
	/* commands indexed byte token code */
	const struct cmdname *cmd_table[MAX_CMDS];
};
