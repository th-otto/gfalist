#define MAX_FUNCS 2048
#define MAX_CMDS  688

struct globals {
	/* functions indexed by token code */
	const struct funcname *func_table[MAX_FUNCS];
	/* commands indexed by token code */
	const struct cmdname *cmd_table[MAX_CMDS];
	const char *function_find_start;
	const char *function_find_last;
	uint16_t function_find_token;
	char input_buffer[256];
	char general_buffer[256];
	unsigned short token_buffer_len;
	struct {
		unsigned short cmd;
		unsigned char buffer[256];
	} token_buffer;
	unsigned char first_ident_char;
	int error_pos;
};
