#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <assert.h>
#include "tables.h"
#include "globals.h"
#include "parse.h"

#define GBE 373

#define EOL 13
#define CR  13
#define NL  10


extern struct argdesc const x14b9a[];
extern struct argdesc const x14bb2[];
extern struct argdesc const sexp[];
extern struct argdesc const x15164[];
extern struct argdesc const x14fa6[];
extern struct argdesc const x14962[];
extern struct argdesc const x1512d[];
extern struct argdesc const x1513f[];
extern struct argdesc const x1514a[];
extern struct argdesc const x15155[];
extern struct argdesc const x143ec[];

static const char *x137b4;
static int x137b2;
static const char *longest_match;

static const struct cmdname *cmd_index_table[26];
static const struct cmdname *cmd_other_table;
static const struct funcname *func_index_table[26];
static const struct funcname *func_other_table;
static const struct cmdname *cmd_addrin;
static const struct cmdname *cmd_addrout;
static const struct cmdname *cmd_files;
static const struct cmdname *cmd_fileselect;
static const struct cmdname *cmd_double_ref;
static const struct cmdname *cmd_contrl;

extern const struct argdesc *const arg_table[MAX_FUNCS];

static unsigned short find_function(struct globals *G, const char **src);

static char deftype[26] = {
	TYPE_FLOAT, TYPE_FLOAT, TYPE_FLOAT, TYPE_FLOAT,
	TYPE_FLOAT, TYPE_FLOAT, TYPE_FLOAT, TYPE_FLOAT,
	TYPE_FLOAT, TYPE_FLOAT, TYPE_FLOAT, TYPE_FLOAT,
	TYPE_FLOAT, TYPE_FLOAT, TYPE_FLOAT, TYPE_FLOAT,
	TYPE_FLOAT, TYPE_FLOAT, TYPE_FLOAT, TYPE_FLOAT,
	TYPE_FLOAT, TYPE_FLOAT, TYPE_FLOAT, TYPE_FLOAT,
	TYPE_FLOAT, TYPE_FLOAT
};

/******************************************************************************/
/*** ---------------------------------------------------------------------- ***/
/******************************************************************************/

static void skip_spaces(const char **src)
{
	while (**src == ' ')
		(*src)++;
}

/*** ---------------------------------------------------------------------- ***/

static void f13e8c(struct globals *G, struct funcparse *parse)
{
	UNUSED(G);
	UNUSED(parse);
}

/*** ---------------------------------------------------------------------- ***/

static void f13d22(struct globals *G, struct funcparse *parse)
{
	UNUSED(G);
	UNUSED(parse);
}

/*** ---------------------------------------------------------------------- ***/

static void f13696(struct globals *G, struct funcparse *parse)
{
	UNUSED(G);
	UNUSED(parse);
}

/*** ---------------------------------------------------------------------- ***/

static void f1369e(struct globals *G, struct funcparse *parse)
{
	UNUSED(G);
	UNUSED(parse);
}

/*** ---------------------------------------------------------------------- ***/

#if (TOK_CMD_PRINT_CHANNEL-TOK_CMD_PRINT) != 1
# error "TOK_CMD_PRINT_CHANNEL != TOK_CMD_PRINT+1"
#endif
#if (TOK_CMD_DEREF_STR-TOK_CMD_DEREF) != 1
# error "TOK_CMD_DEREF_STR != TOK_CMD_DEREF+1"
#endif

static void inc_cmd(struct globals *G, struct funcparse *parse)
{
	UNUSED(parse);
	G->token_buffer.cmd++;
}

/*** ---------------------------------------------------------------------- ***/

static void f13c9a(struct globals *G, struct funcparse *parse)
{
	UNUSED(G);
	UNUSED(parse);
}

/*** ---------------------------------------------------------------------- ***/

static void func_call(struct globals *G, struct funcparse *parse)
{
	unsigned short token;
	
	token = find_function(G, &parse->current.src);
	if (token >= (TOK_SUBFUNC_214 + 1) * 256)
	{
		parse->d7 = -1;
		return;
	}
	if (token >= TOK_SUBFUNC_208 * 256)
	{
		*parse->current.dst++ = token >> 8;
		/* map secondary table # & token into index */
		token = (token - TOK_SUBFUNC_208 * 256) + 256;
	}
	*parse->current.dst++ = token;
	if (arg_table[token] == NULL)
	{
		parse->d7 = -1;
		return;
	}
	parse->current.table = arg_table[token];
	parse->parse_cmd_continue_search = TRUE;
}

/*** ---------------------------------------------------------------------- ***/

static void f1369a(struct globals *G, struct funcparse *parse)
{
	UNUSED(G);
	UNUSED(parse);
}

/*** ---------------------------------------------------------------------- ***/

static void f158f8(struct globals *G, struct funcparse *parse)
{
	UNUSED(G);
	UNUSED(parse);
}

/*** ---------------------------------------------------------------------- ***/

static void f15976(struct globals *G, struct funcparse *parse)
{
	UNUSED(G);
	UNUSED(parse);
}

/*** ---------------------------------------------------------------------- ***/

static void f1596e(struct globals *G, struct funcparse *parse)
{
	UNUSED(G);
	UNUSED(parse);
}

/*** ---------------------------------------------------------------------- ***/

static void f140e2(struct globals *G, struct funcparse *parse)
{
	UNUSED(G);
	UNUSED(parse);
}

/*** ---------------------------------------------------------------------- ***/

static void f15972(struct globals *G, struct funcparse *parse)
{
	UNUSED(G);
	UNUSED(parse);
}

/*** ---------------------------------------------------------------------- ***/

static void f140d6(struct globals *G, struct funcparse *parse)
{
	UNUSED(G);
	UNUSED(parse);
}

/*** ---------------------------------------------------------------------- ***/

static void f140ee(struct globals *G, struct funcparse *parse)
{
	UNUSED(G);
	UNUSED(parse);
}

/*** ---------------------------------------------------------------------- ***/

static void f140fa(struct globals *G, struct funcparse *parse)
{
	UNUSED(G);
	UNUSED(parse);
}

/*** ---------------------------------------------------------------------- ***/

struct var_line_offset {
	unsigned char offset;
	unsigned char len;
};

static int ref_varname_offset(struct globals *G, struct funcparse *parse, struct var_line_offset *pos, int offset, int use_deftype)
{
	int type;
	char c;

	pos->offset = offset;
	pos->len = 0;
	for (;;)
	{
		if (++pos->len == 0)
			return -1;
		c = *parse->current.src++;
		if (c == '_')
			continue;
		if (c == '.')
			continue;
		if (c >= 'A' && c <= 'Z')
			continue;
		if (c >= '0' && c <= '9')
			continue;
		break;
	}
	type = TYPE_FLOAT;
	switch (c)
	{
	case '{':
		return -1;
	case '%':
		type = TYPE_INT;
		c = *parse->current.src++;
		break;
	case '$':
		type = TYPE_STRING;
		c = *parse->current.src++;
		break;
	case '&':
		type = TYPE_WORD;
		c = *parse->current.src++;
		break;
	case '|':
		type = TYPE_BYTE;
		c = *parse->current.src++;
		break;
	case '!':
		type = TYPE_BOOL;
		c = *parse->current.src++;
		break;
	case '#':
		type = TYPE_FLOAT;
		c = *parse->current.src++;
		break;
	default:
		if (use_deftype)
			type = deftype[G->first_ident_char];
		break;
	}
	if (c == '(')
		type += TYPE_FLOAT_ARR - TYPE_FLOAT;
	else
		parse->current.src--;
	return type;
}

/*** ---------------------------------------------------------------------- ***/

static int ref_varname(struct globals *G, struct funcparse *parse, struct var_line_offset *pos, int use_deftype)
{
	int offset;
	char c;
	
	skip_spaces(&parse->current.src);
	offset = (int)(parse->current.src - G->general_buffer);
	c = *parse->current.src++;
	if (c < 'A' || c > 'Z')
		return -1;
	G->first_ident_char = c;
	return ref_varname_offset(G, parse, pos, offset, use_deftype);
}

/*** ---------------------------------------------------------------------- ***/

static int ref_labelname(struct globals *G, struct funcparse *parse, struct var_line_offset *pos)
{
	int offset;
	
	skip_spaces(&parse->current.src);
	offset = (int)(parse->current.src - G->general_buffer);
	if (*parse->current.src > '9')
		return ref_varname(G, parse, pos, FALSE);
	if (*parse->current.src < '0')
		return ref_varname_offset(G, parse, pos, offset, FALSE);
	return -1;
}

/*** ---------------------------------------------------------------------- ***/

static void ref_procedure(struct globals *G, struct funcparse *parse)
{
	int type;
	struct var_line_offset pos;
	
	type = ref_labelname(G, parse, &pos);
	/* array ref? */
	if (type & 4)
	{
		type &= ~4;
		parse->current.src--;
	}
	/* no explicit type allowed here */
	if (type != TYPE_FLOAT)
	{
		parse->d7 = -1;
		return;
	}
	*parse->current.dst++ = TOK_REF_PROCEDURE;
	*parse->current.dst++ = pos.offset;
	*parse->current.dst++ = pos.len;
	parse->d7 = 0;
}

/*** ---------------------------------------------------------------------- ***/

static void ref_label(struct globals *G, struct funcparse *parse)
{
	int type;
	struct var_line_offset pos;
	
	type = ref_labelname(G, parse, &pos);
	/* array ref? */
	if (type & 4)
	{
		type &= ~4;
		parse->current.src--;
	}
	/* no explicit type allowed here */
	if (type != TYPE_FLOAT)
	{
		parse->d7 = -1;
		return;
	}
	*parse->current.dst++ = TOK_REF_LABEL;
	*parse->current.dst++ = pos.offset;
	*parse->current.dst++ = pos.len;
	parse->d7 = 0;
}

/*** ---------------------------------------------------------------------- ***/

static void f1595a(struct globals *G, struct funcparse *parse)
{
	UNUSED(G);
	UNUSED(parse);
}

/*** ---------------------------------------------------------------------- ***/

static void f15310(struct globals *G, struct funcparse *parse)
{
	UNUSED(G);
	UNUSED(parse);
}

/*** ---------------------------------------------------------------------- ***/

static void f15306(struct globals *G, struct funcparse *parse)
{
	UNUSED(G);
	UNUSED(parse);
}

/*** ---------------------------------------------------------------------- ***/

static void handle_cmd(struct globals *G, struct funcparse *parse, const struct cmdname *cmd)
{
	const char *src;
	unsigned char len;
	const char *name;
	
	G->token_buffer.cmd = cmd->token;
	
	src = G->general_buffer;
	skip_spaces(&src);
	len = cmd->len + 1;
	name = cmd->name;
	for (;;)
	{
		if (*name++ != *src++)
			break;
		if (--len == 0)
			break;
	}
	parse->d7 = 0;
	if (len != 0)
	{
		if (*--src != ' ')
			parse->d7 = -1;
	}
	parse->current.src = src;
}

/*** ---------------------------------------------------------------------- ***/

static void handle_fileselect(struct globals *G, struct funcparse *parse)
{
	handle_cmd(G, parse, cmd_fileselect);
}

/*** ---------------------------------------------------------------------- ***/

static void handle_files(struct globals *G, struct funcparse *parse)
{
	handle_cmd(G, parse, cmd_files);
}

/*** ---------------------------------------------------------------------- ***/

static void handle_double_ref(struct globals *G, struct funcparse *parse)
{
	handle_cmd(G, parse, cmd_double_ref);
}

/*** ---------------------------------------------------------------------- ***/

static void handle_addrin(struct globals *G, struct funcparse *parse)
{
	handle_cmd(G, parse, cmd_addrin);
}

/*** ---------------------------------------------------------------------- ***/

static void handle_addrout(struct globals *G, struct funcparse *parse)
{
	handle_cmd(G, parse, cmd_addrout);
}

/*** ---------------------------------------------------------------------- ***/

static void handle_contrl(struct globals *G, struct funcparse *parse)
{
	handle_cmd(G, parse, cmd_contrl);
}

/*** ---------------------------------------------------------------------- ***/

static void f14578(struct globals *G, struct funcparse *parse)
{
	UNUSED(G);
	UNUSED(parse);
}

/*** ---------------------------------------------------------------------- ***/

static void f13d1c(struct globals *G, struct funcparse *parse)
{
	UNUSED(G);
	UNUSED(parse);
}

/*** ---------------------------------------------------------------------- ***/

static void f13de4(struct globals *G, struct funcparse *parse)
{
	UNUSED(G);
	UNUSED(parse);
}

/*** ---------------------------------------------------------------------- ***/

static void f152e6(struct globals *G, struct funcparse *parse)
{
	UNUSED(G);
	UNUSED(parse);
}

/*** ---------------------------------------------------------------------- ***/

static void f13d5a(struct globals *G, struct funcparse *parse)
{
	UNUSED(G);
	UNUSED(parse);
}

/*** ---------------------------------------------------------------------- ***/

static void execute_defint(struct globals *G, struct funcparse *parse)
{
	UNUSED(G);
	UNUSED(parse);
}

/*** ---------------------------------------------------------------------- ***/

static void gen_dummy_label(struct funcparse *parse)
{
	/* insert dummy label */
	*parse->current.dst++ = 0;
	*parse->current.dst++ = 0;
	*parse->current.dst++ = 0;
	*parse->current.dst++ = 0;
}

/*** ---------------------------------------------------------------------- ***/

static void dummy_label(struct globals *G, struct funcparse *parse)
{
	UNUSED(G);
	parse->d7 = 0;
	gen_dummy_label(parse);
}

/*** ---------------------------------------------------------------------- ***/

#if (TOK_CMD_DO_UNTIL-TOK_CMD_DO_WHILE) != (TOK_CMD_LOOP_UNTIL-TOK_CMD_LOOP_WHILE)
# error "token error"
#endif

static void handle_do_loop_while(struct globals *G, struct funcparse *parse, unsigned short cmd)
{
	G->token_buffer.cmd = cmd;
	gen_dummy_label(parse);
	while (*parse->current.src++ == ' ')
		;
	if (*--parse->current.src == 'U')
	{
		parse->current.src++;
		if (*parse->current.src++ == 'N' &&
			*parse->current.src++ == 'T' &&
			*parse->current.src++ == 'I' &&
			*parse->current.src++ == 'L')
		{
			G->token_buffer.cmd += TOK_CMD_DO_UNTIL - TOK_CMD_DO_WHILE;
			while (*parse->current.src++ == ' ')
				;
		}
		parse->current.src--;
	} else if (*parse->current.src++ == 'W')
	{
		if (*parse->current.src++ == 'H' &&
			*parse->current.src++ == 'I' &&
			*parse->current.src++ == 'L' &&
			*parse->current.src++ == 'E')
		{
			while (*parse->current.src++ == ' ')
				;
		}
		parse->current.src--;
	} else
	{
		parse->d7 = -1;
	}
}

/*** ---------------------------------------------------------------------- ***/

static void handle_do_while(struct globals *G, struct funcparse *parse)
{
	handle_do_loop_while(G, parse, TOK_CMD_DO_WHILE);
}

/*** ---------------------------------------------------------------------- ***/

static void handle_loop_while(struct globals *G, struct funcparse *parse)
{
	handle_do_loop_while(G, parse, TOK_CMD_LOOP_WHILE);
}

/*** ---------------------------------------------------------------------- ***/

static void handle_rem(struct globals *G, struct funcparse *parse)
{
	const char *src;
	int offset;
	
	src = parse->current.src;
	if (src[-1] != ' ' && src[0] == ' ')
	{
		src++;
		parse->current.src = src;
	}
	/*
	 * copy the original input, not the uppercased temp buffer
	 */
	offset = (int)(src - G->general_buffer);
	src = G->input_buffer + offset;
	for (;;)
	{
		if (*src == CR || *src == NL || *src == '\0')
			break;
		*parse->current.dst++ = *src++;
	}
	*parse->current.dst++ = EOL;
	parse->d7 = 0;
}

/*** ---------------------------------------------------------------------- ***/

static void handle_form_input(struct globals *G, struct funcparse *parse)
{
	UNUSED(G);
	UNUSED(parse);
}

/*** ---------------------------------------------------------------------- ***/

static void expect_type(struct globals *G, struct funcparse *parse, int expected)
{
	int type;
	struct var_line_offset pos;
	
	type = ref_varname(G, parse, &pos, TRUE);
	if (type != expected)
	{
		parse->d7 = -1;
		return;
	}
	*parse->current.dst++ = TOK_REF_FLOAT + type;
	*parse->current.dst++ = pos.offset;
	*parse->current.dst++ = pos.len;
	parse->d7 = 0;
}

/*** ---------------------------------------------------------------------- ***/

static void expect_float(struct globals *G, struct funcparse *parse)
{
	expect_type(G, parse, TYPE_FLOAT);
}

/*** ---------------------------------------------------------------------- ***/

static void expect_float_arr(struct globals *G, struct funcparse *parse)
{
	expect_type(G, parse, TYPE_FLOAT_ARR);
}

/*** ---------------------------------------------------------------------- ***/

static void expect_string(struct globals *G, struct funcparse *parse)
{
	expect_type(G, parse, TYPE_STRING);
}

/*** ---------------------------------------------------------------------- ***/

static void expect_string_arr(struct globals *G, struct funcparse *parse)
{
	expect_type(G, parse, TYPE_STRING_ARR);
}

/*** ---------------------------------------------------------------------- ***/

static void expect_bool(struct globals *G, struct funcparse *parse)
{
	expect_type(G, parse, TYPE_BOOL);
}

/*** ---------------------------------------------------------------------- ***/

static void expect_bool_arr(struct globals *G, struct funcparse *parse)
{
	expect_type(G, parse, TYPE_BOOL_ARR);
}

/*** ---------------------------------------------------------------------- ***/

static void expect_byte(struct globals *G, struct funcparse *parse)
{
	expect_type(G, parse, TYPE_BYTE);
}

/*** ---------------------------------------------------------------------- ***/

static void expect_byte_arr(struct globals *G, struct funcparse *parse)
{
	expect_type(G, parse, TYPE_BYTE_ARR);
}

/*** ---------------------------------------------------------------------- ***/

static void expect_word(struct globals *G, struct funcparse *parse)
{
	expect_type(G, parse, TYPE_WORD);
}

/*** ---------------------------------------------------------------------- ***/

static void expect_word_arr(struct globals *G, struct funcparse *parse)
{
	expect_type(G, parse, TYPE_WORD_ARR);
}

/*** ---------------------------------------------------------------------- ***/

static void expect_int(struct globals *G, struct funcparse *parse)
{
	expect_type(G, parse, TYPE_INT);
}

/*** ---------------------------------------------------------------------- ***/

static void expect_int_arr(struct globals *G, struct funcparse *parse)
{
	expect_type(G, parse, TYPE_INT_ARR);
}

/*** ---------------------------------------------------------------------- ***/

static void expect_float_or_int(struct globals *G, struct funcparse *parse)
{
	int type;
	struct var_line_offset pos;
	
	type = ref_varname(G, parse, &pos, FALSE);
	/* array ref? */
	if (type & 4)
	{
		type &= ~4;
		parse->current.src--;
	}
	if (type != TYPE_FLOAT && type != TYPE_INT)
	{
		parse->d7 = -1;
		return;
	}
	*parse->current.dst++ = TOK_REF_FLOAT + type;
	*parse->current.dst++ = pos.offset;
	*parse->current.dst++ = pos.len;
	parse->d7 = 0;
}

/*** ---------------------------------------------------------------------- ***/

static void expect_float_func(struct globals *G, struct funcparse *parse)
{
	int type;
	struct var_line_offset pos;
	
	type = ref_varname(G, parse, &pos, FALSE);
	/* array ref? */
	if (type & 4)
	{
		type &= ~4;
		parse->current.src--;
	}
	if (type != TYPE_FLOAT)
	{
		parse->d7 = -1;
		return;
	}
	*parse->current.dst++ = TOK_REF_FLOAT + TYPE_FUNCTION;
	*parse->current.dst++ = pos.offset;
	*parse->current.dst++ = pos.len;
	parse->d7 = 0;
}

/*** ---------------------------------------------------------------------- ***/

static void expect_string_func(struct globals *G, struct funcparse *parse)
{
	int type;
	struct var_line_offset pos;
	
	type = ref_varname(G, parse, &pos, FALSE);
	/* array ref? */
	if (type & 4)
	{
		type &= ~4;
		parse->current.src--;
	}
	if (type != TYPE_STRING)
	{
		parse->d7 = -1;
		return;
	}
	*parse->current.dst++ = TOK_REF_FLOAT + TYPE_FUNCTION_STR;
	*parse->current.dst++ = pos.offset;
	*parse->current.dst++ = pos.len;
	parse->d7 = 0;
}

/******************************************************************************/
/*** ---------------------------------------------------------------------- ***/
/******************************************************************************/

#define ARG_END_           ARG_END, { 0 }
#define ARG_POP_           ARG_POP, { 0 }
#define ARG_CALL_FUNC_(f)  ARG_CALL_FUNC, { (void *)f }
#define ARG_PUSH_(x)       ARG_PUSH, { x }
#define ARG_REPLACE_(x)    ARG_REPLACE, { (void *)x }
#define ARG_INSERT_(x)     ARG_INSERT, { (void *)x }


static struct argdesc const REM_args[] = {
	{ ARG_CALL_FUNC_(handle_rem) },
	{ ARG_END_ }
};

static struct argdesc const x14386[] = {
	{ ARG_CALL_FUNC_(expect_float) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_int) },
	{ ARG_END_ }
};

static struct argdesc const x14139[] = {
	{ ARG_PUSH_(sexp) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const star_args[] = {
	{ ARG_PUSH_(x14386) },
	{ TOK_EQ, { 0 } },
	{ ARG_REPLACE_(TOK_ASSIGN) },
	{ ARG_PUSH_(x14b9a) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* *c=a -> *c=a$ */
	{ ARG_PUSH_(x14386) },
	{ TOK_EQ, { 0 } },
	{ ARG_REPLACE_(TOK_ASSIGN) },
	{ ARG_PUSH_(x14139) },
	{ ARG_END_ }
};

static struct argdesc const comma_or_semi[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_POP_ },
	{ TOK_SEMI, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14076[] = {
	{ TOK_SUB, { 0 } },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },
	{ TOK_ADD, { 0 } },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14ba8[] = {
	{ TOK_ADD, { 0 } },
	{ ARG_REPLACE_(TOK_UPLUS) },
	{ ARG_POP_ },
	{ TOK_SUB, { 0 } },
	{ ARG_REPLACE_(TOK_UMINUS) },
	{ ARG_POP_ },
	{ TOK_UNOT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14bc8[] = {
	{ ARG_CALL_FUNC_(f1369a) },
	{ ARG_PUSH_(x14b9a) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const iexp[] = {
	{ ARG_CALL_FUNC_(f158f8) },
	{ ARG_POP_ },
	{ ARG_PUSH_(x14ba8) },
	{ ARG_PUSH_(x14b9a) },
	{ ARG_POP_ },
	{ ARG_PUSH_(x14bb2) },
	{ ARG_PUSH_(x14bc8) },
	{ ARG_END_ }
};

static struct argdesc const iexp_rparen[] = {
	{ ARG_PUSH_(iexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x15297[] = {
	{ TOK_TAB, { 0 } },
	{ ARG_POP_ },
	{ TOK_SPC, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x1529b[] = {
	{ ARG_PUSH_(sexp) },
	{ ARG_CALL_FUNC_(f152e6) },
	{ ARG_POP_ },
	{ ARG_INSERT_(TOK_PRINTNUM) },
	{ ARG_PUSH_(iexp) },
	{ ARG_END_ }
};

static struct argdesc const comma_replace_semi[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_POP_ },
	{ TOK_SEMI, { 0 } },
	{ ARG_REPLACE_(TOK_COMMA) },
	{ ARG_END_ }
};

static struct argdesc const x1521b[] = {
	{ ARG_PUSH_(comma_replace_semi) },
	{ ARG_PUSH_(x1529b) },
	{ ARG_PUSH_(x1521b) },
	{ ARG_POP_ },
	{ TOK_SEMI, { 0 } },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const x15214[] = {
	{ ARG_PUSH_(x1529b) },
	{ ARG_PUSH_(x1521b) },
	{ ARG_END_ }
};

static struct argdesc const iexp_comma[] = {
	{ ARG_PUSH_(iexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_END_ },
	{ ARG_PUSH_(iexp_comma) }
};

static struct argdesc const iexp8[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp) },
	{ ARG_END_ }
};
#define iexp5 iexp8+3
#define iexp4 iexp8+4
#define iexp3 iexp8+5
#define iexp2 iexp8+6

static struct argdesc const x1525b[] = {
	{ ARG_PUSH_(comma_or_semi) },
	{ ARG_PUSH_(x1525b) },
	{ ARG_POP_ },
	{ TOK_PRINTSPACE, { 0 } },
	{ ARG_PUSH_(x1525b) },
	{ ARG_POP_ },
	{ TOK_AT, { 0 } },
	{ ARG_PUSH_(iexp2) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_CALL_FUNC_(f15306) },
	{ ARG_CALL_FUNC_(f15310) },
	{ ARG_PUSH_(x1525b) },
	{ ARG_POP_ },
	{ ARG_PUSH_(x15297) },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_CALL_FUNC_(f15310) },
	{ ARG_PUSH_(x1525b) },
	{ ARG_POP_ },
	{ TOK_USING, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x15214) },
	{ ARG_POP_ },
	{ ARG_PUSH_(x1529b) },
	{ ARG_CALL_FUNC_(f15310) },
	{ ARG_PUSH_(x1525b) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const x1523f[] = {
	{ ARG_PUSH_(comma_or_semi) },
	{ ARG_PUSH_(x1525b) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const yPRINT_args[] = {
	{ ARG_PUSH_(x1525b) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* PRINT -> PRINT # */
	{ TOK_CHANNEL, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ ARG_PUSH_(x1523f) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yLPRINT_args[] = {
	{ ARG_PUSH_(x1525b) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yGOSUB_args[] = {
	{ ARG_CALL_FUNC_(ref_procedure) },
	{ ARG_PUSH_(x14962) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const LABEL_args[] = {
	{ ARG_CALL_FUNC_(ref_label) },
	{ TOK_LABEL, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

/*
 * for ADD: treat +=
 */
static struct argdesc const cstyle_inc[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_POP_ },
	{ TOK_ADD, { 0 } },
	{ TOK_EQ, { 0 } },
	{ ARG_BACK, { 0 } },
	{ ARG_REPLACE_(TOK_COMMA) },
	{ ARG_END_ }
};

static struct argdesc const x151a6[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ ARG_PUSH_(x151a6) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const x1519e[] = {
	{ ARG_PUSH_(iexp) },
	{ ARG_PUSH_(x151a6) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x143e1[] = {
	{ ARG_CALL_FUNC_(expect_bool) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_bool_arr) },
	{ ARG_PUSH_(x1519e) },
	{ ARG_END_ }
};

static struct argdesc const x14402[] = {
	{ ARG_CALL_FUNC_(expect_byte) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_byte_arr) },
	{ ARG_PUSH_(x1519e) },
	{ ARG_END_ }
};

static struct argdesc const x143f7[] = {
	{ ARG_CALL_FUNC_(expect_word) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_word_arr) },
	{ ARG_PUSH_(x1519e) },
	{ ARG_END_ }
};

static struct argdesc const x143d6[] = {
	{ ARG_CALL_FUNC_(expect_int) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_int_arr) },
	{ ARG_PUSH_(x1519e) },
	{ ARG_END_ }
};

static struct argdesc const x143cb[] = {
	{ ARG_CALL_FUNC_(expect_float) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ ARG_PUSH_(x1519e) },
	{ ARG_END_ }
};

static struct argdesc const x14336[] = {
	{ ARG_PUSH_(x143ec) },
	{ ARG_POP_ },
	{ ARG_PUSH_(x143e1) },
	{ ARG_POP_ },
	{ ARG_PUSH_(x14402) },
	{ ARG_POP_ },
	{ ARG_PUSH_(x143f7) },
	{ ARG_POP_ },
	{ ARG_PUSH_(x143d6) },
	{ ARG_POP_ },
	{ ARG_PUSH_(x143cb) },
	{ ARG_END_ }
};

/*
 * ALERT iexp,sexp,iexp,sexp,avar
 */
static struct argdesc const yALERT_args[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+2) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

/*
 * CLEARW aexp
 * AMOUSE
 * BOUNDARY
 * COLOR
 * DEFLIST
 * DEFNUM
 * DMACONTROL
 * DELAY
 * ERROR
 * EDIT
 * GRAPHMODE
 * GSTICK
 * HTAB
 * IKBD
 * JOYPAD
 * KEYPAD
 * KEYPRESS
 * LOG_SET
 * MODE
 * PAUSE
 * PALGET
 * PALSET
 * STICK
 * SUPER
 * SCREEN
 * TMOUSE
 * VTAB
 * V~H=
 * VSGET
 * VSPUT
 * VPALGET
 * VPALSET
 * _GLOBAL=
 * _DATA=
 * _0=
 * ~
 * OPENW
 * CLOSEW
 */
static struct argdesc const yCLEARW_args[] = {
	{ ARG_PUSH_(iexp) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

/*
 * INTIN(aexp)
 * INTOUT(aexp)
 * CONTRL(aexp)
 * PTSIN(aexp)
 * PTSOUT(aexp)
 * USERDEF!(aexp)
 * USERDEF|(aexp)
 * USERDEF&(aexp)
 * USERDEF%(aexp)
 * GINTIN(aexp)
 * GINTOUT(aexp)
 * GCONTRL(aexp)
 */
static struct argdesc const yINTIN_args[] = {
	{ ARG_PUSH_(iexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_BACK, { 0 } },
	{ TOK_EQ, { 0 } },
	{ ARG_REPLACE_(TOK_ARRAY_ASS) },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_END_ }
};

/*
 * ADD avar,aexp
 */
static struct argdesc const yADD_args[] = {
	{ ARG_PUSH_(x143cb) },
	{ ARG_PUSH_(cstyle_inc) },
	{ ARG_PUSH_(x14b9a) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_PUSH_(x14336+4) },
	{ ARG_PUSH_(cstyle_inc) },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(handle_addrin) },
	{ ARG_PUSH_(yINTIN_args) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(handle_addrout) },
	{ ARG_PUSH_(yINTIN_args) },
	{ ARG_END_ }
};

static struct argdesc const yBOX_args[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yALINE_args[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(yBOX_args) },
	{ ARG_END_ }
};

/*
 * SET.PXYXY iexp,iexp,iexp,iexp,iexp,iexp,iexp,iexp
 */
static struct argdesc const yARECT_args[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(yBOX_args) },
	{ ARG_END_ }
};

/*
 * SET.PXYWH iexp,iexp,iexp,iexp,iexp,iexp
 * SET.MFDB iexp,iexp,iexp,iexp,iexp,iexp
 * CRASTER iexp,iexp,iexp,iexp,iexp,iexp
 * SET.MENU iexp,iexp,iexp,iexp,iexp,iexp
 * ACHAR iexp,iexp,iexp,iexp,iexp,iexp
 */
static struct argdesc const yACHAR_args[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(yBOX_args) },
	{ ARG_END_ }
};

/*
 * VGET iexp,iexp,iexp,iexp,iexp
 */
static struct argdesc const yVGET_args[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(yBOX_args) },
	{ ARG_END_ }
};

static struct argdesc const x144ba[] = {
	{ TOK_TO, { 0 } },
	{ ARG_POP_ },
	{ TOK_COMMA, { 0 } },
	{ ARG_REPLACE_(TOK_TO) },
	{ ARG_END_ }
};

static struct argdesc const yAPOLY_args[] = {
	{ ARG_PUSH_(iexp3) },
	{ ARG_PUSH_(x144ba) },
	{ ARG_PUSH_(yVGET_args) },
	{ ARG_END_ }
};

static struct argdesc const yACLIP_args[] = {
	{ ARG_PUSH_(yVGET_args) },
	{ ARG_END_ }
};

static struct argdesc const x1434e[] = {
	{ ARG_CALL_FUNC_(expect_byte) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_string) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_int) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_word) },
	{ ARG_POP_ },
	/* x1435e */
	{ ARG_CALL_FUNC_(expect_float) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_bool) },
	{ ARG_END_ }
};

static struct argdesc const x15027[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_POP_ },
	{ TOK_EQ, { 0 } },
	{ ARG_REPLACE_(TOK_COMMA) },
	{ ARG_END_ }
};

static struct argdesc const yABSOLUTE_args[] = {
	{ ARG_PUSH_(x1434e) },
	{ ARG_PUSH_(x15027) },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_END_ }
};

static struct argdesc const x1480d[] = {
	{ TOK_GOSUB_FUNC, { 0 } },
	{ ARG_POP_ },
	{ TOK_GOSUB, { 0 } },
	{ ARG_REPLACE_(TOK_GOSUB_FUNC) },
	{ ARG_POP_ },
	{ ARG_INSERT_(TOK_GOSUB_FUNC) },
	{ ARG_END_ }
};

static struct argdesc const x14825[] = {
	{ ARG_PUSH_(x1480d) },
	{ ARG_CALL_FUNC_(ref_procedure) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

/*
 * AFTER iexp GOSUB proc
 * EVERY iexp GOSUB proc
 */
static struct argdesc const yAFTER_args[] = {
	{ ARG_PUSH_(iexp) },
	{ ARG_PUSH_(x14825) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* AFTER -> AFTER STOP */
	{ TOK_STOP, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* AFTER -> AFTER CONT */
	{ TOK_CONT, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const any_arr[] = {
	{ ARG_CALL_FUNC_(expect_string_arr) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_bool_arr) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_byte_arr) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_word_arr) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_int_arr) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};
#define int_arr any_arr+15
#define number_arr any_arr+3
#define word_arr any_arr+9

static struct argdesc const yARRAYFILL_args[] = {
	{ ARG_PUSH_(number_arr) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14b9a) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yAVERAGE_RGB_args[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(x14336+2) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+2) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+2) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yBMOVE_args[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yBMIRROR_args[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x144ff[] = {
	{ TOK_CHANNEL, { 0 } },
	{ ARG_BACK, { 0 } },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const x144f6[] = {
	{ ARG_PUSH_(x144ff) },
	{ ARG_INSERT_(TOK_CHANNEL) },
	{ ARG_PUSH_(iexp) },
	{ ARG_END_ }
};

static struct argdesc const yBGET_args[] = {
	{ ARG_PUSH_(x144f6) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(yBMIRROR_args) },
	{ ARG_END_ }
};

/*
 * BITBLT iarr,iarr,iarr
 */
static struct argdesc const yBITBLT_args[] = {
	{ ARG_PUSH_(int_arr) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(int_arr) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(int_arr) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* BITBLT src%(),dst%(),par%() -> BITBLT src%() */
	{ ARG_PUSH_(int_arr) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* BITBLT src%(),dst%(),par%() -> BITBLT src% */
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_END_ }
};

static struct argdesc const x14695[] = {
	{ ARG_PUSH_(comma_or_semi) },
	{ ARG_PUSH_(iexp) },
	{ ARG_END_ }
};

static struct argdesc const x14b90[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const yBSAVE_args[] = {
	{ ARG_PUSH_(sexp) },
	{ ARG_PUSH_(x14695) },
	{ ARG_PUSH_(x14695) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yBLOAD_args[] = {
	{ ARG_PUSH_(x14139) },
	{ ARG_POP_ },
	{ ARG_PUSH_(sexp) },
	{ ARG_PUSH_(x14b90) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const no_args[] = {
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yBCRYPT_args[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(sexp) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14264[] = {
	{ TOK_TO, { 0 } },
	{ ARG_PUSH_(x14264+10) },
	{ ARG_POP_ },
	{ ARG_PUSH_(x14264+10) },
	{ TOK_TO, { 0 } },
	{ ARG_PUSH_(x14264+10) },
	{ ARG_POP_ },
	{ ARG_PUSH_(x14264+10) },
	{ TOK_TO, { 0 } },
	{ ARG_POP_ },
	/* x14276: */
	{ ARG_CALL_FUNC_(f1595a) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_int) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_word) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_byte) },
	{ ARG_END_ }
};

static struct argdesc const x14286[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14264) },
	{ ARG_PUSH_(x14286) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const yCASE_args[] = {
	{ ARG_CALL_FUNC_(dummy_label) },
	{ ARG_PUSH_(x14264) },
	{ ARG_PUSH_(x14286) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yCONT_args[] = {
	{ ARG_PUSH_(no_args) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(handle_contrl) },
	{ ARG_PUSH_(yINTIN_args) },
	{ ARG_END_ }
};

static struct argdesc const yCHAR_args[] = {
	{ ARG_PUSH_(iexp) },
	{ TOK_RBRACE, { 0 } },
	{ ARG_BACK, { 0 } },
	{ TOK_EQ, { 0 } },
	{ ARG_REPLACE_(TOK_REFEND) },
	{ ARG_PUSH_(x14139) },
	{ ARG_END_ }
};

static struct argdesc const x1463c[] = {
	{ TOK_CHANNEL, { 0 } },
	{ ARG_BACK, { 0 } },
	{ ARG_REPLACE_(TOK_CMD_CLEARW2) },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_CLEARW) },
	{ ARG_END_ }
};

static struct argdesc const yCLEAR_args[] = {
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(f13d5a) },
	{ ARG_PUSH_(x1463c) },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_END_ }
};

static struct argdesc const yCIRCLE_args[] = {
	{ ARG_PUSH_(yBMOVE_args) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* CIRCLE x,y,r -> CIRCLE x,y,r,w1,w2 */
	{ ARG_PUSH_(yVGET_args) },
	{ ARG_END_ }
};

static struct argdesc const yCHDIR_args[] = {
	{ ARG_PUSH_(x14139) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(f13d1c) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yCHDRIVE_args[] = {
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* CHDRIVE n -> CHDRIVE n$ */
	{ ARG_PUSH_(yCHDIR_args) },
	{ ARG_END_ }
};

static struct argdesc const x14ab1[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x1434e) },
	{ ARG_PUSH_(x14ab1) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const yCLR_args[] = {
	{ ARG_PUSH_(x1434e) },
	{ ARG_PUSH_(x14ab1) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yCLS_args[] = {
	{ ARG_PUSH_(x144f6) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14628[] = {
	{ TOK_CHANNEL, { 0 } },
	{ ARG_BACK, { 0 } },
	{ ARG_REPLACE_(TOK_CMD_CLOSEW2) },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_CLOSEW) },
	{ ARG_END_ }
};

static struct argdesc const yCLOSE_args[] = {
	{ ARG_CALL_FUNC_(f13d5a) },
	{ ARG_PUSH_(x14628) },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_CLOSE) },
	{ ARG_PUSH_(x144f6) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14aa3[] = {
	{ TOK_OFFSET, { 0 } },
	{ ARG_PUSH_(iexp2) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const yCLIP_args[] = {
	{ TOK_OFF, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* CLIP OFF -> CLIP #n */
	{ TOK_CHANNEL, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ ARG_PUSH_(x14aa3) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* CLIP OFF -> CLIP x,y,w,h */
	{ ARG_PUSH_(iexp4) },
	{ ARG_PUSH_(x14aa3) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* CLIP OFF -> CLIP x,y TO x,y */
	{ ARG_PUSH_(iexp2) },
	{ TOK_TO, { 0 } },
	{ ARG_PUSH_(iexp2) },
	{ ARG_PUSH_(x14aa3) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* CLIP OFF -> CLIP OFFSET x,y */
	{ TOK_OFFSET, { 0 } },
	{ ARG_PUSH_(iexp2) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x152dc[] = {
	{ ARG_PUSH_(iexp) },
	{ ARG_POP_ },
	{ ARG_INSERT_(TOK_PRINTNUM) },
	{ ARG_PUSH_(sexp) },
	{ ARG_END_ }
};

static struct argdesc const x152d3[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x152dc) },
	{ ARG_PUSH_(x152d3) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const x152c7[] = {
	{ TOK_LPAREN, { 0 } },
	{ ARG_REPLACE_(TOK_LPAREN2) },
	{ ARG_PUSH_(x152dc) },
	{ ARG_PUSH_(x152d3) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const yCALL_args[] = {
	{ ARG_CALL_FUNC_(expect_float_or_int) },
	{ ARG_PUSH_(x152c7) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yWORD_args[] = {
	{ ARG_PUSH_(iexp) },
	{ TOK_RBRACE, { 0 } },
	{ ARG_BACK, { 0 } },
	{ TOK_EQ, { 0 } },
	{ ARG_REPLACE_(TOK_REFEND) },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_END_ }
};

static struct argdesc const yDO_args[] = {
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(handle_double_ref) },
	{ ARG_PUSH_(yWORD_args) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(handle_do_while) },
	{ ARG_PUSH_(x14b9a) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};


static struct argdesc const yDEFMOUSE_args[] = {
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_DEFMOUSE2) },
	{ ARG_PUSH_(yCHDIR_args) },
	{ ARG_END_ }
};

/*
 * DEFTEXT [iexp],[iexp],[iexp],[iexp],[iexp]
 */
static struct argdesc const yDEFTEXT_args[] = {
	{ ARG_PUSH_(yDEFTEXT_args+15) },
	{ ARG_POP_ },
	{ ARG_PUSH_(yDEFTEXT_args+6) },
	{ ARG_POP_ },
	{ ARG_PUSH_(x14b90+1) },
	{ TOK_COMMA, { 0 } },
/*
 * DEFLINE [iexp],[iexp],[iexp],[iexp]
 */
	{ ARG_PUSH_(x14b90+1) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14b90+1) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14b90+1) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14b90+1) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
/*
 * DEFMARK [iexp],[iexp],[iexp]
 */
	{ ARG_PUSH_(x14b90+1) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14b90+1) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14b90+1) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_PUSH_(x14b90+1) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14b90+1) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_POP_ },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yDEFFILL_args[] = {
	{ ARG_PUSH_(yDEFTEXT_args+15) },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_DEFFILL2) },
	{ ARG_PUSH_(x14b90+1) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(yCHDIR_args) },
	{ ARG_END_ }
};

static struct argdesc const x14947[] = {
	{ ARG_PUSH_(x1434e) },
	{ ARG_POP_ },
	{ ARG_PUSH_(any_arr) },
	{ ARG_REPLACE_(TOK_RPAREN2) },
	{ ARG_END_ }
};

static struct argdesc const x14951[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14947) },
	{ ARG_PUSH_(x14951) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const x14935[] = {
	{ TOK_COMMA, { 0 } },
	{ TOK_VAR, { 0 } },
	{ ARG_PUSH_(x14947) },
	{ ARG_PUSH_(x14951) },
	{ ARG_POP_ },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x1434e) },
	{ ARG_PUSH_(x14935) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const x14926[] = {
	{ TOK_VAR, { 0 } },
	{ ARG_PUSH_(x14947) },
	{ ARG_PUSH_(x14951) },
	{ ARG_POP_ },
	{ ARG_PUSH_(x1434e) },
	{ ARG_PUSH_(x14935) },
	{ ARG_END_ }
};

static struct argdesc const x14917[] = {
	{ TOK_LPAREN, { 0 } },
	{ ARG_PUSH_(x14926) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const yDEFFN_args[] = {
	{ ARG_CALL_FUNC_(expect_float_func) },
	{ ARG_PUSH_(x14917) },
	{ TOK_EQ, { 0 } },
	{ ARG_REPLACE_(TOK_ASSIGN) },
	{ ARG_PUSH_(x14b9a) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_string_func) },
	{ ARG_PUSH_(x14917) },
	{ TOK_EQ, { 0 } },
	{ ARG_REPLACE_(TOK_ASSIGN) },
	{ ARG_PUSH_(x14139) },
	{ ARG_END_ }
};

static struct argdesc const yDEFAULT_args[] = {
	{ ARG_CALL_FUNC_(dummy_label) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yDEC_args[] = {
	{ ARG_PUSH_(x14336+4) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const cstyle_div[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_POP_ },
	{ TOK_DIVIDE, { 0 } },
	{ TOK_EQ, { 0 } },
	{ ARG_BACK, { 0 } },
	{ ARG_REPLACE_(TOK_COMMA) },
	{ ARG_END_ }
};

/*
 * DIV avar,aexp
 */
static struct argdesc const yDIV_args[] = {
	{ ARG_PUSH_(x143cb) },
	{ ARG_PUSH_(cstyle_div) },
	{ ARG_PUSH_(x14b9a) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_PUSH_(x14336+4) },
	{ ARG_PUSH_(cstyle_div) },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_END_ }
};

static struct argdesc const expect_any_arr[] = {
	{ ARG_CALL_FUNC_(expect_bool_arr) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_string_arr) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_int_arr) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_word_arr) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_byte_arr) },
	{ ARG_END_ }
};

static struct argdesc const x143a6[] = {
	{ ARG_PUSH_(expect_any_arr) },
	{ ARG_PUSH_(x1519e) },
	{ ARG_END_ }
};

static struct argdesc const x14804[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x143a6) },
	{ ARG_PUSH_(x14804) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const yDIM_args[] = {
	{ ARG_PUSH_(x143a6) },
	{ ARG_PUSH_(x14804) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yDMASOUND_args[] = {
	{ ARG_PUSH_(yBOX_args) },
	{ ARG_POP_ },
	{ ARG_PUSH_(yBMOVE_args) },
	{ ARG_END_ }
};

static struct argdesc const x14570[] = {
	{ ARG_PUSH_(sexp) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(f14578) },
	{ ARG_END_ }
};

static struct argdesc const tok_to[] = {
	{ TOK_TO, { 0 } },
	{ ARG_POP_ },
	{ TOK_COMMA, { 0 } },
	{ ARG_REPLACE_(TOK_TO) },
	{ ARG_POP_ },
	{ TOK_SEMI, { 0 } },
	{ ARG_REPLACE_(TOK_TO) },
	{ ARG_POP_ },
	{ ARG_INSERT_(TOK_TO) },
	{ ARG_END_ }
};

/*
 * DIR [sexp [TO sexp]]
 */
static struct argdesc const yDIR_args[] = {
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_PUSH_(x14570) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_PUSH_(x14570) },
	{ ARG_PUSH_(tok_to) },
	{ ARG_PUSH_(x14570) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yDELETE_args[] = {
	{ ARG_PUSH_(expect_any_arr+2) },
	{ ARG_PUSH_(iexp_rparen) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14692[] = {
	{ ARG_PUSH_(iexp) },
	{ ARG_PUSH_(comma_or_semi) },
	{ ARG_PUSH_(iexp) },
	{ ARG_END_ }
};

static struct argdesc const x146d3[] = {
	{ TOK_TO, { 0 } },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const x146c9[] = {
	{ TOK_TO, { 0 } },
	{ ARG_PUSH_(x14692) },
	{ ARG_PUSH_(x146c9) },
	{ ARG_POP_ },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x146c0[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_POP_ },
	{ TOK_SEMI, { 0 } },
	{ ARG_POP_ },
	{ TOK_PRINTSPACE, { 0 } },
	{ ARG_POP_ },
	{ ARG_INSERT_(TOK_COMMA) },
	{ ARG_END_ }
};

static struct argdesc const x146b4[] = {
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_PUSH_(x146c0) },
	{ ARG_PUSH_(x1529b) },
	{ ARG_PUSH_(x146b4) },
	{ ARG_END_ }
};

static struct argdesc const x146ad[] = {
	{ ARG_PUSH_(sexp) },
	{ ARG_PUSH_(x146b4) },
	{ ARG_END_ }
};

/*
 * DRAW iexp,iexp
 */
static struct argdesc const yDRAW_args[] = {
	{ ARG_PUSH_(x146d3) },
	{ ARG_PUSH_(x14692) },
	{ ARG_PUSH_(x146c9) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* DRAW x,y -> DRAW s$ */
	{ ARG_PUSH_(x146ad) },
	{ ARG_END_ }
};

static struct argdesc const x1455c[] = {
	{ ARG_CALL_FUNC_(f13d22) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(f13d1c) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yDEFINT_args[] = {
	{ ARG_PUSH_(x1455c) },
	{ ARG_CALL_FUNC_(execute_defint) },
	{ ARG_END_ }
};

static struct argdesc const maybe_if[] = {
	{ TOK_IF, { 0 } },
	{ ARG_BACK, { 0 } },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const yELSE_args[] = {
	{ ARG_CALL_FUNC_(dummy_label) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_ELSEIF) },
	{ ARG_CALL_FUNC_(dummy_label) },
	{ ARG_PUSH_(maybe_if) },
	{ ARG_PUSH_(x14b9a) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yENDSWITCH_args[] = {
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yENDWHILE_args[] = {
	{ ARG_CALL_FUNC_(dummy_label) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yENDREPEAT_args[] = {
	{ ARG_CALL_FUNC_(dummy_label) },
	{ ARG_PUSH_(x14b9a) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yEXIT_IF_args[] = {
	{ ARG_CALL_FUNC_(dummy_label) },
	{ ARG_PUSH_(maybe_if) },
	{ ARG_PUSH_(x14b9a) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

/*
 * ELLIPSE iexp,iexp,iexp,iexp
 */
static struct argdesc const yELLIPSE_args[] = {
	{ ARG_PUSH_(yBOX_args) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* ELLIPSE x,y,rx,ry -> ELLIPSE x,y,rx,ry,w1,w2 */
	{ ARG_PUSH_(yACHAR_args) },
	{ ARG_END_ }
};

static struct argdesc const x14425[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(any_arr) },
	{ ARG_PUSH_(x14425) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const yERASE_args[] = {
	{ ARG_PUSH_(any_arr) },
	{ ARG_PUSH_(x14425) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x144dd[] = {
	{ ARG_PUSH_(x14b9a) },
	{ ARG_PUSH_(x144dd+3) },
	{ ARG_PUSH_(x144dd+3) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ ARG_END_ }
};

static struct argdesc const yEXEC_args[] = {
	{ ARG_PUSH_(x144dd) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yENVIRON_args[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(x143ec) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x1438e[] = {
	{ ARG_CALL_FUNC_(expect_float) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_int) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_word) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_byte) },
	{ ARG_END_ }
};

static struct argdesc const x14213[] = {
	{ TOK_INPUT3, { 0 } },
	{ ARG_BACK, { 0 } },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const x14217[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_POP_ },
	{ TOK_AS, { 0 } },
	{ ARG_POP_ },
	{ TOK_SEMI, { 0 } },
	{ ARG_REPLACE_(TOK_COMMA) },
	{ ARG_END_ }
};

static struct argdesc const x14245[] = {
	{ TOK_STEP, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ ARG_CALL_FUNC_(f15976) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(f1596e) },
	{ ARG_END_ }
};

static struct argdesc const x14228[] = {
	{ TOK_EQ, { 0 } },
	{ ARG_REPLACE_(TOK_ASSIGN) },
	{ ARG_PUSH_(iexp) },
	{ TOK_TO, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ ARG_PUSH_(x14245) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ TOK_EQ, { 0 } },
	{ ARG_REPLACE_(TOK_ASSIGN) },
	{ ARG_PUSH_(iexp) },
	{ TOK_DOWNTO, { 0 } },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_CALL_FUNC_(f15972) },
	{ ARG_END_ }
};

static struct argdesc const yFOR_args[] = {
	{ ARG_PUSH_(x1438e) },
	{ ARG_PUSH_(x14228) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(handle_form_input) },
	{ ARG_PUSH_(x14213) },
	{ ARG_PUSH_(x14b9a) },
	{ ARG_PUSH_(x14217) },
	{ ARG_PUSH_(x143ec) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yFUNCTION_args[] = {
	{ ARG_CALL_FUNC_(expect_float_func) },
	{ ARG_PUSH_(x14917) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_string_func) },
	{ ARG_PUSH_(x14917) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

/*
 * FILL x,y
 */
static struct argdesc const yFILL_args[] = {
	{ ARG_PUSH_(yBMIRROR_args) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* FILL x,y -> FILL x,y,f */
	{ ARG_PUSH_(yBMOVE_args) },
	{ ARG_END_ }
};

static struct argdesc const x1421f[] = {
	{ ARG_PUSH_(x14217) },
	{ ARG_REPLACE_(TOK_AS) },
	{ ARG_POP_ },
	{ ARG_INSERT_(TOK_AS) },
	{ ARG_END_ }
};

static struct argdesc const x146f8[] = {
	{ ARG_PUSH_(x14695) },
	{ ARG_PUSH_(x1421f) },
	{ ARG_CALL_FUNC_(expect_string) },
	{ ARG_POP_ },
	{ ARG_PUSH_(x14695) },
	{ TOK_AT, { 0 } },
	{ ARG_REPLACE_(TOK_AT2) },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_END_ }
};

static struct argdesc const x1470c[] = {
	{ ARG_PUSH_(x146f8) },
	{ ARG_PUSH_(x1470c) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const yFIELD_args[] = {
	{ ARG_PUSH_(x144f6) },
	{ ARG_PUSH_(x146f8) },
	{ ARG_PUSH_(x1470c) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14503[] = {
	{ TOK_CHANNEL, { 0 } },
	{ ARG_PUSH_(x14570) },
	{ TOK_COMMA, { 0 } },
	{ ARG_POP_ },
	{ ARG_END_ }
};

/*
 * FILES [sexp [TO sexp]]
 */
static struct argdesc const yFILES_args[] = {
	{ ARG_CALL_FUNC_(handle_fileselect) },
	{ ARG_PUSH_(x14503) },
	{ ARG_PUSH_(x14570) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14570) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x143ec) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(handle_files) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_PUSH_(x14570) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_PUSH_(x14570) },
	{ ARG_PUSH_(tok_to) },
	{ ARG_PUSH_(x14570) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yFULLW_args[] = {
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_POP_ },
	{ TOK_CHANNEL, { 0 } },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_END_ }
};

static struct argdesc const yGOTO_args[] = {
	{ ARG_CALL_FUNC_(ref_label) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

/*
 * GEMSYS [iexp]
 */
static struct argdesc const yGEMSYS_args[] = {
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_GEMSYS2) },
	{ ARG_PUSH_(yCLEARW_args) },
#if GBE > 0
	{ ARG_POP_ },
	{ ARG_PUSH_(yVGET_args) },
#endif
	{ ARG_END_ }
};

static struct argdesc const yGET_args[] = {
	{ ARG_PUSH_(iexp4) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x143ec) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_GET2) },
	{ ARG_PUSH_(x144f6) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_GET3) },
	{ ARG_PUSH_(x144f6) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_END_ }
};

static struct argdesc const x141b0[] = {
	{ TOK_THEN, { 0 } },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const yIF_args[] = {
	{ ARG_CALL_FUNC_(dummy_label) },
	{ ARG_PUSH_(x14b9a) },
	{ ARG_PUSH_(x141b0) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yINFOW_args[] = {
	{ ARG_PUSH_(x144ff) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(yCHDIR_args) },
	{ ARG_END_ }
};

static struct argdesc const x1413e[] = {
	{ ARG_PUSH_(iexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_BACK, { 0 } },
	{ TOK_EQ, { 0 } },
	{ ARG_REPLACE_(TOK_ARRAY_ASS) },
	{ ARG_END_ }
};

static struct argdesc const yINSERT_args[] = {
	{ ARG_PUSH_(expect_any_arr+6) },
	{ ARG_PUSH_(x1413e) },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ ARG_PUSH_(x1413e) },
	{ ARG_PUSH_(x14b9a) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_string_arr) },
	{ ARG_PUSH_(x1413e) },
	{ ARG_PUSH_(sexp) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x151f6[] = {
	{ ARG_PUSH_(comma_or_semi) },
	{ ARG_PUSH_(x14336) },
	{ ARG_PUSH_(x151f6) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const yINPUT_args[] = {
	{ ARG_CALL_FUNC_(f13d22) },
	{ ARG_PUSH_(yINPUT_args+7) },
	{ ARG_POP_ },
	{ ARG_PUSH_(yINPUT_args+8) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* INPUT x -> INPUT #n,x */
	{ ARG_PUSH_(x144f6) },
	{ ARG_PUSH_(comma_or_semi) },
	{ ARG_PUSH_(x14336) },
	{ ARG_PUSH_(x151f6) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yINLINE_args[] = {
	{ ARG_CALL_FUNC_(expect_int) },
	{ TOK_COMMA, { 0 } },
	{ ARG_CALL_FUNC_(f158f8) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yKEYTEST_args[] = {
	{ ARG_PUSH_(x14336+2) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yKEYDEF_args[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(x14139) },
	{ ARG_END_ }
};

static struct argdesc const yLOOP_args[] = {
	{ ARG_CALL_FUNC_(dummy_label) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(handle_loop_while) },
	{ ARG_PUSH_(x14b9a) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14196[] = {
	{ TOK_EQ, { 0 } },
	{ ARG_REPLACE_(TOK_ASSIGN) },
	{ ARG_PUSH_(x14139) },
	{ ARG_END_ }
};

/*
 * RSET a$=b$
 * LSET a$=b$
 */
static struct argdesc const yRSET_args[] = {
	{ ARG_CALL_FUNC_(expect_string) },
	{ ARG_PUSH_(x14196) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_string_arr) },
	{ ARG_PUSH_(x1519e) },
	{ ARG_BACK, { 0 } },
	{ TOK_EQ, { 0 } },
	{ ARG_REPLACE_(TOK_ARRAY_ASS) },
	{ ARG_PUSH_(x14139) },
	{ ARG_END_ }
};

static struct argdesc const x1437e[] = {
	{ ARG_CALL_FUNC_(expect_bool_arr) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ ARG_END_ }
};

static struct argdesc const x14147[] = {
	{ ARG_PUSH_(x1519e) },
	{ ARG_BACK, { 0 } },
	{ TOK_EQ, { 0 } },
	{ ARG_REPLACE_(TOK_ARRAY_ASS) },
	{ ARG_END_ }
};

static struct argdesc const yLET_args[] = {
	{ ARG_PUSH_(x1438e+2) },
	{ TOK_EQ, { 0 } },
	{ ARG_REPLACE_(TOK_ASSIGN) },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_POP_ },
	{ ARG_PUSH_(x1434e+8) },
	{ TOK_EQ, { 0 } },
	{ ARG_REPLACE_(TOK_ASSIGN) },
	{ ARG_PUSH_(x14b9a) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_PUSH_(x1438e) },
	{ TOK_SUB, { 0 } },
	{ TOK_EQ, { 0 } },
	{ ARG_CALL_FUNC_(f140e2) },
	{ ARG_POP_ },
	{ ARG_PUSH_(x1438e) },
	{ TOK_ADD, { 0 } },
	{ TOK_EQ, { 0 } },
	{ ARG_CALL_FUNC_(f140d6) },
	{ ARG_POP_ },
	{ ARG_PUSH_(x1438e) },
	{ TOK_MUL, { 0 } },
	{ TOK_EQ, { 0 } },
	{ ARG_CALL_FUNC_(f140ee) },
	{ ARG_POP_ },
	{ ARG_PUSH_(x1438e) },
	{ TOK_DIVIDE, { 0 } },
	{ TOK_EQ, { 0 } },
	{ ARG_CALL_FUNC_(f140fa) },
	{ ARG_POP_ },
	{ ARG_PUSH_(expect_any_arr+6) },
	{ ARG_PUSH_(x14147) },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_POP_ },
	{ ARG_PUSH_(x1437e) },
	{ ARG_PUSH_(x14147) },
	{ ARG_PUSH_(x14b9a) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_PUSH_(yRSET_args) },
	{ ARG_END_ }
};

static struct argdesc const print_channel_args[] = {
	{ TOK_CHANNEL, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ ARG_PUSH_(comma_or_semi) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const x1442e[] = {
	{ ARG_PUSH_(comma_or_semi) },
	{ ARG_PUSH_(x143ec) },
	{ ARG_PUSH_(x1442e) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const yLINE_args[] = {
	{ ARG_REPLACE_(TOK_CMD_LINE_INPUT) },
	{ ARG_PUSH_(x14213) },
	{ ARG_PUSH_(print_channel_args) },
	{ ARG_PUSH_(x143ec) },
	{ ARG_PUSH_(x1442e) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_PUSH_(x14213) },
	{ ARG_CALL_FUNC_(f13d22) },
	{ ARG_PUSH_(comma_or_semi) },
	{ ARG_PUSH_(x143ec) },
	{ ARG_PUSH_(x1442e) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_LINE) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yMONITOR_args[] = {
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_POP_ },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const cstyle_mul[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_POP_ },
	{ TOK_MUL, { 0 } },
	{ TOK_EQ, { 0 } },
	{ ARG_BACK, { 0 } },
	{ ARG_REPLACE_(TOK_COMMA) },
	{ ARG_END_ }
};

/*
 * MUL avar,aexp
 */
static struct argdesc const yMUL_args[] = {
	{ ARG_PUSH_(x143cb) },
	{ ARG_PUSH_(cstyle_mul) },
	{ ARG_PUSH_(x14b9a) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_PUSH_(x14336+4) },
	{ ARG_PUSH_(cstyle_mul) },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_END_ }
};

static struct argdesc const yMENU_args[] = {
	{ ARG_CALL_FUNC_(expect_string_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* MENU -> MENU OFF */
	{ TOK_OFF, { 0 } },
	{ ARG_BACK, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* MENU -> MENU KILL */
	{ TOK_KILL, { 0 } },
	{ ARG_BACK, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* MENU -> MENU x,y */
	{ ARG_PUSH_(yBMIRROR_args) },
	{ ARG_POP_ },
	{ ARG_INSERT_(TOK_PRINTNUM) },
	{ ARG_PUSH_(iexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yMIDs_args[] = {
	{ ARG_PUSH_(x143ec) },
	{ ARG_PUSH_(x14695) },
	{ ARG_PUSH_(x14b90) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_PUSH_(x14196) },
	{ ARG_END_ }
};

static struct argdesc const yMOUSE_args[] = {
	{ ARG_PUSH_(x14336+2) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+2) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+2) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yNEXT_args[] = {
	{ ARG_CALL_FUNC_(dummy_label) },
	{ ARG_PUSH_(x1438e) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yNAME_args[] = {
	{ ARG_PUSH_(x14570) },
	{ ARG_PUSH_(x1421f) },
	{ ARG_PUSH_(yCHDIR_args) },
	{ ARG_END_ }
};

static struct argdesc const x145f0[] = {
	{ ARG_REPLACE_(TOK_CMD_OPENW) },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_POP_ },
	{ ARG_PUSH_(yBMOVE_args) },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_OPENW2) },
	{ ARG_PUSH_(x144ff) },
	{ ARG_PUSH_(yACHAR_args) },
	{ ARG_END_ }
};

static struct argdesc const x144ef[] = {
	{ ARG_PUSH_(comma_or_semi) },
	{ ARG_POP_ },
	{ ARG_INSERT_(TOK_COMMA) },
	{ ARG_END_ }
};

static struct argdesc const yOPEN_args[] = {
	{ ARG_CALL_FUNC_(f13d5a) },
	{ ARG_PUSH_(x145f0) },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_OPEN) },
	{ ARG_PUSH_(x14570) },
	{ ARG_PUSH_(x144ef) },
	{ ARG_PUSH_(x144f6) },
	{ ARG_PUSH_(x144ef) },
	{ ARG_PUSH_(x14570) },
	{ ARG_PUSH_(x14b90) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x1481f[] = {
	{ TOK_GOSUB_FUNC, { 0 } },
	{ ARG_POP_ },
	{ TOK_GOSUB, { 0 } },
	{ ARG_REPLACE_(TOK_GOSUB_FUNC) },
	{ ARG_END_ }
};

static struct argdesc const x14816[] = {
	{ ARG_PUSH_(x1480d) },
	{ ARG_BACK, { 0 } },
	{ ARG_CALL_FUNC_(ref_procedure) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x148ca[] = {
	{ ARG_CALL_FUNC_(ref_procedure) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(ref_procedure) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x148ca) },
	{ ARG_END_ }
};

/*
 * ON ERROR
 * ON ERROR GOSUB proc
 * ON BREAK
 * ON BREAK CONT
 * ON BREAK GOSUB proc
 */
static struct argdesc const yON_args[] = {
	{ ARG_REPLACE_(TOK_CMD_ON) },
	{ TOK_ERROR, { 0 } },
	{ ARG_BACK, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },

	{ ARG_REPLACE_(TOK_CMD_ON_BREAK) },
	{ TOK_BREAK, { 0 } },
	{ ARG_BACK, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },

	{ ARG_REPLACE_(TOK_CMD_ON_BREAK_CONT) },
	{ TOK_BREAK, { 0 } },
	{ ARG_BACK, { 0 } },
	{ TOK_CONT, { 0 } },
	{ ARG_BACK, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },

	{ ARG_REPLACE_(TOK_CMD_ON_ERROR_GOSUB) },
	{ TOK_ERROR, { 0 } },
	{ ARG_BACK, { 0 } },
	{ ARG_PUSH_(x14816) },
	{ ARG_POP_ },

	{ ARG_REPLACE_(TOK_CMD_ON_BREAK_GOSUB) },
	{ TOK_BREAK, { 0 } },
	{ ARG_BACK, { 0 } },
	{ ARG_PUSH_(x14816) },
	{ ARG_POP_ },

	{ ARG_REPLACE_(TOK_CMD_ON_MENU_GOSUB) },
	{ TOK_MENU, { 0 } },
	{ ARG_BACK, { 0 } },
	{ ARG_PUSH_(x1481f) },
	{ ARG_PUSH_(x14816+1) },
	{ ARG_POP_ },

	{ ARG_REPLACE_(TOK_CMD_ON_MENU_MESSAGE) },
	{ TOK_MENU, { 0 } },
	{ ARG_BACK, { 0 } },
	{ TOK_MESSAGE, { 0 } },
	{ ARG_BACK, { 0 } },
	{ ARG_PUSH_(x14816) },
	{ ARG_POP_ },

	{ ARG_REPLACE_(TOK_CMD_ON_MENU_KEY) },
	{ TOK_MENU, { 0 } },
	{ ARG_BACK, { 0 } },
	{ TOK_KEY, { 0 } },
	{ ARG_BACK, { 0 } },
	{ ARG_PUSH_(x14816) },
	{ ARG_POP_ },

	{ ARG_REPLACE_(TOK_CMD_ON_MENU_BUTTON) },
	{ TOK_MENU, { 0 } },
	{ ARG_BACK, { 0 } },
	{ TOK_BUTTON, { 0 } },
	{ ARG_BACK, { 0 } },
	{ ARG_PUSH_(iexp3) },
	{ ARG_PUSH_(x14825) },
	{ ARG_POP_ },

	{ ARG_REPLACE_(TOK_CMD_ON_MENU_IBOX) },
	{ TOK_MENU, { 0 } },
	{ ARG_BACK, { 0 } },
	{ TOK_IBOX, { 0 } },
	{ ARG_BACK, { 0 } },
	{ ARG_PUSH_(iexp5) },
	{ ARG_PUSH_(x14825) },
	{ ARG_POP_ },

	{ ARG_REPLACE_(TOK_CMD_ON_MENU_OBOX) },
	{ TOK_MENU, { 0 } },
	{ ARG_BACK, { 0 } },
	{ TOK_OBOX, { 0 } },
	{ ARG_BACK, { 0 } },
	{ ARG_PUSH_(iexp5) },
	{ ARG_PUSH_(x14825) },
	{ ARG_POP_ },

	{ ARG_REPLACE_(TOK_CMD_ON_MENU_N) },
	{ TOK_MENU, { 0 } },
	{ ARG_BACK, { 0 } },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_POP_ },

	{ ARG_REPLACE_(TOK_CMD_ON_MENU) },
	{ TOK_MENU, { 0 } },
	{ ARG_BACK, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },

	{ ARG_REPLACE_(TOK_CMD_ON) },
	{ ARG_PUSH_(iexp) },
	{ ARG_PUSH_(x1480d) },
	{ ARG_PUSH_(x148ca) },
	{ ARG_END_ }
};

static struct argdesc const x147e0[] = {
	{ ARG_PUSH_(comma_or_semi) },
	{ ARG_PUSH_(iexp) },
	{ ARG_PUSH_(x147e0) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const yOUT_args[] = {
	{ ARG_PUSH_(yOUT_args+11) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* OUT n,x -> OUT #n,x */
	{ TOK_CHANNEL, { 0 } },
	{ ARG_PUSH_(yOUT_args+11) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(f13de4) },
	{ TOK_CHANNEL, { 0 } },
	{ ARG_PUSH_(yOUT_args+11) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(f13de4) },
	/* x147d8 */
	{ ARG_PUSH_(iexp2) },
	{ ARG_PUSH_(x147e0) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yOPTION_args[] = {
	{ TOK_BASE, { 0 } },
	{ TOK_CONST_ZERO, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ TOK_BASE, { 0 } },
	{ TOK_CONST_ONE, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yOB_TEXTs_args[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_BACK, { 0 } },
	{ TOK_EQ, { 0 } },
	{ ARG_REPLACE_(TOK_ARRAY_ASS) },
	{ ARG_PUSH_(yCHDIR_args) },
	{ ARG_END_ }
};

static struct argdesc const x1491e[] = {
	{ TOK_LPAREN, { 0 } },
	{ ARG_BACK, { 0 } },
	{ ARG_PUSH_(x14926) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const yPROCEDURE_args[] = {
	{ ARG_CALL_FUNC_(ref_procedure) },
	{ ARG_PUSH_(x1491e) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yPUT_args[] = {
	{ ARG_PUSH_(iexp2) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x143ec) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },

	{ ARG_REPLACE_(TOK_CMD_PUT2) },
	{ ARG_PUSH_(iexp2) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x143ec) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_POP_ },

	{ ARG_REPLACE_(TOK_CMD_PUT3) },
	{ ARG_PUSH_(x144f6) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },

	{ ARG_REPLACE_(TOK_CMD_PUT4) },
	{ ARG_PUSH_(x144f6) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_END_ }
};

static struct argdesc const yPOLYLINE_args[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(word_arr) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(word_arr) },
	{ ARG_PUSH_(x14aa3) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yPIXEL32_args[] = {
	{ ARG_PUSH_(yVGET_args) },
	{ ARG_POP_ },

	{ ARG_REPLACE_(TOK_CMD_PIXEL32_7) },
	{ ARG_PUSH_(yALINE_args) },
	{ ARG_END_ }
};

static struct argdesc const yPIXEL24_args[] = {
	{ ARG_PUSH_(yVGET_args) },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_PIXEL24_7) },
	{ ARG_PUSH_(yALINE_args) },
	{ ARG_END_ }
};

static struct argdesc const yPIXEL16_args[] = {
	{ ARG_PUSH_(yVGET_args) },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_PIXEL16_7) },
	{ ARG_PUSH_(yALINE_args) },
	{ ARG_END_ }
};

static struct argdesc const yPIXEL15_args[] = {
	{ ARG_PUSH_(yVGET_args) },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_PIXEL15_7) },
	{ ARG_PUSH_(yALINE_args) },
	{ ARG_END_ }
};

struct argdesc const x14b9a[] = {
	{ ARG_PUSH_(x14ba8) },
	{ ARG_PUSH_(x14b9a) },
	{ ARG_POP_ },
	{ ARG_PUSH_(x14bb2) },
	{ ARG_PUSH_(x14bc8) },
	{ ARG_END_ }
};

static struct argdesc const x14054[] = {
	{ TOK_OFFSET, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const x1405a[] = {
	{ ARG_CALL_FUNC_(expect_int_arr) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_word_arr) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_byte_arr) },
	{ ARG_END_ }
};

static struct argdesc const x1404d[] = {
	{ TOK_WITH, { 0 } },
	{ ARG_PUSH_(x1405a) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const x14039[] = {
	{ ARG_CALL_FUNC_(expect_string_arr) },
	{ ARG_PUSH_(x14076) },
	{ ARG_PUSH_(x14054) },
	{ ARG_PUSH_(x1404d) },
	{ ARG_POP_ },
	{ ARG_PUSH_(expect_any_arr+2) },
	{ ARG_PUSH_(x14076) },
	{ ARG_END_ }
};

static struct argdesc const x1406f[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_CALL_FUNC_(expect_int_arr) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const x14066[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ ARG_PUSH_(x1406f) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const yQSORT_args[] = {
	{ ARG_PUSH_(x14039) },
	{ ARG_PUSH_(x14066) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yRESTORE_args[] = {
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(ref_label) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yRETURN_args[] = {
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_RETURN) },
	{ ARG_PUSH_(x14b9a) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_RETURN_STR) },
	{ ARG_PUSH_(x14139) },
	{ ARG_END_ }
};

static struct argdesc const yRESERVE_args[] = {
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_RESERVE_N) },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_END_ }
};

static struct argdesc const yRCALL_args[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_CALL_FUNC_(expect_int_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yRESUME_args[] = {
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ TOK_NEXT, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* RESUME -> RESUME label */
	{ ARG_CALL_FUNC_(ref_label) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yREAD_args[] = {
	{ ARG_PUSH_(yINPUT_args+8) },
	{ ARG_END_ }
};

static struct argdesc const yRECORD_args[] = {
	{ ARG_PUSH_(x144f6) },
	{ ARG_PUSH_(comma_or_semi) },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_END_ }
};

static struct argdesc const yRUN_args[] = {
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* RUN -> RUN f$ */
	{ ARG_PUSH_(x14139) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(f13d1c) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14b56[] = {
	{ TOK_TO, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const x14b4f[] = {
	{ ARG_PUSH_(iexp) },
	{ ARG_PUSH_(x14b56) },
	{ ARG_END_ }
};

static struct argdesc const yRECALL_args[] = {
	{ ARG_PUSH_(x144f6) },
	{ TOK_COMMA, { 0 } },
	{ ARG_CALL_FUNC_(expect_string_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14b4f) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+8) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yRC_COPY_args[] = {
	{ ARG_PUSH_(iexp5) },
	{ ARG_PUSH_(tok_to) },
	{ ARG_PUSH_(iexp3) },
	{ ARG_PUSH_(x14b90) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yRC_REDRAW_args[] = {
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_RC_REDRAW2) },
	{ ARG_PUSH_(yBOX_args) },
	{ ARG_END_ }
};

static struct argdesc const yRGB_args[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(x14336+4) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+4) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+4) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const ySWITCH_args[] = {
	{ ARG_CALL_FUNC_(dummy_label) },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_SELECT_STR) },
	{ ARG_CALL_FUNC_(dummy_label) },
	{ ARG_PUSH_(x14139) },
	{ ARG_END_ }
};

static struct argdesc const ySWAP_args[] = {
	{ ARG_PUSH_(x143cb) },
	{ ARG_PUSH_(comma_or_semi) },
	{ ARG_PUSH_(x143cb) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_PUSH_(x143d6) },
	{ ARG_PUSH_(comma_or_semi) },
	{ ARG_PUSH_(x143d6) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_PUSH_(x143e1) },
	{ ARG_PUSH_(comma_or_semi) },
	{ ARG_PUSH_(x143e1) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_PUSH_(x143ec) },
	{ ARG_PUSH_(comma_or_semi) },
	{ ARG_PUSH_(x143ec) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_PUSH_(x143f7) },
	{ ARG_PUSH_(comma_or_semi) },
	{ ARG_PUSH_(x143f7) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_PUSH_(x14402) },
	{ ARG_PUSH_(comma_or_semi) },
	{ ARG_PUSH_(x14402) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* SWAP a,b -> SWAP a(),b() */
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_COMMA, { 0 } },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_int_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_COMMA, { 0 } },
	{ ARG_CALL_FUNC_(expect_int_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_bool_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_COMMA, { 0 } },
	{ ARG_CALL_FUNC_(expect_bool_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_string_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_COMMA, { 0 } },
	{ ARG_CALL_FUNC_(expect_string_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_word_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_COMMA, { 0 } },
	{ ARG_CALL_FUNC_(expect_word_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_byte_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_COMMA, { 0 } },
	{ ARG_CALL_FUNC_(expect_byte_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* SWAP a,b -> SWAP *c,d() */
	{ TOK_MUL, { 0 } },
	{ ARG_PUSH_(x14386) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(any_arr) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const cstyle_dec[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_POP_ },
	{ TOK_SUB, { 0 } },
	{ TOK_EQ, { 0 } },
	{ ARG_BACK, { 0 } },
	{ ARG_REPLACE_(TOK_COMMA) },
	{ ARG_END_ }
};

/*
 * SUB avar,aexp
 */
static struct argdesc const ySUB_args[] = {
	{ ARG_PUSH_(x143cb) },
	{ ARG_PUSH_(cstyle_dec) },
	{ ARG_PUSH_(x14b9a) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },

	{ ARG_PUSH_(x14336+4) },
	{ ARG_PUSH_(cstyle_dec) },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_POP_ },

	{ ARG_REPLACE_(TOK_CMD_PROCEDURE) },
	{ ARG_PUSH_(yPROCEDURE_args) },
	{ ARG_END_ }
};

static struct argdesc const ySETCOLOR_args[] = {
	{ ARG_PUSH_(yBMIRROR_args) },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_SETCOLOR2) },
	{ ARG_PUSH_(yBOX_args) },
	{ ARG_END_ }
};

static struct argdesc const ySEEK_args[] = {
	{ ARG_PUSH_(x144ff) },
	{ ARG_PUSH_(yBMIRROR_args) },
	{ ARG_END_ }
};

static struct argdesc const x145ce[] = {
	{ ARG_PUSH_(x14570) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const ySETTIME_args[] = {
	{ ARG_PUSH_(x145ce) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(yCHDIR_args) },
	{ ARG_END_ }
};

static struct argdesc const ySPUT_args[] = {
	{ ARG_PUSH_(x143ec) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const ySOUND_args[] = {
	{ ARG_PUSH_(iexp2) },
	{ ARG_PUSH_(comma_or_semi) },
	{ TOK_CHANNEL, { 0 } },
	{ ARG_PUSH_(ySOUND_args+13) },
	{ ARG_POP_ },
	{ ARG_PUSH_(yVGET_args) },
	{ ARG_POP_ },
	{ ARG_PUSH_(yBOX_args) },
	{ ARG_POP_ },
	{ ARG_PUSH_(yBMOVE_args) },
	{ ARG_POP_ },
	{ ARG_PUSH_(no_args) },
	{ ARG_POP_ },
	/* x147b9 */
	{ ARG_PUSH_(yBMIRROR_args) },
	{ ARG_POP_ },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_END_ }
};

static struct argdesc const ySETMOUSE_args[] = {
	{ ARG_PUSH_(yBMOVE_args) },
	{ ARG_POP_ },
	{ ARG_PUSH_(yBMIRROR_args) },
	{ ARG_END_ }
};

static struct argdesc const x14b49[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14b4f) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const ySTORE_args[] = {
	{ ARG_PUSH_(x144f6) },
	{ TOK_COMMA, { 0 } },
	{ ARG_CALL_FUNC_(expect_string_arr) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_PUSH_(x14b49) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const ySPRITE_args[] = {
	{ ARG_PUSH_(x143ec) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(yBMIRROR_args) },
	{ ARG_POP_ },
	{ ARG_PUSH_(x143ec) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const ySCALL_args[] = {
	{ ARG_PUSH_(x14336+8) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const ySTRARRAYFILL_args[] = {
	{ ARG_CALL_FUNC_(expect_string_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

/*
 * TEXT iexp,iexp,[iexp],sexp|aexp
 */
static struct argdesc const yTEXT_args[] = {
	{ ARG_PUSH_(iexp2) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x1529b) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* TEXT x,y,expression -> TEXT x,y,l,expression */
/*
 * ATEXT iexp,iexp,iexp,sexp
 */
	{ ARG_PUSH_(iexp3) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x1529b) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yTRON_args[] = {
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* TRON -> TRON #n */
	{ TOK_CHANNEL, { 0 } },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* TRON -> TRON n */
	{ ARG_CALL_FUNC_(ref_procedure) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yTOPW_args[] = {
	{ ARG_PUSH_(x144ff) },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_END_ }
};

static struct argdesc const yTPUT_args[] = {
	{ ARG_PUSH_(iexp2) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14fa6) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yUSERBLK_args[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_BACK, { 0 } },
	{ TOK_EQ, { 0 } },
	{ ARG_REPLACE_(TOK_ARRAY_ASS) },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_END_ }
};

static struct argdesc const yVDISYS_args[] = {
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_VDISYS2) },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_VDISYS3) },
	{ ARG_PUSH_(yBMOVE_args) },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_VDISYS4) },
	{ ARG_PUSH_(yBOX_args) },
	{ ARG_END_ }
};

static struct argdesc const yVOID_args[] = {
	{ ARG_PUSH_(x14b9a) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yVSETCOLOR_args[] = {
	{ ARG_PUSH_(yBOX_args) },
	{ ARG_POP_ },
	{ ARG_PUSH_(yBMIRROR_args) },
	{ ARG_END_ }
};

static struct argdesc const yVPUT_args[] = {
	{ ARG_PUSH_(iexp3) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_VPUT2) },
	{ ARG_PUSH_(iexp4) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yWAVE_args[] = {
	{ ARG_PUSH_(yVGET_args) },
	{ ARG_POP_ },
	{ ARG_PUSH_(yBOX_args) },
	{ ARG_POP_ },
	{ ARG_PUSH_(yBMOVE_args) },
	{ ARG_POP_ },
	{ ARG_PUSH_(no_args) },
	{ ARG_POP_ },
	{ ARG_PUSH_(yBMIRROR_args) },
	{ ARG_POP_ },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_END_ }
};

static struct argdesc const yWINDTAB_args[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_BACK, { 0 } },
	{ TOK_EQ, { 0 } },
	{ ARG_REPLACE_(TOK_ARRAY_ASS) },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_END_ }
};

static struct argdesc const write_channel_args[] = {
	{ TOK_CHANNEL, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const yWRITE_args[] = {
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_PUSH_(write_channel_args) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ ARG_PUSH_(print_channel_args) },
	{ ARG_PUSH_(x15214) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yFORM_INPUT_args[] = {
	{ ARG_CALL_FUNC_(handle_form_input) },
	{ ARG_PUSH_(x14213) },
	{ ARG_PUSH_(x14b9a) },
	{ ARG_PUSH_(x14217) },
	{ ARG_PUSH_(x143ec) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};


static struct argdesc const x13fd3[] = {
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};


static struct argdesc const x15160[] = {
	{ TOK_FNCALL, { 0 } },
	{ ARG_POP_ },
	{ TOK_GOSUB, { 0 } },
	{ ARG_END_ }
};


static struct argdesc const x15176[] = {
	{ TOK_ADD, { 0 } },
	{ ARG_REPLACE_(TOK_PLUS_STR) },
	{ ARG_PUSH_(sexp) },
	{ ARG_POP_ },
	{ ARG_END_ }
};


static struct argdesc const x15060[] = {
	{ TOK_MIN, { 0 } },
	{ ARG_REPLACE_(TOK_MIN_STR) },
	{ ARG_POP_ },
	{ TOK_MAX, { 0 } },
	{ ARG_REPLACE_(TOK_MAX_STR) },
	{ ARG_END_ }
};

static struct argdesc const x1506f[] = {
	{ ARG_CALL_FUNC_(f13d22) },
	{ ARG_POP_ },

	{ ARG_CALL_FUNC_(f13696) },
	{ ARG_POP_ },

	{ TOK_TRIM, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },

	{ TOK_LEFT1, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },

	{ TOK_LEFT1, { 0 } },
	{ ARG_REPLACE_(TOK_LEFT2) },
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_POP_ },

	{ TOK_RIGHT1, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },

	{ TOK_RIGHT1, { 0 } },
	{ ARG_REPLACE_(TOK_RIGHT2) },
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_POP_ },

	{ TOK_MID2, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_POP_ },

	{ TOK_MID2, { 0 } },
	{ ARG_REPLACE_(TOK_MID3) },
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_POP_ },

	{ ARG_CALL_FUNC_(f1369e) },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_POP_ },

	{ TOK_INPUT1, { 0 } },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_POP_ },

	{ TOK_INPUT1, { 0 } },
	{ ARG_REPLACE_(TOK_INPUT2) },
	{ ARG_PUSH_(iexp) },
	{ ARG_PUSH_(comma_or_semi) },
	{ ARG_PUSH_(x144f6) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },

	{ ARG_PUSH_(x15060) },
	{ ARG_PUSH_(x15164) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },

	{ TOK_UPPER, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },

#if GBE > 0
	{ TOK_LOWER, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },

	{ TOK_MIRROR, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },

	{ TOK_LTRIM, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },

	{ TOK_RTRIM, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },

	{ TOK_ZTRIM, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },

	{ TOK_LCASE, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },

	{ TOK_RCASE, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },

	{ TOK_ENVIRON, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },

	{ TOK_DIGITAL, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },

	{ TOK_TIMESTAMP, { 0 } },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },

	{ TOK_DATE1, { 0 } },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_POP_ },

	{ TOK_TIME1, { 0 } },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_POP_ },

	{ TOK_OB_TEXT, { 0 } },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_POP_ },

#if GBE >= 373
	{ TOK_STRUCTSTR, { 0 } },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_POP_ },
#endif

	{ TOK_CHAR, { 0 } },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_POP_ },

	{ TOK_REPLACE, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },

	{ TOK_CRYPT, { 0 } },
	{ ARG_PUSH_(x14fa6) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },

	{ TOK_XLATE, { 0 } },
	{ ARG_PUSH_(x14fa6) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },
#endif

	/* 150de */
	{ TOK_STRING_CODE, { 0 } },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_POP_ },

	{ TOK_STRING_CODE, { 0 } },
	{ ARG_REPLACE_(TOK_STRING) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },

	{ ARG_PUSH_(x15160) },
	{ ARG_CALL_FUNC_(expect_string_func) },
	{ ARG_PUSH_(x14962) },
	{ ARG_POP_ },

	{ TOK_SUBFUNC_208, { (void *)96 } }, /* SUCC( */
	{ ARG_BACK, { 0 } },
	{ ARG_REPLACE_(TOK_SUCC) },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },

	{ TOK_SUBFUNC_208, { (void *)97 } }, /* PRED( */
	{ ARG_BACK, { 0 } },
	{ ARG_REPLACE_(TOK_PRED) },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },

	{ TOK_STR1, { 0 } },
	{ ARG_PUSH_(x1512d) },
	{ ARG_POP_ },

	{ TOK_HEX1, { 0 } },
	{ ARG_PUSH_(x1513f) },
	{ ARG_POP_ },

	{ TOK_OCT1, { 0 } },
	{ ARG_PUSH_(x1514a) },
	{ ARG_POP_ },

	{ TOK_BIN1, { 0 } },
	{ ARG_PUSH_(x15155) },
	{ ARG_POP_ },

	{ ARG_PUSH_(x143ec) },
	{ ARG_POP_ },

	{ TOK_CHAR_REF, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ TOK_RBRACE, { 0 } },
	{ ARG_END_ }
};

struct argdesc const x150de[] = {
	{ TOK_STRING_CODE, { 0 } },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_POP_ },

	{ TOK_STRING_CODE, { 0 } },
	{ ARG_REPLACE_(TOK_STRING) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },

	{ ARG_PUSH_(x15160) },
	{ ARG_CALL_FUNC_(expect_string_func) },
	{ ARG_PUSH_(x14962) },
	{ ARG_POP_ },

	{ TOK_SUBFUNC_208, { (void *)96 } }, /* SUCC( */
	{ ARG_BACK, { 0 } },
	{ ARG_REPLACE_(TOK_SUCC) },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },

	{ TOK_SUBFUNC_208, { (void *)97 } }, /* PRED( */
	{ ARG_BACK, { 0 } },
	{ ARG_REPLACE_(TOK_PRED) },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },

	{ TOK_STR1, { 0 } },
	{ ARG_PUSH_(x1512d) },
	{ ARG_POP_ },

	{ TOK_HEX1, { 0 } },
	{ ARG_PUSH_(x1513f) },
	{ ARG_POP_ },

	{ TOK_OCT1, { 0 } },
	{ ARG_PUSH_(x1514a) },
	{ ARG_POP_ },

	{ TOK_BIN1, { 0 } },
	{ ARG_PUSH_(x15155) },
	{ ARG_POP_ },

	{ ARG_PUSH_(x143ec) },
	{ ARG_POP_ },

	{ TOK_CHAR_REF, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ TOK_RBRACE, { 0 } },
	{ ARG_END_ }
};

struct argdesc const sexp[] = {
	{ ARG_PUSH_(x1506f) },
	{ ARG_PUSH_(x15176) },
	{ ARG_END_ }
};


static struct argdesc const x1516b[] = {
	{ ARG_PUSH_(comma_or_semi) },
	{ ARG_PUSH_(sexp) },
	{ ARG_PUSH_(x1516b) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

struct argdesc const x15164[] = {
	{ ARG_PUSH_(sexp) },
	{ ARG_PUSH_(x1516b) },
	{ ARG_END_ }
};

struct argdesc const x14fa6[] = {
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ ARG_END_ }
};


struct argdesc const x1512d[] = {
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_POP_ },

	{ ARG_REPLACE_(TOK_STR2) },
	{ ARG_PUSH_(iexp2) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },

	{ ARG_REPLACE_(TOK_STR3) },
	{ ARG_PUSH_(iexp3) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

struct argdesc const x1513f[] = {
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_HEX2) },
	{ ARG_PUSH_(iexp2) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

struct argdesc const x1514a[] = {
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_OCT2) },
	{ ARG_PUSH_(iexp2) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

struct argdesc const x15155[] = {
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_BIN2) },
	{ ARG_PUSH_(iexp2) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

struct argdesc const x143ec[] = {
	{ ARG_CALL_FUNC_(expect_string) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(expect_string_arr) },
	{ ARG_PUSH_(x1519e) },
	{ ARG_END_ }
};

static struct argdesc const x14982[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ ARG_PUSH_(x14982) },
	{ ARG_POP_ },
	{ TOK_COMMA, { 0 } },
	{ ARG_REPLACE_(TOK_COMMA2) },
	{ ARG_PUSH_(sexp) },
	{ ARG_PUSH_(x14982) },
	{ ARG_POP_ },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(any_arr) },
	{ ARG_REPLACE_(TOK_RPAREN2) },
	{ ARG_PUSH_(x14982) },
	{ ARG_POP_ },
	{ ARG_END_ }
};


struct argdesc const x14962[] = {
	{ TOK_LPAREN, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ ARG_PUSH_(x14982) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },
	{ TOK_LPAREN, { 0 } },
	{ ARG_REPLACE_(TOK_LPAREN2) },
	{ ARG_PUSH_(sexp) },
	{ ARG_PUSH_(x14982) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },
	{ TOK_LPAREN, { 0 } },
	{ ARG_PUSH_(any_arr) },
	{ ARG_REPLACE_(TOK_RPAREN2) },
	{ ARG_PUSH_(x14982) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },
	{ ARG_END_ }
};


static struct argdesc const x14bd0[] = {
	{ ARG_CALL_FUNC_(func_call) },
	{ ARG_POP_ },
	{ ARG_PUSH_(x15160) },
	{ ARG_CALL_FUNC_(expect_float_func) },
	{ ARG_PUSH_(x14962) },
	{ ARG_END_ }
};


struct argdesc const x1517e[] = {
	{ TOK_NE, { 0 } },
	{ ARG_REPLACE_(TOK_NE_STR) },
	{ ARG_POP_ },
	{ TOK_LE, { 0 } },
	{ ARG_REPLACE_(TOK_LE_STR) },
	{ ARG_POP_ },
	{ TOK_LE2, { 0 } },
	{ ARG_REPLACE_(TOK_LE2_STR) },
	{ ARG_POP_ },
	{ TOK_GE, { 0 } },
	{ ARG_REPLACE_(TOK_GE_STR) },
	{ ARG_POP_ },
	{ TOK_GE2, { 0 } },
	{ ARG_REPLACE_(TOK_GE2_STR) },
	{ ARG_POP_ },
	{ TOK_LT, { 0 } },
	{ ARG_REPLACE_(TOK_LT_STR) },
	{ ARG_POP_ },
	{ TOK_GT, { 0 } },
	{ ARG_REPLACE_(TOK_GT_STR) },
	{ ARG_POP_ },
	{ TOK_EQ, { 0 } },
	{ ARG_REPLACE_(TOK_EQ_STR) },
	{ ARG_END_ }
};

struct argdesc const x14bb2[] = {
	{ ARG_CALL_FUNC_(f13c9a) },
	{ ARG_POP_ },
	{ ARG_PUSH_(x14bd0) },
	{ ARG_POP_ },
	{ ARG_PUSH_(sexp) },
	{ ARG_PUSH_(x1517e) },
	{ ARG_PUSH_(sexp) },
	{ ARG_POP_ },
	{ ARG_PUSH_(x14336+2) },
	{ ARG_END_ }
};


static struct argdesc const x13eec[] = {
	{ TOK_EQ, { 0 } },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_ADD, { 0 } },
	{ ARG_PUSH_(x13fd3) },
	{ ARG_POP_ },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x13fd3) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* MAT ADD a(),b() -> MAT ADD a(),x */
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14b9a) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const ymat_ADD_args[] = {
	{ ARG_REPLACE_(TOK_CMD_MAT_ADD) },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_PUSH_(x13eec) },
	{ ARG_END_ }
};

static struct argdesc const ymat_ABS_args[] = {
	{ ARG_REPLACE_(TOK_CMD_MAT_ABS) },
	{ ARG_PUSH_(x13fd3) },
	{ ARG_END_ }
};

static struct argdesc const zero_or_one[] = {
	{ TOK_CONST_ZERO, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP_ },
	{ TOK_CONST_ONE, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const ymat_BASE_args[] = {
	{ ARG_REPLACE_(TOK_CMD_MAT_BASE) },
	{ ARG_PUSH_(zero_or_one) },
	{ ARG_END_ }
};

static struct argdesc const x13faa[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp2) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const ymat_CPY_args[] = {
	{ ARG_REPLACE_(TOK_CMD_MAT_CPY) },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ ARG_PUSH_(x13faa+1) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_EQ, { 0 } },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ ARG_PUSH_(x13faa+1) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_PUSH_(x13faa) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const ymat_XCPY_args[] = {
	{ ARG_REPLACE_(TOK_CMD_MAT_XCPY) },
	{ ARG_PUSH_(ymat_CPY_args+1) },
	{ ARG_END_ }
};

static struct argdesc const ymat_CLR_args[] = {
	{ ARG_REPLACE_(TOK_CMD_MAT_CLR) },
	{ ARG_PUSH_(x13fd3) },
	{ ARG_END_ }
};

static struct argdesc const x13f77[] = {
	{ ARG_PUSH_(iexp2) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ ARG_POP_ },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const ymat_DET_args[] = {
	{ ARG_REPLACE_(TOK_CMD_MAT_DET) },
	{ ARG_CALL_FUNC_(expect_float) },
	{ TOK_EQ, { 0 } },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ ARG_PUSH_(x13f77) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const ymat_QDET_args[] = {
	{ ARG_REPLACE_(TOK_CMD_MAT_QDET) },
	{ ARG_PUSH_(ymat_DET_args+1) },
	{ ARG_END_ }
};

static struct argdesc const ymat_INV_args[] = {
	{ ARG_REPLACE_(TOK_CMD_MAT_INV) },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_EQ, { 0 } },
	{ ARG_PUSH_(x13fd3) },
	{ ARG_END_ }
};

static struct argdesc const ymat_READ_args[] = {
	{ ARG_REPLACE_(TOK_CMD_MAT_READ) },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const ymat_INPUT_args[] = {
	{ ARG_REPLACE_(TOK_CMD_MAT_INPUT) },
	{ ARG_PUSH_(print_channel_args) },
	{ ARG_PUSH_(ymat_READ_args+1) },
	{ ARG_END_ }
};

static struct argdesc const x13f2a[] = {
	{ ARG_REPLACE_(TOK_CMD_MAT_MUL_MAT) },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_EQ, { 0 } },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_MUL, { 0 } },
	{ ARG_PUSH_(ymat_READ_args+1) },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_MAT_MUL_MAT2) },
	{ ARG_CALL_FUNC_(expect_float) },
	{ TOK_EQ, { 0 } },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_MUL, { 0 } },
	{ ARG_PUSH_(ymat_READ_args+1) },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_MAT_MUL_MAT3) },
	{ ARG_CALL_FUNC_(expect_float) },
	{ TOK_EQ, { 0 } },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_MUL, { 0 } },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_MUL, { 0 } },
	{ ARG_PUSH_(ymat_READ_args+1) },
	{ ARG_POP_ },
	{ ARG_REPLACE_(TOK_CMD_MAT_MUL) },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14b9a) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const ymat_MUL_args[] = {
	{ ARG_PUSH_(x13f2a) },
	{ ARG_END_ }
};

static struct argdesc const ymat_NORM_args[] = {
	{ ARG_REPLACE_(TOK_CMD_MAT_NORM) },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(yCLEARW_args) },
	{ ARG_END_ }
};

static struct argdesc const ymat_NEG_args[] = {
	{ ARG_REPLACE_(TOK_CMD_MAT_NEG) },
	{ ARG_PUSH_(x13fd3) },
	{ ARG_END_ }
};

static struct argdesc const ymat_ONE_args[] = {
	{ ARG_REPLACE_(TOK_CMD_MAT_ONE) },
	{ ARG_PUSH_(x13fd3) },
	{ ARG_END_ }
};

static struct argdesc const x13fbe[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const ymat_PRINT_args[] = {
	{ ARG_REPLACE_(TOK_CMD_MAT_PRINT) },
	{ ARG_PUSH_(print_channel_args) },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_PUSH_(x13fbe) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const ymat_RANG_args[] = {
	{ ARG_REPLACE_(TOK_CMD_MAT_RANG) },
	{ ARG_PUSH_(ymat_DET_args+1) },
	{ ARG_END_ }
};

static struct argdesc const x13f0e[] = {
	{ TOK_EQ, { 0 } },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_SUB, { 0 } },
	{ ARG_PUSH_(ymat_READ_args+1) },
	{ ARG_POP_ },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(ymat_READ_args+1) },
	{ ARG_POP_ },
	{ ARG_CALL_FUNC_(inc_cmd) }, /* MAT SUB a(),b() -> MAT SUB a(),x */
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14b9a) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const ymat_SUB_args[] = {
	{ ARG_REPLACE_(TOK_CMD_MAT_SUB) },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_PUSH_(x13f0e) },
	{ ARG_END_ }
};

static struct argdesc const ymat_SET_args[] = {
	{ ARG_REPLACE_(TOK_CMD_MAT_SET) },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_EQ, { 0 } },
	{ ARG_PUSH_(x14b9a) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x13fe4[] = {
	{ TOK_EQ, { 0 } },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const ymat_TRANS_args[] = {
	{ ARG_REPLACE_(TOK_CMD_MAT_TRANS) },
	{ ARG_CALL_FUNC_(expect_float_arr) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_PUSH_(x13fe4) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const yMAT_args[] = {
	{ ARG_CALL_FUNC_(f13e8c) },
	{ ARG_POP_ },
	{ ARG_PUSH_(ymat_ADD_args) },
	{ ARG_POP_ },
	{ ARG_PUSH_(ymat_SUB_args) },
	{ ARG_POP_ },
	{ ARG_PUSH_(ymat_MUL_args) },
	{ ARG_END_ }
};

/*** ---------------------------------------------------------------------- ***/

struct cmdname const cmd_table[] = {
	{ 0, "!", TOK_CMD_COMMENT, REM_args, TARGET_VER36, 0 },
	{ 1, "//", TOK_CMD_COMMENT, REM_args, TARGET_VER36, 0 },
	{ 1, "/*", TOK_CMD_COMMENT, REM_args, TARGET_VER36, 0 },
	{ 0, "'", TOK_CMD_COMMENT, REM_args, TARGET_VER36, 0 },
	{ 0, "*", 121, star_args, TARGET_VER36, 0 },
	{ 0, ".", TOK_CMD_DOT, REM_args, TARGET_VER36, 0 },
	{ 2, "==>", TOK_CMD_SYNERR, REM_args, TARGET_VER36, 0 },
	{ 0, "?", TOK_CMD_PRINT, yPRINT_args, TARGET_VER36, 0 },
	{ 0, "$", TOK_CMD_DOLLAR, REM_args, TARGET_VER36, 0 },
	{ 0, "@", TOK_CMD_GOSUB_EXP, yGOSUB_args, TARGET_VER36, 0 },
	{ 4, "ALERT", 256, yALERT_args, TARGET_VER36, 0 },
	{ 2, "ADD", TOK_CMD_ADD_FLOAT, yADD_args, TARGET_VER36, 0 },
	{ 4, "ALINE", 90, yALINE_args, TARGET_VER36, 0 },
	{ 4, "ARECT", 92, yARECT_args, TARGET_VER36, 0 },
	{ 4, "APOLY", 93, yAPOLY_args, TARGET_VER36, 0 },
	{ 4, "ACHAR", 94, yACHAR_args, TARGET_VER36, 0 },
	{ 4, "ACLIP", 95, yACLIP_args, TARGET_VER36, 0 },
	{ 6, "ADDRIN(", 224, yINTIN_args, TARGET_VER36, 0 },
	{ 7, "ADDROUT(", 225, yINTIN_args, TARGET_VER36, 0 },
	{ 7, "ABSOLUTE", 253, yABSOLUTE_args, TARGET_VER36, 0 },
	{ 4, "AFTER", 365, yAFTER_args, TARGET_VER36, 0 },
	{ 4, "ATEXT", 113, yTEXT_args+6, TARGET_VER36, 0 },
	{ 8, "ARRAYFILL", 397, yARRAYFILL_args, TARGET_VER36, 0 },
	{ 6, "ARRAY!(", 680, yWINDTAB_args, TARGET_VER373, 0 },
	{ 6, "ARRAY|(", 681, yWINDTAB_args, TARGET_VER373, 0 },
	{ 6, "ARRAY&(", 682, yWINDTAB_args, TARGET_VER373, 0 },
	{ 6, "ARRAY%(", 683, yWINDTAB_args, TARGET_VER373, 0 },
	{ 5, "ARRAY(", 684, yWINDTAB_args, TARGET_VER373, 0 },
	{ 5, "AMOUSE", 474, yCLEARW_args, TARGET_VER370, 0 },
	{ 10, "AVERAGE_RGB", 473, yAVERAGE_RGB_args, TARGET_VER371, 0 },
	{ 4, "BMOVE", 213, yBMOVE_args, TARGET_VER36, 0 },
	{ 4, "BYTE{", 234, yWORD_args, TARGET_VER36, 0 },
	{ 2, "BOX", 287, yBOX_args, TARGET_VER36, 0 },
	{ 3, "BGET", 111, yBGET_args, TARGET_VER36, 0 },
	{ 3, "BPUT", 112, yBGET_args, TARGET_VER36, 0 },
	{ 7, "BOUNDARY", 387, yCLEARW_args, TARGET_VER36, 0 },
	{ 5, "BITBLT", 399, yBITBLT_args, TARGET_VER36, 0 },
	{ 4, "BSAVE", 404, yBSAVE_args, TARGET_VER36, 0 },
	{ 4, "BLOAD", 405, yBLOAD_args, TARGET_VER36, 0 },
	{ 6, "BITBLK(", 545, yUSERBLK_args, TARGET_VER371, TARGET_VER371 },
	{ 8, "BFOBSPEC(", 544, yUSERBLK_args, TARGET_VER371, TARGET_VER371 },
	{ 3, "BEXG", 638, yBMOVE_args, TARGET_VER372, 0 },
	{ 6, "BMIRROR", 544, yBMIRROR_args, TARGET_VER372, 0 },
	{ 4, "BZERO", 462, yBMIRROR_args, TARGET_VER371, 0 },
	{ 5, "BCLEAR", 462, yBMIRROR_args, TARGET_VER370, TARGET_VER370 },
	{ 4, "BFILL", 463, yBMOVE_args, TARGET_VER370, 0 },
	{ 3, "BEEP", 465, no_args, TARGET_VER370, 0 },
	{ 5, "BCRYPT", 477, yBCRYPT_args, TARGET_VER370, 0 },
	{ 5, "BXLATE", 464, yBCRYPT_args, TARGET_VER370, 0 },
	{ 7, "BREPLACE", 535, yBOX_args, TARGET_VER371, 0 },
	{ 9, "BF_OBSPEC(", 582, yWINDTAB_args, TARGET_VER372, 0 },
	{ 12, "BF_CHARACTER(", 583, yWINDTAB_args, TARGET_VER372, 0 },
	{ 12, "BF_FRAMESIZE(", 584, yWINDTAB_args, TARGET_VER372, 0 },
	{ 11, "BF_FRAMECOL(", 585, yWINDTAB_args, TARGET_VER372, 0 },
	{ 10, "BF_TEXTCOL(", 586, yWINDTAB_args, TARGET_VER372, 0 },
	{ 11, "BF_TEXTMODE(", 587, yWINDTAB_args, TARGET_VER372, 0 },
	{ 14, "BF_FILLPATTERN(", 588, yWINDTAB_args, TARGET_VER372, 0 },
	{ 14, "BF_INTERIORCOL(", 589, yWINDTAB_args, TARGET_VER372, 0 },
	{ 8, "BI_PDATA(", 590, yWINDTAB_args, TARGET_VER372, 0 },
	{ 5, "BI_WB(", 591, yWINDTAB_args, TARGET_VER372, 0 },
	{ 5, "BI_HL(", 592, yWINDTAB_args, TARGET_VER372, 0 },
	{ 4, "BI_X(", 593, yWINDTAB_args, TARGET_VER372, 0 },
	{ 4, "BI_Y(", 594, yWINDTAB_args, TARGET_VER372, 0 },
	{ 8, "BI_COLOR(", 595, yWINDTAB_args, TARGET_VER372, 0 },
	{ 2, "BAR", 648, yBOX_args, TARGET_VER373, 0 },
	{ 4, "COLOR", 96, yCLEARW_args, TARGET_VER36, 0 },
	{ 3, "CASE", 56, yCASE_args, TARGET_VER36, 0 },
	{ 3, "CONT", 317, yCONT_args, TARGET_VER36, 0 },
	{ 6, "CONTRL(", 228, yINTIN_args, TARGET_VER36, 0 },
	{ 4, "CARD{", 233, yWORD_args, TARGET_VER36, 0 },
	{ 4, "CHAR{", 235, yCHAR_args, TARGET_VER36, 0 },
	{ 4, "CHAR$", 494, yINFOW_args, TARGET_VER370, TARGET_VER370 },
	{ 4, "CLOSE", 268, yCLOSE_args, TARGET_VER36, 0 },
	{ 4, "CLEAR", 271, yCLEAR_args, TARGET_VER36, 0 },
	{ 5, "CIRCLE", 291, yCIRCLE_args, TARGET_VER36, 0 },
	{ 4, "CHDIR", 311, yCHDIR_args, TARGET_VER36, 0 },
	{ 6, "CHDRIVE", 312, yCHDRIVE_args, TARGET_VER36, 0 },
	{ 2, "CLR", 314, yCLR_args, TARGET_VER36, 0 },
	{ 2, "CLS", 315, yCLS_args, TARGET_VER36, 0 },
	{ 3, "CLIP", 356, yCLIP_args, TARGET_VER36, 0 },
	{ 4, "CHAIN", 392, yCHDIR_args, TARGET_VER36, 0 },
	{ 3, "CALL", 152, yCALL_args, TARGET_VER36, 0 },
	{ 4, "CURVE", 422, yARECT_args, TARGET_VER36, 0 },
	{ 8, "CICONBLK(", 548, yUSERBLK_args, TARGET_VER371, TARGET_VER371 },
	{ 2, "C2P", 507, yBOX_args, TARGET_VER372, 0 },
	{ 6, "CRASTER", 675, yACHAR_args, TARGET_VER373, 0 },
	{ 7, "CPUFLUSH", 476, no_args, TARGET_VER370, 0 },
	{ 7, "COLDBOOT", 543, no_args, TARGET_VER371, 0 },
	{ 11, "CI_MAINLIST(", 631, yWINDTAB_args, TARGET_VER372, 0 },
	{ 13, "CI_NUM_PLANES(", 632, yWINDTAB_args, TARGET_VER372, 0 },
	{ 11, "CI_COL_DATA(", 633, yWINDTAB_args, TARGET_VER372, 0 },
	{ 11, "CI_COL_MASK(", 634, yWINDTAB_args, TARGET_VER372, 0 },
	{ 11, "CI_SEL_DATA(", 635, yWINDTAB_args, TARGET_VER372, 0 },
	{ 11, "CI_SEL_MASK(", 636, yWINDTAB_args, TARGET_VER372, 0 },
	{ 11, "CI_NEXT_RES(", 637, yWINDTAB_args, TARGET_VER372, 0 },
	{ 3, "DATA", 117, REM_args, TARGET_VER36, 0 },
	{ 1, "DO", 0, yDO_args, TARGET_VER36, 0 },
	{ 6, "DEFLINE", 277, yDEFTEXT_args+6, TARGET_VER36, 0 },
	{ 7, "DEFMOUSE", 279, yDEFMOUSE_args, TARGET_VER36, 0 },
	{ 6, "DEFLIST", 281, yCLEARW_args, TARGET_VER36, 0 },
	{ 6, "DEFMARK", 282, yDEFTEXT_args+15, TARGET_VER36, 0 },
	{ 5, "DEFNUM", 283, yCLEARW_args, TARGET_VER36, 0 },
	{ 6, "DEFTEXT", 284, yDEFTEXT_args, TARGET_VER36, 0 },
	{ 6, "DEFFILL", 285, yDEFFILL_args, TARGET_VER36, 0 },
	{ 4, "DEFFN", 57, yDEFFN_args, TARGET_VER36, 0 },
	{ 6, "DEFAULT", 15, yDEFAULT_args, TARGET_VER36, 0 },
	{ 2, "DEC", 168, yDEC_args, TARGET_VER36, 0 },
	{ 2, "DIV", 200, yDIV_args, TARGET_VER36, 0 },
	{ 4, "DPOKE", 98, yBMIRROR_args, TARGET_VER36, 0 },
	{ 2, "DIM", 210, yDIM_args, TARGET_VER36, 0 },
	{ 7, "DMASOUND", 450, yDMASOUND_args, TARGET_VER36, 0 },
	{ 9, "DMACONTROL", 451, yCLEARW_args, TARGET_VER36, 0 },
	{ 6, "DOUBLE{", 237, yWORD_args, TARGET_VER36, 0 },
	{ 2, "DIR", 319, yDIR_args, TARGET_VER36, 0 },
	{ 5, "DELETE", 351, yDELETE_args, TARGET_VER36, 0 },
	{ 3, "DRAW", 370, yDRAW_args, TARGET_VER36, 0 },
	{ 4, "DELAY", 110, yCLEARW_args, TARGET_VER36, 0 },
	{ 5, "DEFINT", 381, yDEFINT_args, TARGET_VER36, 0 },
	{ 5, "DEFBYT", 383, yDEFINT_args, TARGET_VER36, 0 },
	{ 5, "DEFWRD", 384, yDEFINT_args, TARGET_VER36, 0 },
	{ 5, "DEFBIT", 385, yDEFINT_args, TARGET_VER36, 0 },
	{ 5, "DEFSTR", 386, yDEFINT_args, TARGET_VER36, 0 },
	{ 5, "DEFSNG", 382, yDEFINT_args, TARGET_VER36, 0 },
	{ 5, "DEFDBL", 382, yDEFINT_args, TARGET_VER36, 0 },
	{ 5, "DEFFLT", 382, yDEFINT_args, TARGET_VER36, 0 },
	{ 3, "DUMP", 398, yDIR_args, TARGET_VER36, 0 },
	{ 5, "DATE$=", 408, yCHDIR_args, TARGET_VER36, 0 },
	{ 3, "ELSE", 14, yELSE_args, TARGET_VER36, 0 },
	{ 4, "ENDIF", 9, no_args, TARGET_VER36, 0 },
	{ 6, "ENDFUNC", 11, no_args, TARGET_VER36, 0 },
	{ 8, "ENDSWITCH", 13, yENDSWITCH_args, TARGET_VER36, 0 },
	{ 8, "ENDSELECT", 13, yENDSWITCH_args, TARGET_VER36, 0 },
	{ 7, "ENDWHILE", 5, yENDWHILE_args, TARGET_VER36, 0 },
	{ 4, "ENDDO", 1, yLOOP_args, TARGET_VER36, 0 },
	{ 8, "ENDREPEAT", 3, yENDREPEAT_args, TARGET_VER36, 0 },
	{ 5, "ENDFOR", 31, yNEXT_args, TARGET_VER36, 0 },
	{ 6, "ENDPROC", 7, yRETURN_args, TARGET_VER36, 0 },
	{ 5, "ENDSUB", 7, yRETURN_args, TARGET_VER36, 0 },
	{ 6, "EXIT IF", 43, yEXIT_IF_args, TARGET_VER36, 0 },
	{ 6, "EXIT IF", 55, yEXIT_IF_args, TARGET_VER36, 0 },
	{ 6, "ELLIPSE", 295, yELLIPSE_args, TARGET_VER36, 0 },
	{ 4, "ERROR", 299, yCLEARW_args, TARGET_VER36, 0 },
	{ 3, "EDIT", 328, yCLEARW_args, TARGET_VER36, 0 },
	{ 4, "ERASE", 322, yERASE_args, TARGET_VER36, 0 },
	{ 3, "EXEC", 323, yEXEC_args, TARGET_VER36, 0 },
	{ 4, "EVERY", 362, yAFTER_args, TARGET_VER36, 0 },
	{ 6, "ENDSEEK", 520, ySEEK_args, TARGET_VER371, 0 },
	{ 6, "ENVIRON", 538, yENVIRON_args, TARGET_VER371, 0 },
	{ 2, "FOR", 19, yFOR_args, TARGET_VER36, 0 },
	{ 7, "FUNCTION", 10, yFUNCTION_args, TARGET_VER36, 0 },
	{ 5, "FLOAT{", 236, yWORD_args, TARGET_VER36, 0 },
	{ 3, "FILL", 300, yFILL_args, TARGET_VER36, 0 },
	{ 4, "FIELD", 324, yFIELD_args, TARGET_VER36, 0 },
	{ 4, "FILES", 325, yFILES_args, TARGET_VER36, 0 },
	{ 9, "FILESELECT", 329, yFILES_args, TARGET_VER36, 0 },
	{ 4, "FULLW", 361, yFULLW_args, TARGET_VER36, 0 },
	{ 4, "GOSUB", 61, yGOSUB_args, TARGET_VER36, 0 },
	{ 3, "GOTO", 58, yGOTO_args, TARGET_VER36, 0 },
	{ 5, "GEMSYS", 218, yGEMSYS_args, TARGET_VER36, 0 },
	{ 6, "GINTIN(", 226, yINTIN_args, TARGET_VER36, 0 },
	{ 7, "GINTOUT(", 227, yINTIN_args, TARGET_VER36, 0 },
	{ 7, "GCONTRL(", 229, yINTIN_args, TARGET_VER36, 0 },
	{ 2, "GET", 257, yGET_args, TARGET_VER36, 0 },
	{ 8, "GRAPHMODE", 278, yCLEARW_args, TARGET_VER36, 0 },
	{ 5, "GSTICK", 478, yCLEARW_args, TARGET_VER370, 0 },
	{ 5, "GHIDEM", 466, no_args, TARGET_VER370, 0 },
	{ 5, "GSHOWM", 467, no_args, TARGET_VER370, 0 },
	{ 5, "GMOUSE", 468, yMOUSE_args, TARGET_VER370, 0 },
	{ 7, "HARDCOPY", 343, no_args, TARGET_VER36, 0 },
	{ 4, "HIDEM", 302, no_args, TARGET_VER36, 0 },
	{ 4, "HLINE", 91, yALINE_args, TARGET_VER36, 0 },
	{ 3, "HTAB", 320, yCLEARW_args, TARGET_VER36, 0 },
	{ 1, "IF", 8, yIF_args, TARGET_VER36, 0 },
	{ 2, "INC", 160, yDEC_args, TARGET_VER36, 0 },
	{ 5, "INTIN(", 222, yINTIN_args, TARGET_VER36, 0 },
	{ 6, "INTOUT(", 223, yINTIN_args, TARGET_VER36, 0 },
	{ 3, "INT{", 232, yWORD_args, TARGET_VER36, 0 },
	{ 4, "INFOW", 276, yINFOW_args, TARGET_VER36, 0 },
	{ 6, "INFOW #", 276, yINFOW_args, TARGET_VER36, 0 },
	{ 5, "INSERT", 350, yINSERT_args, TARGET_VER36, 0 },
	{ 4, "INPUT", 368, yINPUT_args, TARGET_VER36, 0 },
	{ 5, "INLINE", 417, yINLINE_args, TARGET_VER36, 0 },
	{ 3, "IKBD", 668, yCLEARW_args, TARGET_VER373, 0 },
	{ 7, "ICONBLK(", 547, yUSERBLK_args, TARGET_VER371, TARGET_VER371 },
	{ 8, "IB_PMASK(", 614, yWINDTAB_args, TARGET_VER372, 0 },
	{ 8, "IB_PDATA(", 615, yWINDTAB_args, TARGET_VER372, 0 },
	{ 8, "IB_PTEXT(", 616, yWINDTAB_args, TARGET_VER372, 0 },
	{ 7, "IB_CHAR(", 617, yWINDTAB_args, TARGET_VER372, 0 },
	{ 8, "IB_XCHAR(", 618, yWINDTAB_args, TARGET_VER372, 0 },
	{ 8, "IB_YCHAR(", 619, yWINDTAB_args, TARGET_VER372, 0 },
	{ 8, "IB_XICON(", 620, yWINDTAB_args, TARGET_VER372, 0 },
	{ 8, "IB_YICON(", 621, yWINDTAB_args, TARGET_VER372, 0 },
	{ 8, "IB_WICON(", 622, yWINDTAB_args, TARGET_VER372, 0 },
	{ 8, "IB_HICON(", 623, yWINDTAB_args, TARGET_VER372, 0 },
	{ 8, "IB_XTEXT(", 624, yWINDTAB_args, TARGET_VER372, 0 },
	{ 8, "IB_YTEXT(", 625, yWINDTAB_args, TARGET_VER372, 0 },
	{ 8, "IB_WTEXT(", 626, yWINDTAB_args, TARGET_VER372, 0 },
	{ 8, "IB_HTEXT(", 627, yWINDTAB_args, TARGET_VER372, 0 },
	{ 9, "IB_FCOLOR(", 628, yWINDTAB_args, TARGET_VER372, 0 },
	{ 9, "IB_BCOLOR(", 629, yWINDTAB_args, TARGET_VER372, 0 },
	{ 9, "IB_LETTER(", 630, yWINDTAB_args, TARGET_VER372, 0 },
	{ 5, "JOYPAD", 513, yCLEARW_args, TARGET_VER371, 0 },
	{ 5, "KEYPAD", 375, yCLEARW_args, TARGET_VER36, 0 },
	{ 6, "KEYTEST", 376, yKEYTEST_args, TARGET_VER36, 0 },
	{ 5, "KEYGET", 377, yKEYTEST_args, TARGET_VER36, 0 },
	{ 6, "KEYLOOK", 378, yKEYTEST_args, TARGET_VER36, 0 },
	{ 7, "KEYPRESS", 379, yCLEARW_args, TARGET_VER36, 0 },
	{ 5, "KEYDEF", 380, yKEYDEF_args, TARGET_VER36, 0 },
	{ 3, "KILL", 333, yCHDIR_args, TARGET_VER36, 0 },
	{ 3, "LOOP", 1, yLOOP_args, TARGET_VER36, 0 },
	{ 2, "LET", 64, yLET_args, TARGET_VER36, 0 },
	{ 3, "LINE", 155, yLINE_args, TARGET_VER36, 0 },
	{ 4, "LPOKE", 99, yBMIRROR_args, TARGET_VER36, 0 },
	{ 4, "LONG{", 231, yWORD_args, TARGET_VER36, 0 },
	{ 4, "LOCAL", 53, yCLR_args, TARGET_VER36, 0 },
	{ 5, "LPRINT", 303, yLPRINT_args, TARGET_VER36, 0 },
	{ 3, "LSET", 304, yRSET_args, TARGET_VER36, 0 },
	{ 5, "LOCATE", 125, yBMIRROR_args, TARGET_VER36, 0 },
	{ 3, "LIST", 388, yCHDIR_args, TARGET_VER36, 0 },
	{ 4, "LLIST", 389, yCHDIR_args, TARGET_VER36, 0 },
	{ 3, "LOAD", 395, yCHDIR_args, TARGET_VER36, 0 },
	{ 6, "LOG_MSG", 484, yCHDIR_args, TARGET_VER370, 0 },
	{ 6, "LOG_SET", 485, yCLEARW_args, TARGET_VER370, 0 },
	{ 7, "LOG_FILE", 486, yCHDIR_args, TARGET_VER370, 0 },
	{ 7, "LOG_KILL", 487, no_args, TARGET_VER370, 0 },
	{ 2, "MAT", 424, yMAT_args, TARGET_VER36, 0 },
	{ 6, "MONITOR", 48, yMONITOR_args, TARGET_VER36, 0 },
	{ 2, "MUL", 192, yMUL_args, TARGET_VER36, 0 },
	{ 3, "MENU", 139, yMENU_args, TARGET_VER36, 0 },
	{ 4, "MID$(", 305, yMIDs_args, TARGET_VER36, 0 },
	{ 4, "MKDIR", 331, yCHDIR_args, TARGET_VER36, 0 },
	{ 4, "MOUSE", 332, yMOUSE_args, TARGET_VER36, 0 },
	{ 3, "MODE", 414, yCLEARW_args, TARGET_VER36, 0 },
	{ 5, "MW_OUT", 452, yBMIRROR_args, TARGET_VER36, 0 },
	{ 6, "MEMEXG&", 548, yBMOVE_args, TARGET_VER372, 0 },
	{ 6, "MEMEXG%", 549, yBMOVE_args, TARGET_VER372, 0 },
	{ 7, "MEMBSET|", 525, yBMIRROR_args, TARGET_VER371, 0 },
	{ 7, "MEMBSET&", 526, yBMIRROR_args, TARGET_VER371, 0 },
	{ 7, "MEMBSET%", 527, yBMIRROR_args, TARGET_VER371, 0 },
	{ 7, "MEMBCLR|", 528, yBMIRROR_args, TARGET_VER371, 0 },
	{ 7, "MEMBCLR&", 529, yBMIRROR_args, TARGET_VER371, 0 },
	{ 7, "MEMBCLR%", 530, yBMIRROR_args, TARGET_VER371, 0 },
	{ 7, "MEMBCHG|", 531, yBMIRROR_args, TARGET_VER371, 0 },
	{ 7, "MEMBCHG&", 532, yBMIRROR_args, TARGET_VER371, 0 },
	{ 7, "MEMBCHG%", 533, yBMIRROR_args, TARGET_VER371, 0 },
	{ 4, "MEMOR", 523, yBMOVE_args, TARGET_VER371, 0 },
	{ 5, "MEMAND", 522, yBMOVE_args, TARGET_VER371, 0 },
	{ 5, "MEMXOR", 524, yBMOVE_args, TARGET_VER371, 0 },
	{ 7, "MEMSWAP&", 498, yBMIRROR_args, TARGET_VER371, 0 },
	{ 7, "MEMSWAP%", 499, yBMIRROR_args, TARGET_VER371, 0 },
	{ 7, "MEMFILL&", 500, yBMOVE_args, TARGET_VER371, 0 },
	{ 7, "MEMFILL%", 501, yBMOVE_args, TARGET_VER371, 0 },
	{ 7, "MEMZERO&", 515, yBMIRROR_args, TARGET_VER371, 0 },
	{ 7, "MEMZERO%", 516, yBMIRROR_args, TARGET_VER371, 0 },
	{ 10, "MEMREPLACE&", 539, yBOX_args, TARGET_VER371, 0 },
	{ 10, "MEMREPLACE%", 540, yBOX_args, TARGET_VER371, 0 },
	{ 9, "MEMMIRROR&", 545, yBMIRROR_args, TARGET_VER372, 0 },
	{ 9, "MEMMIRROR%", 546, yBMIRROR_args, TARGET_VER372, 0 },
	{ 9, "MEMMIRROR3", 547, yBMIRROR_args, TARGET_VER372, 0 },
	{ 5, "MDPOKE", 664, yBMIRROR_args, TARGET_VER373, 0 },
	{ 5, "MLPOKE", 665, yBMIRROR_args, TARGET_VER373, 0 },
	{ 3, "MNAM", 666, ySPUT_args, TARGET_VER373, 0 },
 	{ 3, "NEXT", 31, yNEXT_args, TARGET_VER36, 0 },
 	{ 3, "NAME", 330, yNAME_args, TARGET_VER36, 0 },
 	{ 2, "NEW", 306, no_args, TARGET_VER36, 0 },
 	{ 3, "OPEN", 265, yOPEN_args, TARGET_VER36, 0 },
 	{ 1, "ON", 126, yON_args, TARGET_VER36, 0 },
 	{ 7, "OB_NEXT(", 242, yWINDTAB_args, TARGET_VER36, 0 },
 	{ 7, "OB_HEAD(", 243, yWINDTAB_args, TARGET_VER36, 0 },
 	{ 7, "OB_TAIL(", 244, yWINDTAB_args, TARGET_VER36, 0 },
 	{ 7, "OB_TYPE(", 245, yWINDTAB_args, TARGET_VER36, 0 },
 	{ 8, "OB_FLAGS(", 246, yWINDTAB_args, TARGET_VER36, 0 },
 	{ 8, "OB_STATE(", 247, yWINDTAB_args, TARGET_VER36, 0 },
 	{ 7, "OB_SPEC(", 248, yWINDTAB_args, TARGET_VER36, 0 },
 	{ 4, "OB_X(", 249, yWINDTAB_args, TARGET_VER36, 0 },
 	{ 4, "OB_Y(", 250, yWINDTAB_args, TARGET_VER36, 0 },
 	{ 4, "OB_W(", 251, yWINDTAB_args, TARGET_VER36, 0 },
 	{ 4, "OB_H(", 252, yWINDTAB_args, TARGET_VER36, 0 },
 	{ 2, "OUT", 307, yOUT_args, TARGET_VER36, 0 },
 	{ 3, "OUT%", 421, yOUT_args, TARGET_VER36, 0 },
 	{ 3, "OUT&", 420, yOUT_args, TARGET_VER36, 0 },
 	{ 8, "OTHERWISE", 15, yDEFAULT_args, TARGET_VER36, 0 },
 	{ 5, "OPTION", 410, yOPTION_args, TARGET_VER36, 0 },
 	{ 8, "OB.STATE(", 504, yUSERBLK_args, TARGET_VER370, 0 },
 	{ 8, "OB.FLAGS(", 505, yUSERBLK_args, TARGET_VER370, 0 },
 	{ 8, "OB_RADIO(", 510, yUSERBLK_args, TARGET_VER371, 0 },
 	{ 8, "OB_TEXT$(", 511, yOB_TEXTs_args, TARGET_VER371, 0 },
	{ 11, "OB_SELECTED(", 506, yWINDTAB_args, TARGET_VER371, TARGET_VER371 },
	{ 10, "OB_CROSSED(", 507, yWINDTAB_args, TARGET_VER371, TARGET_VER371 },
	{ 10, "OB_CHECKED(", 508, yWINDTAB_args, TARGET_VER371, TARGET_VER371 },
	{ 11, "OB_DISABLED(", 509, yWINDTAB_args, TARGET_VER371, TARGET_VER371 },
	{ 13, "OB_SELECTABLE(", 512, yWINDTAB_args, TARGET_VER371, TARGET_VER371 },
	{ 10, "OB_DEFAULT(", 513, yWINDTAB_args, TARGET_VER371, TARGET_VER371 },
	{ 7, "OB_EXIT(", 514, yWINDTAB_args, TARGET_VER371, TARGET_VER371 },
	{ 11, "OB_EDITABLE(", 515, yWINDTAB_args, TARGET_VER371, TARGET_VER371 },
	{ 10, "OB_RBUTTON(", 516, yWINDTAB_args, TARGET_VER371, TARGET_VER371 },
	{ 9, "OB_LASTOB(", 517, yWINDTAB_args, TARGET_VER371, TARGET_VER371 },
	{ 12, "OB_TOUCHEXIT(", 518, yWINDTAB_args, TARGET_VER371, TARGET_VER371 },
	{ 11, "OB_HIDETREE(", 519, yWINDTAB_args, TARGET_VER371, TARGET_VER371 },
	{ 10, "OB.RBUTTON(", 510, yWINDTAB_args, TARGET_VER371, TARGET_VER371 },
 	{ 11, "OB_SELECTED(", 560, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 10, "OB_CROSSED(", 561, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 10, "OB_CHECKED(", 562, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 11, "OB_DISABLED(", 563, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 11, "OB_OUTLINED(", 564, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 11, "OB_SHADOWED(", 565, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 11, "OB_WHITEBAK(", 566, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 13, "OB_SELECTABLE(", 568, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 10, "OB_DEFAULT(", 569, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 7, "OB_EXIT(", 570, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 11, "OB_EDITABLE(", 571, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 10, "OB_RBUTTON(", 572, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 9, "OB_LASTOB(", 573, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 12, "OB_TOUCHEXIT(", 574, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 11, "OB_HIDETREE(", 575, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 11, "OB_INDIRECT(", 576, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 10, "OB_FL3DIND(", 577, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 10, "OB_FL3DACT(", 578, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 10, "OB_SUBMENU(", 579, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 10, "OB_FL3DBAK(", 581, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 4, "PRINT", 147, yPRINT_args, TARGET_VER36, 0 },
 	{ 3, "PLOT", 88, yBMIRROR_args, TARGET_VER36, 0 },
 	{ 3, "PSET", 89, yBMOVE_args, TARGET_VER36, 0 },
 	{ 3, "POKE", 97, yBMIRROR_args, TARGET_VER36, 0 },
 	{ 5, "PTSIN(", 220, yINTIN_args, TARGET_VER36, 0 },
 	{ 6, "PTSOUT(", 221, yINTIN_args, TARGET_VER36, 0 },
 	{ 8, "PROCEDURE", 6, yPROCEDURE_args, TARGET_VER36, 0 },
 	{ 2, "PUT", 260, yPUT_args, TARGET_VER36, 0 },
 	{ 3, "PBOX", 288, yBOX_args, TARGET_VER36, 0 },
 	{ 4, "PRBOX", 290, yBOX_args, TARGET_VER36, 0 },
 	{ 6, "PCIRCLE", 293, yCIRCLE_args, TARGET_VER36, 0 },
 	{ 7, "PELLIPSE", 297, yELLIPSE_args, TARGET_VER36, 0 },
 	{ 4, "PAUSE", 344, yCLEARW_args, TARGET_VER36, 0 },
 	{ 7, "POLYLINE", 347, yPOLYLINE_args, TARGET_VER36, 0 },
 	{ 7, "POLYFILL", 348, yPOLYLINE_args, TARGET_VER36, 0 },
 	{ 7, "POLYMARK", 349, yPOLYLINE_args, TARGET_VER36, 0 },
 	{ 4, "PSAVE", 391, yCHDIR_args, TARGET_VER36, 0 },
 	{ 5, "PALGET", 482, yCLEARW_args, TARGET_VER370, TARGET_VER370 },
 	{ 5, "PALGET", 502, yCLEARW_args, TARGET_VER371, 0 },
 	{ 5, "PALSET", 483, yCLEARW_args, TARGET_VER370, TARGET_VER370 },
 	{ 5, "PALSET", 503, yCLEARW_args, TARGET_VER371, 0 },
 	{ 6, "PIXEL32", 642, yPIXEL32_args, TARGET_VER372, 0 },
 	{ 6, "PIXEL24", 640, yPIXEL24_args, TARGET_VER372, 0 },
 	{ 6, "PIXEL16", 644, yPIXEL16_args, TARGET_VER372, 0 },
 	{ 6, "PIXEL15", 646, yPIXEL15_args, TARGET_VER372, 0 },
 	{ 6, "PIXEL8C", 655, yVGET_args, TARGET_VER372, 0 },
 	{ 6, "PIXEL8P", 653, yVGET_args, TARGET_VER372, 0 },
 	{ 6, "PIXEL4P", 662, yVGET_args, TARGET_VER372, 0 },
 	{ 6, "PIXEL2P", 663, yVGET_args, TARGET_VER372, 0 },
 	{ 6, "PIXEL1M", 654, yVGET_args, TARGET_VER372, 0 },
 	{ 3, "PBAR", 649, yBOX_args, TARGET_VER373, 0 },
 	{ 4, "PRBAR", 651, yBOX_args, TARGET_VER373, 0 },
 	{ 3, "QUIT", 309, yMONITOR_args, TARGET_VER36, 0 },
 	{ 4, "QSORT", 345, yQSORT_args, TARGET_VER36, 0 },
 	{ 2, "REM", 114, REM_args, TARGET_VER36, 0 },
 	{ 5, "REPEAT", 2, no_args, TARGET_VER36, 0 },
 	{ 6, "RESTORE", 59, yRESTORE_args, TARGET_VER36, 0 },
 	{ 5, "RETURN", 7, yRETURN_args, TARGET_VER36, 0 },
 	{ 5, "RETURN", 17, yRETURN_args, TARGET_VER36, 0 },
 	{ 6, "RELSEEK", 209, ySEEK_args, TARGET_VER36, 0 },
 	{ 6, "RESERVE", 103, yRESERVE_args, TARGET_VER36, 0 },
 	{ 8, "RANDOMIZE", 255, yMONITOR_args, TARGET_VER36, 0 },
 	{ 3, "RBOX", 289, yBOX_args, TARGET_VER36, 0 },
 	{ 4, "RMDIR", 334, yCHDIR_args, TARGET_VER36, 0 },
 	{ 3, "RSET", 335, yRSET_args, TARGET_VER36, 0 },
 	{ 5, "RENAME", 352, yNAME_args, TARGET_VER36, 0 },
 	{ 4, "RCALL", 151, yRCALL_args, TARGET_VER36, 0 },
 	{ 5, "RESUME", 105, yRESUME_args, TARGET_VER36, 0 },
 	{ 3, "READ", 372, yREAD_args, TARGET_VER36, 0 },
 	{ 5, "RECORD", 109, yRECORD_args, TARGET_VER36, 0 },
 	{ 2, "RUN", 393, yRUN_args, TARGET_VER36, 0 },
 	{ 5, "RECALL", 403, yRECALL_args, TARGET_VER36, 0 },
 	{ 6, "RC_COPY", 413, yRC_COPY_args, TARGET_VER36, 0 },
 	{ 8, "RC_REDRAW", 676, yRC_REDRAW_args, TARGET_VER373, 0 },
 	{ 2, "RGB", 536, yRGB_args, TARGET_VER371, 0 },
 	{ 3, "RBAR", 650, yBOX_args, TARGET_VER373, 0 },
 	{ 5, "SWITCH", 12, ySWITCH_args, TARGET_VER36, 0 },
 	{ 5, "SELECT", 12, ySWITCH_args, TARGET_VER36, 0 },
 	{ 3, "SWAP", 118, ySWAP_args, TARGET_VER36, 0 },
 	{ 2, "SUB", 184, ySUB_args, TARGET_VER36, 0 },
 	{ 4, "SPOKE", 100, yBMIRROR_args, TARGET_VER36, 0 },
 	{ 5, "SDPOKE", 101, yBMIRROR_args, TARGET_VER36, 0 },
 	{ 5, "SLPOKE", 102, yBMIRROR_args, TARGET_VER36, 0 },
 	{ 7, "SETCOLOR", 211, ySETCOLOR_args, TARGET_VER36, 0 },
 	{ 3, "SEEK", 208, ySEEK_args, TARGET_VER36, 0 },
 	{ 6, "SETTIME", 336, ySETTIME_args, TARGET_VER36, 0 },
 	{ 3, "SGET", 337, ySPUT_args, TARGET_VER36, 0 },
 	{ 3, "SPUT", 339, ySPUT_args, TARGET_VER36, 0 },
 	{ 4, "SHOWM", 338, no_args, TARGET_VER36, 0 },
 	{ 3, "STOP", 340, no_args, TARGET_VER36, 0 },
 	{ 5, "SYSTEM", 341, yMONITOR_args, TARGET_VER36, 0 },
 	{ 4, "SSORT", 346, yQSORT_args, TARGET_VER36, 0 },
 	{ 4, "STICK", 353, yCLEARW_args, TARGET_VER36, 0 },
 	{ 4, "SOUND", 354, ySOUND_args, TARGET_VER36, 0 },
 	{ 6, "SINGLE{", 123, yWORD_args, TARGET_VER36, 0 },
 	{ 7, "SETMOUSE", 374, ySETMOUSE_args, TARGET_VER36, 0 },
 	{ 3, "SAVE", 390, yCHDIR_args, TARGET_VER36, 0 },
 	{ 6, "SETDRAW", 396, yBMOVE_args, TARGET_VER36, 0 },
 	{ 4, "STORE", 402, ySTORE_args, TARGET_VER36, 0 },
 	{ 5, "SPRITE", 409, ySPRITE_args, TARGET_VER36, 0 },
 	{ 4, "SFILL", 670, yALINE_args, TARGET_VER373, 0 },
 	{ 6, "STRUCT(", 661, yWINDTAB_args, TARGET_VER373, 0 },
 	{ 7, "STRUCT!(", 657, yWINDTAB_args, TARGET_VER373, 0 },
 	{ 7, "STRUCT|(", 658, yWINDTAB_args, TARGET_VER373, 0 },
 	{ 7, "STRUCT&(", 659, yWINDTAB_args, TARGET_VER373, 0 },
 	{ 7, "STRUCT%(", 660, yWINDTAB_args, TARGET_VER373, 0 },
 	{ 7, "STRUCT$(", 656, yOB_TEXTs_args, TARGET_VER373, 0 },
 	{ 4, "SUPER", 639, yCLEARW_args, TARGET_VER373, 0 },
 	{ 4, "SLEEP", 514, yMONITOR_args, TARGET_VER371, 0 },
 	{ 5, "SBYTE{", 506, yWORD_args, TARGET_VER371, 0 },
 	{ 5, "SCREEN", 534, yCLEARW_args, TARGET_VER371, 0 },
 	{ 3, "SNDH", 497, yBMOVE_args, TARGET_VER371, 0 },
 	{ 4, "SCALL", 491, ySCALL_args, TARGET_VER370, 0 },
 	{ 6, "STRPOKE", 494, yINFOW_args, TARGET_VER371, 0 },
 	{ 7, "SET.MFDB", 460, yACHAR_args, TARGET_VER370, 0 },
 	{ 7, "SET.MENU", 541, yACHAR_args, TARGET_VER371, 0 },
 	{ 8, "SET.SXYXY", 517, yBOX_args, TARGET_VER372, 0 },
 	{ 8, "SET.DXYXY", 518, yBOX_args, TARGET_VER372, 0 },
 	{ 8, "SET.SXYWH", 508, yBOX_args, TARGET_VER372, 0 },
 	{ 8, "SET.DXYWH", 509, yBOX_args, TARGET_VER372, 0 },
 	{ 8, "SET.PXYWH", 461, yACHAR_args, TARGET_VER370, 0 },
 	{ 8, "SET.RXYWH", 519, yARECT_args, TARGET_VER372, 0 },
 	{ 8, "SET.PXYXY", 488, yARECT_args, TARGET_VER370, 0 },
 	{ 11, "SET.GCBITMAP", 521, yALINE_args, TARGET_VER370, 0 },
 	{ 14, "SET.SOCKADDR_IN", 495, yBOX_args, TARGET_VER371, 0 },
 	{ 11, "SET.SOCKADDR", 495, yBOX_args, TARGET_VER370, TARGET_VER370 },
 	{ 11, "STRARRAYFILL", 537, ySTRARRAYFILL_args, TARGET_VER371, 0 },
 	{ 3, "TEXT", 149, yTEXT_args, TARGET_VER36, 0 },
 	{ 3, "TRON", 143, yTRON_args, TARGET_VER36, 0 },
 	{ 4, "TROFF", 146, no_args, TARGET_VER36, 0 },
 	{ 3, "TOPW", 274, yTOPW_args, TARGET_VER36, 0 },
 	{ 5, "TITLEW", 275, yINFOW_args, TARGET_VER36, 0 },
 	{ 4, "TOUCH", 326, yTOPW_args, TARGET_VER36, 0 },
 	{ 5, "TIME$=", 407, yCHDIR_args, TARGET_VER36, 0 },
 	{ 8, "TIMESTAMP", 473, yCHDIR_args, TARGET_VER370, TARGET_VER370 },
 	{ 7, "TEDINFO(", 546, yUSERBLK_args, TARGET_VER371, TARGET_VER371 },
 	{ 3, "TPUT", 496, yTPUT_args, TARGET_VER371, 0 },
 	{ 6, "TBITBLT", 490, yBMOVE_args, TARGET_VER371, 0 },
 	{ 8, "TE_PTEXT(", 598, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 9, "TE_PTMPLT(", 599, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 9, "TE_PVALID(", 600, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 7, "TE_FONT(", 601, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 9, "TE_FONTID(", 602, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 7, "TE_JUST(", 603, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 8, "TE_COLOR(", 604, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 11, "TE_FONTSIZE(", 605, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 12, "TE_THICKNESS(", 606, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 9, "TE_TXTLEN(", 607, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 9, "TE_TMPLEN(", 608, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 11, "TE_FRAMECOL(", 609, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 10, "TE_TEXTCOL(", 610, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 11, "TE_TEXTMODE(", 611, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 14, "TE_FILLPATTERN(", 612, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 14, "TE_INTERIORCOL(", 613, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 5, "TMOUSE", 474, yCLEARW_args, TARGET_VER373, 0 },
 	{ 4, "UNTIL", 3, yENDREPEAT_args, TARGET_VER36, 0 },
 	{ 7, "USERBLK(", 549, yUSERBLK_args, TARGET_VER371, TARGET_VER371 },
 	{ 7, "UB_CODE(", 596, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 7, "UB_PARM(", 597, yWINDTAB_args, TARGET_VER372, 0 },
 	{ 8, "USERDEF!(", 671, yINTIN_args, TARGET_VER373, 0 },
 	{ 8, "USERDEF|(", 672, yINTIN_args, TARGET_VER373, 0 },
 	{ 8, "USERDEF&(", 673, yINTIN_args, TARGET_VER373, 0 },
 	{ 8, "USERDEF%(", 674, yINTIN_args, TARGET_VER373, 0 },
 	{ 5, "VDISYS", 214, yVDISYS_args, TARGET_VER36, 0 },
 	{ 3, "VOID", 240, yVOID_args, TARGET_VER36, 0 },
 	{ 4, "VSYNC", 342, no_args, TARGET_VER36, 0 },
 	{ 3, "VTAB", 321, yCLEARW_args, TARGET_VER36, 0 },
 	{ 3, "V~H=", 406, yCLEARW_args, TARGET_VER36, 0 },
 	{ 8, "VSETCOLOR", 419, yVSETCOLOR_args, TARGET_VER36, 0 },
 	{ 7, "VRC_COPY", 470, yRC_COPY_args, TARGET_VER370, 0 },
 	{ 5, "VCURVE", 469, yARECT_args, TARGET_VER370, 0 },
 	{ 3, "VCLS", 481, yMONITOR_args, TARGET_VER370, 0 },
 	{ 3, "VGET", 471, yVGET_args, TARGET_VER370, 0 },
 	{ 3, "VPUT", 492, yVPUT_args, TARGET_VER370, 0 },
 	{ 4, "VSGET", 479, yCLEARW_args, TARGET_VER370, 0 },
 	{ 4, "VSPUT", 480, yCLEARW_args, TARGET_VER370, 0 },
 	{ 4, "VPLOT", 472, yBMIRROR_args, TARGET_VER370, 0 },
 	{ 4, "VLINE", 475, yBOX_args, TARGET_VER370, 0 },
 	{ 3, "VBOX", 489, yBOX_args, TARGET_VER370, 0 },
 	{ 6, "VPALGET", 482, yCLEARW_args, TARGET_VER371, 0 },
 	{ 6, "VPALSET", 483, yCLEARW_args, TARGET_VER371, 0 },
 	{ 4, "VPBAR", 652, yBOX_args, TARGET_VER373, 0 },
 	{ 6, "VER2STR", 667, yENVIRON_args, TARGET_VER373, 0 },
 	{ 6, "VBITBLT", 490, yBMOVE_args, TARGET_VER370, TARGET_VER370 },
 	{ 4, "WHILE", 4, yENDREPEAT_args, TARGET_VER36, 0 },
 	{ 3, "WEND", 5, yENDWHILE_args, TARGET_VER36, 0 },
 	{ 3, "WAVE", 355, yWAVE_args, TARGET_VER36, 0 },
 	{ 7, "WINDTAB(", 412, yWINDTAB_args, TARGET_VER36, 0 },
 	{ 4, "WRITE", 416, yWRITE_args, TARGET_VER36, 0 },
 	{ 4, "WORD{", 418, yWORD_args, TARGET_VER36, 0 },
 	{ 6, "WAITVBL", 542, no_args, TARGET_VER371, 0 },
 	{ 7, "WARMBOOT", 512, no_args, TARGET_VER371, 0 },
 	{ 7, "_GLOBAL=", 669, yCLEARW_args, TARGET_VER373, 0 },
 	{ 5, "_DATA=", 423, yCLEARW_args, TARGET_VER36, 0 },
 	{ 2, "_0=", 550, yCLEARW_args, TARGET_VER371, 0 },
 	{ 2, "_1=", 551, yCLEARW_args, TARGET_VER371, 0 },
 	{ 2, "_2=", 552, yCLEARW_args, TARGET_VER371, 0 },
 	{ 2, "_3=", 553, yCLEARW_args, TARGET_VER371, 0 },
 	{ 2, "_4=", 554, yCLEARW_args, TARGET_VER371, 0 },
 	{ 2, "_5=", 555, yCLEARW_args, TARGET_VER371, 0 },
 	{ 2, "_6=", 556, yCLEARW_args, TARGET_VER371, 0 },
 	{ 2, "_7=", 557, yCLEARW_args, TARGET_VER371, 0 },
 	{ 2, "_8=", 558, yCLEARW_args, TARGET_VER371, 0 },
 	{ 2, "_9=", 559, yCLEARW_args, TARGET_VER371, 0 },
 	{ 0, "{", 230, yWORD_args, TARGET_VER36, 0 },
 	{ 0, "~", 241, yCLEARW_args, TARGET_VER36, 0 },
 	{ 9, "FORM INPUT", 153, yFORM_INPUT_args, TARGET_VER36, 0 },
 	{ 9, "LINE INPUT", 154, yLINE_args, TARGET_VER36, 0 },
 	{ 6, "ELSE IF", 16, yELSE_args, TARGET_VER36, 0 },
 	{ 2, "END", 124, no_args, TARGET_VER36, 0 },
 	{ 7, "DO WHILE", 49, no_args, TARGET_VER36, 0 },
 	{ 7, "DO UNTIL", 50, no_args, TARGET_VER36, 0 },
 	{ 9, "LOOP WHILE", 51, no_args, TARGET_VER36, 0 },
 	{ 9, "LOOP UNTIL", 52, no_args, TARGET_VER36, 0 },
 	{ 7, "ON ERROR", 128, yON_args, TARGET_VER36, 0 },
 	{ 13, "ON ERROR GOSUB", 129, yON_args, TARGET_VER36, 0 },
 	{ 7, "ON BREAK", 130, yON_args, TARGET_VER36, 0 },
 	{ 12, "ON BREAK CONT", 131, yON_args, TARGET_VER36, 0 },
 	{ 13, "ON BREAK GOSUB", 132, yON_args, TARGET_VER36, 0 },
 	{ 12, "ON MENU GOSUB", 133, yON_args, TARGET_VER36, 0 },
 	{ 20, "ON MENU MESSAGE GOSUB", 134, yON_args, TARGET_VER36, 0 },
 	{ 16, "ON MENU KEY GOSUB", 135, yON_args, TARGET_VER36, 0 },
 	{ 13, "ON MENU BUTTON", 136, yON_args, TARGET_VER36, 0 },
 	{ 6, "ON MENU", 137, yON_args, TARGET_VER36, 0 },
 	{ 11, "ON MENU IBOX", 238, yON_args, TARGET_VER36, 0 },
 	{ 11, "ON MENU OBOX", 239, yON_args, TARGET_VER36, 0 },
 	{ 7, "MENU OFF", 140, yMENU_args, TARGET_VER36, 0 },
 	{ 8, "MENU KILL", 141, yMENU_args, TARGET_VER36, 0 },
 	{ 3, "MENU", 142, yMENU_args, TARGET_VER36, 0 },
 	{ 4, "OPENW", 266, yCLEARW_args, TARGET_VER36, 0 },
 	{ 6, "OPENW #", 267, yCLEARW_args, TARGET_VER36, 0 },
 	{ 5, "CLOSEW", 269, yCLEARW_args, TARGET_VER36, 0 },
 	{ 7, "CLOSEW #", 270, yCLEARW_args, TARGET_VER36, 0 },
 	{ 5, "CLEARW", 272, yCLEARW_args, TARGET_VER36, 0 },
 	{ 7, "CLEARW #", 273, yCLEARW_args, TARGET_VER36, 0 },
 	{ 10, "> PROCEDURE", 54, no_args, TARGET_VER36, 0 },
 	{ 9, "> FUNCTION", 449, no_args, TARGET_VER36, 0 },
 	{ 8, "RELSEEK #", 209, ySEEK_args, TARGET_VER36, 0 },
 	{ 5, "SEEK #", 208, ySEEK_args, TARGET_VER36, 0 },
 	{ 5, "TOPW #", 274, yTOPW_args, TARGET_VER36, 0 },
 	{ 7, "TITLEW #", 275, yINFOW_args, TARGET_VER36, 0 },
 	{ 6, "TOUCH #", 326, yTOPW_args, TARGET_VER36, 0 },
 	{ 8, "ENDSEEK #", 520, ySEEK_args, TARGET_VER371, 0 },
 	{ 6, "DEFAULT", 15, yDEFAULT_args, TARGET_VER36, 0 },
 	{ 5, "SELECT", 44, no_args, TARGET_VER36, 0 },
 	{ 6, "MAT ADD", 424, yMAT_args, TARGET_VER36, 0 },
 	{ 6, "MAT SUB", 426, yMAT_args, TARGET_VER36, 0 },
 	{ 6, "MAT CPY", 428, yMAT_args, TARGET_VER36, 0 },
 	{ 7, "MAT XCPY", 429, yMAT_args, TARGET_VER36, 0 },
 	{ 6, "MAT DET", 430, yMAT_args, TARGET_VER36, 0 },
 	{ 6, "MAT NEG", 431, yMAT_args, TARGET_VER36, 0 },
 	{ 6, "MAT ABS", 432, yMAT_args, TARGET_VER36, 0 },
 	{ 7, "MAT NORM", 433, yMAT_args, TARGET_VER36, 0 },
 	{ 7, "MAT READ", 434, yMAT_args, TARGET_VER36, 0 },
 	{ 8, "MAT PRINT", 435, yMAT_args, TARGET_VER36, 0 },
 	{ 8, "MAT TRANS", 436, yMAT_args, TARGET_VER36, 0 },
 	{ 6, "MAT CLR", 437, yMAT_args, TARGET_VER36, 0 },
 	{ 6, "MAT SET", 438, yMAT_args, TARGET_VER36, 0 },
 	{ 6, "MAT ONE", 439, yMAT_args, TARGET_VER36, 0 },
 	{ 7, "MAT BASE", 440, yMAT_args, TARGET_VER36, 0 },
 	{ 7, "MAT QDET", 441, yMAT_args, TARGET_VER36, 0 },
 	{ 8, "MAT INPUT", 442, yMAT_args, TARGET_VER36, 0 },
 	{ 7, "MAT RANG", 443, yMAT_args, TARGET_VER36, 0 },
 	{ 6, "MAT MUL", 444, yMAT_args, TARGET_VER36, 0 },
 	{ 6, "MAT INV", 448, yMAT_args, TARGET_VER36, 0 }
};

/*** ---------------------------------------------------------------------- ***/

struct matcmdname const mat_cmd_table[] = {
	{ "ADD", ymat_ADD_args },
	{ "ABS", ymat_ABS_args },
	{ "BASE", ymat_BASE_args },
	{ "CPY", ymat_CPY_args },
	{ "CLR", ymat_CLR_args },
	{ "DET", ymat_DET_args },
	{ "QDET", ymat_QDET_args },
	{ "INV", ymat_INV_args },
	{ "INPUT", ymat_INPUT_args },
	{ "MUL", ymat_MUL_args },
	{ "NORM", ymat_NORM_args },
	{ "NEG", ymat_NEG_args },
	{ "ONE", ymat_ONE_args },
	{ "PRINT", ymat_PRINT_args },
	{ "?", ymat_PRINT_args },
	{ "READ", ymat_READ_args },
	{ "RANG", ymat_RANG_args },
	{ "SUB", ymat_SUB_args },
	{ "SET", ymat_SET_args },
	{ "TRANS", ymat_TRANS_args },
	{ "XCPY", ymat_XCPY_args }
};

/*** ---------------------------------------------------------------------- ***/

struct funcname const func_table[] = {
	{ 0, "#", TOK_CHANNEL, TARGET_VER36, 0 },
	{ 0, "'", TOK_PRINTSPACE, TARGET_VER36, 0 },
	{ 0, "x0d", TOK_LINE_COMMENT, TARGET_VER36, 0 },
	{ 0, "(", TOK_LPAREN, TARGET_VER36, 0 },
	{ 0, ")", TOK_RPAREN, TARGET_VER36, 0 },
	{ 0, "*", TOK_MUL, TARGET_VER36, 0 },
	{ 0, "+", TOK_ADD, TARGET_VER36, 0 },
	{ 0, "-", TOK_SUB, TARGET_VER36, 0 },
	{ 0, "-", TOK_UMINUS, TARGET_VER36, 0 },
	{ 0, ",", TOK_COMMA, TARGET_VER36, 0 },
	{ 0, ";", TOK_SEMI, TARGET_VER36, 0 },
	{ 1, "==", TOK_APPROX_EQ, TARGET_VER36, 0 },
	{ 1, "><", TOK_NE, TARGET_VER36, 0 },
	{ 1, "<>", TOK_NE, TARGET_VER36, 0 },
	{ 1, "<=", TOK_LE, TARGET_VER36, 0 },
	{ 1, "=<", TOK_LE2, TARGET_VER36, 0 },
	{ 1, "=>", TOK_GE2, TARGET_VER36, 0 },
	{ 1, ">=", TOK_GE, TARGET_VER36, 0 },
	{ 0, "<", TOK_LT, TARGET_VER36, 0 },
	{ 0, "=", TOK_EQ, TARGET_VER36, 0 },
	{ 0, ">", TOK_GT, TARGET_VER36, 0 },
	{ 0, ":", TOK_LABEL, TARGET_VER36, 0 },
	{ 0, "@", TOK_GOSUB, TARGET_VER36, 0 },
	{ 0, "(", TOK_RES_46, TARGET_VER36, 0 },
	{ 0, "(", TOK_LPAREN2, TARGET_VER36, 0 },
	{ 0, ",", TOK_COMMA2, TARGET_VER36, 0 },
	{ 0, "+", TOK_PLUS_STR, TARGET_VER36, 0 },
	{ 0, ",", TOK_RES_64, TARGET_VER36, 0 },
	{ 0, "<", TOK_LT_STR, TARGET_VER36, 0 },
	{ 1, "<=", TOK_LE_STR, TARGET_VER36, 0 },
	{ 1, "<>", TOK_NE_STR, TARGET_VER36, 0 },
	{ 0, "=", TOK_EQ_STR, TARGET_VER36, 0 },
	{ 0, "=", TOK_ASSIGN, TARGET_VER36, 0 },
	{ 1, "=<", TOK_LE2_STR, TARGET_VER36, 0 },
	{ 1, "=>", TOK_GE2_STR, TARGET_VER36, 0 },
	{ 0, ">", TOK_GT_STR, TARGET_VER36, 0 },
	{ 1, ">=", TOK_GE_STR, TARGET_VER36, 0 },
	{ 0, "*", (TOK_SUBFUNC_208<<8)+189, TARGET_VER36, 0 },
	{ 0, "0", TOK_CONST_ZERO, TARGET_VER36, 0 },
	{ 0, "1", TOK_CONST_ONE, TARGET_VER36, 0 },
	{ 0, "2", TOK_CONST_TWO, TARGET_VER36, 0 },
	{ 0, "3", TOK_CONST_THREE, TARGET_VER36, 0 },
	{ 1, ")=", TOK_ARRAY_ASS, TARGET_VER36, 0 },
	{ 1, "}=", TOK_REFEND, TARGET_VER36, 0 },
	{ 1, "]=", TOK_RES_68, TARGET_VER36, 0 },
	{ 0, ")", TOK_RPAREN2, TARGET_VER36, 0 },
	{ 2, "AND", TOK_AND, TARGET_VER36, 0 },
	{ 3, "AND(", (TOK_SUBFUNC_208<<8)+5, TARGET_VER36, 0 },
	{ 3, "ABS(", TOK_ABS, TARGET_VER36, 0 },
	{ 3, "ATN(", TOK_ATAN, TARGET_VER36, 0 },
	{ 3, "ASC(", (TOK_SUBFUNC_208<<8)+67, TARGET_VER36, 0 },
	{ 2, "AT(", TOK_AT, TARGET_VER36, 0 },
	{ 4, "ASIN(", TOK_ASIN, TARGET_VER36, 0 },
	{ 4, "ACOS(", TOK_ACOS, TARGET_VER36, 0 },
	{ 1, "AS", TOK_AS, TARGET_VER36, 0 },
	{ 6, "ARRPTR(", (TOK_SUBFUNC_208<<8)+188, TARGET_VER36, 0 },
	{ 3, "ADD(", (TOK_SUBFUNC_208<<8)+2, TARGET_VER36, 0 },
	{ 6, "ADDRIN(", (TOK_SUBFUNC_208<<8)+18, TARGET_VER36, 0 },
	{ 5, "ADDRIN", (TOK_SUBFUNC_208<<8)+19, TARGET_VER36, 0 },
	{ 7, "ADDROUT(", (TOK_SUBFUNC_208<<8)+20, TARGET_VER36, 0 },
	{ 6, "ADDROUT", (TOK_SUBFUNC_208<<8)+21, TARGET_VER36, 0 },
	{ 10, "APPL_INIT()", (TOK_SUBFUNC_208<<8)+135, TARGET_VER36, 0 },
	{ 9, "APPL_READ(", (TOK_SUBFUNC_208<<8)+136, TARGET_VER36, 0 },
	{ 10, "APPL_WRITE(", (TOK_SUBFUNC_208<<8)+137, TARGET_VER36, 0 },
	{ 9, "APPL_FIND(", (TOK_SUBFUNC_208<<8)+138, TARGET_VER36, 0 },
	{ 10, "APPL_TPLAY(", (TOK_SUBFUNC_208<<8)+139, TARGET_VER36, 0 },
	{ 12, "APPL_TRECORD(", (TOK_SUBFUNC_208<<8)+140, TARGET_VER36, 0 },
	{ 10, "APPL_EXIT()", (TOK_SUBFUNC_208<<8)+141, TARGET_VER36, 0 },
	{ 6, "ARRAY!(", (TOK_SUBFUNC_211<<8)+246, TARGET_VER373, 0 },
	{ 6, "ARRAY|(", (TOK_SUBFUNC_211<<8)+247, TARGET_VER373, 0 },
	{ 6, "ARRAY&(", (TOK_SUBFUNC_211<<8)+248, TARGET_VER373, 0 },
	{ 6, "ARRAY%(", (TOK_SUBFUNC_211<<8)+249, TARGET_VER373, 0 },
	{ 5, "ARRAY(", (TOK_SUBFUNC_211<<8)+250, TARGET_VER373, 0 },
	{ 9, "ARRAYSIZE(", (TOK_SUBFUNC_210<<8)+32, TARGET_VER371, 0 },
	{ 5, "ALLOC(", (TOK_SUBFUNC_209<<8)+66, TARGET_VER371, TARGET_VER371 },
	{ 9, "APPL.FIND(", (TOK_SUBFUNC_210<<8)+120, TARGET_VER370, 0 },
	{ 12, "APPL_CONTROL(", (TOK_SUBFUNC_209<<8)+23, TARGET_VER370, 0 },
	{ 11, "APPL_SEARCH(", (TOK_SUBFUNC_209<<8)+167, TARGET_VER370, 0 },
	{ 12, "APPL_GETINFO(", (TOK_SUBFUNC_209<<8)+22, TARGET_VER370, 0 },
	{ 11, "APPL_YIELD()", (TOK_SUBFUNC_209<<8)+86, TARGET_VER370, 0 },
	{ 3, "ACC?", (TOK_SUBFUNC_210<<8)+249, TARGET_VER371, 0 },
	{ 4, "AUTO?", (TOK_SUBFUNC_210<<8)+250, TARGET_VER371, 0 },
	{ 5, "ALIGN(", (TOK_SUBFUNC_210<<8)+9, TARGET_VER370, TARGET_VER370 },
	{ 2, "A~I", (TOK_SUBFUNC_208<<8)+244, TARGET_VER370, 0 },
	{ 5, "ALERT(", (TOK_SUBFUNC_209<<8)+250, TARGET_VER370, 0 },
	{ 7, "AP_SEND(", (TOK_SUBFUNC_209<<8)+252, TARGET_VER370, 0 },
	{ 8, "AV_INIT()", (TOK_SUBFUNC_210<<8)+93, TARGET_VER370, 0 },
	{ 12, "AV_PROTOKOLL(", (TOK_SUBFUNC_210<<8)+94, TARGET_VER370, 0 },
	{ 10, "AV_SENDKEY(", (TOK_SUBFUNC_210<<8)+97, TARGET_VER370, 0 },
	{ 11, "AV_OPENWIND(", (TOK_SUBFUNC_210<<8)+100, TARGET_VER373, 0 },
	{ 12, "AV_STARTPROG(", (TOK_SUBFUNC_210<<8)+101, TARGET_VER370, 0 },
	{ 14, "AV_ACCWINDOPEN(", (TOK_SUBFUNC_210<<8)+102, TARGET_VER370, 0 },
	{ 16, "AV_ACCWINDCLOSED(", (TOK_SUBFUNC_210<<8)+103, TARGET_VER370, 0 },
	{ 14, "AV_PATH_UPDATE(", (TOK_SUBFUNC_210<<8)+105, TARGET_VER370, 0 },
	{ 12, "AV_WHAT_IZIT(", (TOK_SUBFUNC_210<<8)+106, TARGET_VER370, 0 },
	{ 8, "AV_EXIT()", (TOK_SUBFUNC_210<<8)+108, TARGET_VER370, 0 },
	{ 10, "AV_STARTED(", (TOK_SUBFUNC_210<<8)+109, TARGET_VER370, 0 },
	{ 8, "AV_XWIND(", (TOK_SUBFUNC_210<<8)+110, TARGET_VER370, 0 },
	{ 11, "AV_FILEINFO(", (TOK_SUBFUNC_210<<8)+112, TARGET_VER373, 0 },
	{ 11, "AV_COPYFILE(", (TOK_SUBFUNC_210<<8)+113, TARGET_VER373, 0 },
	{ 10, "AV_DELFILE(", (TOK_SUBFUNC_210<<8)+114, TARGET_VER373, 0 },
	{ 4, "BIN$(", TOK_BIN1, TARGET_VER36, 0 },
	{ 7, "BASEPAGE", (TOK_SUBFUNC_208<<8)+31, TARGET_VER36, 0 },
	{ 4, "BIOS(", (TOK_SUBFUNC_208<<8)+85, TARGET_VER36, 0 },
	{ 4, "BREAK", TOK_BREAK, TARGET_VER36, 0 },
	{ 5, "BUTTON", TOK_BUTTON, TARGET_VER36, 0 },
	{ 3, "BASE", TOK_BASE, TARGET_VER36, 0 },
	{ 4, "BYTE(", (TOK_SUBFUNC_208<<8)+16, TARGET_VER36, 0 },
	{ 4, "BTST(", (TOK_SUBFUNC_208<<8)+44, TARGET_VER36, 0 },
	{ 4, "BSET(", (TOK_SUBFUNC_208<<8)+45, TARGET_VER36, 0 },
	{ 4, "BCLR(", (TOK_SUBFUNC_208<<8)+46, TARGET_VER36, 0 },
	{ 4, "BCHG(", (TOK_SUBFUNC_208<<8)+47, TARGET_VER36, 0 },
	{ 4, "BYTE{", (TOK_SUBFUNC_208<<8)+116, TARGET_VER36, 0 },
	{ 7, "BMPSIZE(", (TOK_SUBFUNC_210<<8)+244, TARGET_VER371, 0 },
	{ 8, "BFOBSPEC(", (TOK_SUBFUNC_210<<8)+206, TARGET_VER371, TARGET_VER371 },
	{ 6, "BITBLK(", (TOK_SUBFUNC_210<<8)+207, TARGET_VER371, TARGET_VER371 },
	{ 5, "BFIND(", (TOK_SUBFUNC_209<<8)+96, TARGET_VER370, 0 },
	{ 6, "BFIND&(", (TOK_SUBFUNC_210<<8)+174, TARGET_VER371, 0 },
	{ 6, "BFIND%(", (TOK_SUBFUNC_210<<8)+175, TARGET_VER371, 0 },
	{ 6, "BINSTR(", (TOK_SUBFUNC_209<<8)+95, TARGET_VER370, 0 },
	{ 7, "BCONOUT(", (TOK_SUBFUNC_209<<8)+152, TARGET_VER370, 0 },
	{ 8, "BCONSTAT(", (TOK_SUBFUNC_209<<8)+154, TARGET_VER370, 0 },
	{ 7, "BCOSTAT(", (TOK_SUBFUNC_209<<8)+153, TARGET_VER370, 0 },
	{ 6, "BCONIN(", (TOK_SUBFUNC_209<<8)+151, TARGET_VER370, 0 },
	{ 8, "BUFFOPER(", (TOK_SUBFUNC_209<<8)+35, TARGET_VER370, 0 },
	{ 7, "BUFFPTR(", (TOK_SUBFUNC_209<<8)+40, TARGET_VER370, 0 },
	{ 6, "BSWAP&(", (TOK_SUBFUNC_209<<8)+99, TARGET_VER370, 0 },
	{ 5, "BSWAP(", (TOK_SUBFUNC_209<<8)+100, TARGET_VER370, 0 },
	{ 6, "BSWAP3(", (TOK_SUBFUNC_210<<8)+10, TARGET_VER370, 0 },
	{ 8, "BLITMODE(", (TOK_SUBFUNC_209<<8)+76, TARGET_VER370, 0 },
	{ 7, "BCONMAP(", (TOK_SUBFUNC_209<<8)+206, TARGET_VER370, 0 },
	{ 6, "BCOUNT(", (TOK_SUBFUNC_209<<8)+97, TARGET_VER370, 0 },
	{ 7, "BCOUNT&(", (TOK_SUBFUNC_210<<8)+23, TARGET_VER371, 0 },
	{ 7, "BCOUNT%(", (TOK_SUBFUNC_210<<8)+24, TARGET_VER371, 0 },
	{ 9, "BIOSKEYS()", (TOK_SUBFUNC_209<<8)+222, TARGET_VER370, 0 },
	{ 5, "BOUND(", (TOK_SUBFUNC_210<<8)+131, TARGET_VER371, 0 },
	{ 8, "BCOMPARE(", (TOK_SUBFUNC_210<<8)+132, TARGET_VER371, 0 },
	{ 9, "BCOMPARE&(", (TOK_SUBFUNC_210<<8)+180, TARGET_VER371, 0 },
	{ 9, "BCOMPARE%(", (TOK_SUBFUNC_210<<8)+181, TARGET_VER371, 0 },
	{ 9, "BF_OBSPEC(", (TOK_SUBFUNC_211<<8)+110, TARGET_VER370, 0 },
	{ 12, "BF_CHARACTER(", (TOK_SUBFUNC_211<<8)+111, TARGET_VER372, 0 },
	{ 12, "BF_FRAMESIZE(", (TOK_SUBFUNC_211<<8)+112, TARGET_VER372, 0 },
	{ 11, "BF_FRAMECOL(", (TOK_SUBFUNC_211<<8)+113, TARGET_VER372, 0 },
	{ 10, "BF_TEXTCOL(", (TOK_SUBFUNC_211<<8)+114, TARGET_VER372, 0 },
	{ 11, "BF_TEXTMODE(", (TOK_SUBFUNC_211<<8)+115, TARGET_VER372, 0 },
	{ 14, "BF_FILLPATTERN(", (TOK_SUBFUNC_211<<8)+116, TARGET_VER372, 0 },
	{ 14, "BF_INTERIORCOL(", (TOK_SUBFUNC_211<<8)+117, TARGET_VER372, 0 },
	{ 8, "BI_PDATA(", (TOK_SUBFUNC_211<<8)+118, TARGET_VER372, 0 },
	{ 5, "BI_WB(", (TOK_SUBFUNC_211<<8)+119, TARGET_VER372, 0 },
	{ 5, "BI_HL(", (TOK_SUBFUNC_211<<8)+120, TARGET_VER372, 0 },
	{ 4, "BI_X(", (TOK_SUBFUNC_211<<8)+121, TARGET_VER372, 0 },
	{ 4, "BI_Y(", (TOK_SUBFUNC_211<<8)+122, TARGET_VER372, 0 },
	{ 8, "BI_COLOR(", (TOK_SUBFUNC_211<<8)+123, TARGET_VER372, 0 },
	{ 3, "COS(", TOK_COS, TARGET_VER36, 0 },
	{ 4, "COSQ(", TOK_COSQ, TARGET_VER36, 0 },
	{ 4, "CHR$(", TOK_CHR, TARGET_VER36, 0 },
	{ 3, "CVI(", (TOK_SUBFUNC_208<<8)+75, TARGET_VER36, 0 },
	{ 3, "CVL(", (TOK_SUBFUNC_208<<8)+76, TARGET_VER36, 0 },
	{ 3, "CVS(", TOK_CVS, TARGET_VER36, 0 },
	{ 3, "CVF(", TOK_CVF, TARGET_VER36, 0 },
	{ 3, "CVD(", TOK_CVD, TARGET_VER36, 0 },
	{ 7, "CONTERM(", (TOK_SUBFUNC_210<<8)+16, TARGET_VER370, 0 },
	{ 6, "CONTRL(", (TOK_SUBFUNC_208<<8)+22, TARGET_VER36, 0 },
	{ 5, "CONTRL", (TOK_SUBFUNC_208<<8)+23, TARGET_VER36, 0 },
	{ 3, "CONT", TOK_CONT, TARGET_VER36, 0 },
	{ 1, "C:", (TOK_SUBFUNC_208<<8)+117, TARGET_VER36, 0 },
	{ 5, "CRSLIN", (TOK_SUBFUNC_208<<8)+56, TARGET_VER36, 0 },
	{ 5, "CRSCOL", (TOK_SUBFUNC_208<<8)+57, TARGET_VER36, 0 },
	{ 4, "CARD(", (TOK_SUBFUNC_208<<8)+15, TARGET_VER36, 0 },
	{ 4, "CARD{", (TOK_SUBFUNC_208<<8)+115, TARGET_VER36, 0 },
	{ 4, "CHAR{", TOK_CHAR_REF, TARGET_VER36, 0 },
	{ 5, "CHAR$(", TOK_CHAR, TARGET_VER370, TARGET_VER370 },
	{ 4, "CINT(", (TOK_SUBFUNC_208<<8)+103, TARGET_VER36, 0 },
	{ 6, "CFLOAT(", TOK_CFLOAT, TARGET_VER36, 0 },
	{ 6, "COMBIN(", TOK_COMBIN, TARGET_VER36, 0 },
	{ 6, "CCONRS(", (TOK_SUBFUNC_212<<8)+24, TARGET_VER373, 0 },
	{ 7, "CCONIS()", (TOK_SUBFUNC_212<<8)+19, TARGET_VER373, 0 },
	{ 7, "CCONOS()", (TOK_SUBFUNC_212<<8)+20, TARGET_VER373, 0 },
	{ 7, "CAUXIS()", (TOK_SUBFUNC_212<<8)+21, TARGET_VER373, 0 },
	{ 7, "CAUXOS()", (TOK_SUBFUNC_212<<8)+22, TARGET_VER373, 0 },
	{ 7, "CPRNOS()", (TOK_SUBFUNC_212<<8)+23, TARGET_VER373, 0 },
	{ 6, "CRAWIO(", (TOK_SUBFUNC_212<<8)+16, TARGET_VER373, 0 },
	{ 8, "CRAWCIN()", (TOK_SUBFUNC_212<<8)+17, TARGET_VER373, 0 },
	{ 7, "CNECIN()", (TOK_SUBFUNC_212<<8)+18, TARGET_VER373, 0 },
	{ 7, "CCONIN()", (TOK_SUBFUNC_212<<8)+11, TARGET_VER373, 0 },
	{ 7, "CCONOUT(", (TOK_SUBFUNC_212<<8)+12, TARGET_VER373, 0 },
	{ 7, "CAUXIN()", (TOK_SUBFUNC_212<<8)+13, TARGET_VER373, 0 },
	{ 7, "CAUXOUT(", (TOK_SUBFUNC_212<<8)+14, TARGET_VER373, 0 },
	{ 7, "CPRNOUT(", (TOK_SUBFUNC_212<<8)+15, TARGET_VER373, 0 },
	{ 5, "CREAD(", (TOK_SUBFUNC_211<<8)+187, TARGET_VER373, 0 },
	{ 6, "CWRITE(", (TOK_SUBFUNC_211<<8)+186, TARGET_VER373, 0 },
	{ 9, "CONSTRAIN(", (TOK_SUBFUNC_210<<8)+138, TARGET_VER371, 0 },
	{ 6, "C_VDI(#", (TOK_SUBFUNC_210<<8)+25, TARGET_VER370, 0 },
	{ 8, "C_XBIOS(#", (TOK_SUBFUNC_210<<8)+26, TARGET_VER371, 0 },
	{ 6, "CALLOC(", (TOK_SUBFUNC_210<<8)+31, TARGET_VER371, 0 },
	{ 8, "CICONBLK(", (TOK_SUBFUNC_210<<8)+210, TARGET_VER371, TARGET_VER371 },
	{ 6, "CRYPT$(", TOK_CRYPT, TARGET_VER371, 0 },
	{ 6, "CURDIR$", TOK_CURDIR, TARGET_VER371, 0 },
	{ 7, "CMDLINE$", TOK_CMDLINE, TARGET_VER370, 0 },
	{ 8, "CHECKSUM(", (TOK_SUBFUNC_210<<8)+34, TARGET_VER36, 0 },
	{ 6, "CFREE()", (TOK_SUBFUNC_210<<8)+5, TARGET_VER370, TARGET_VER370 },
	{ 7, "CPU020()", (TOK_SUBFUNC_208<<8)+245, TARGET_VER370, 0 },
	{ 6, "CCONWS(", (TOK_SUBFUNC_209<<8)+101, TARGET_VER370, 0 },
	{ 5, "CRC16(", (TOK_SUBFUNC_209<<8)+246, TARGET_VER370, 0 },
	{ 5, "CRC32(", (TOK_SUBFUNC_209<<8)+247, TARGET_VER370, 0 },
	{ 8, "CURSCONF(", (TOK_SUBFUNC_209<<8)+205, TARGET_VER370, 0 },
	{ 9, "CACHECTRL(", (TOK_SUBFUNC_209<<8)+77, TARGET_VER370, 0 },
	{ 10, "CT60_CACHE(", (TOK_SUBFUNC_209<<8)+78, TARGET_VER370, 0 },
	{ 17, "CT60_FLUSH_CACHE()", (TOK_SUBFUNC_209<<8)+79, TARGET_VER370, 0 },
	{ 26, "CT60_READ_CORE_TEMPERATURE(", (TOK_SUBFUNC_209<<8)+80, TARGET_VER370, 0 },
	{ 17, "CT60_RW_PARAMETER(", (TOK_SUBFUNC_209<<8)+81, TARGET_VER370, 0 },
	{ 12, "CT60_VMALLOC(", (TOK_SUBFUNC_209<<8)+82, TARGET_VER370, 0 },
	{ 8, "COMPILED?", (TOK_SUBFUNC_210<<8)+225, TARGET_VER371, 0 },
	{ 6, "CPU020?", (TOK_SUBFUNC_210<<8)+252, TARGET_VER371, 0 },
	{ 11, "CI_MAINLIST(", (TOK_SUBFUNC_211<<8)+159, TARGET_VER372, 0 },
	{ 13, "CI_NUM_PLANES(", (TOK_SUBFUNC_211<<8)+160, TARGET_VER372, 0 },
	{ 11, "CI_COL_DATA(", (TOK_SUBFUNC_211<<8)+161, TARGET_VER372, 0 },
	{ 11, "CI_COL_MASK(", (TOK_SUBFUNC_211<<8)+162, TARGET_VER372, 0 },
	{ 11, "CI_SEL_DATA(", (TOK_SUBFUNC_211<<8)+163, TARGET_VER372, 0 },
	{ 11, "CI_SEL_MASK(", (TOK_SUBFUNC_211<<8)+164, TARGET_VER372, 0 },
	{ 11, "CI_NEXT_RES(", (TOK_SUBFUNC_211<<8)+165, TARGET_VER372, 0 },
	{ 2, "DIV", TOK_DIV, TARGET_VER36, 0 },
	{ 3, "DIV(", (TOK_SUBFUNC_208<<8)+1, TARGET_VER36, 0 },
	{ 5, "DOWNTO", TOK_DOWNTO, TARGET_VER36, 0 },
	{ 5, "DPEEK(", (TOK_SUBFUNC_208<<8)+64, TARGET_VER36, 0 },
	{ 4, "DIM?(", (TOK_SUBFUNC_208<<8)+81, TARGET_VER36, 0 },
	{ 5, "DATE$(", TOK_DATE1, TARGET_VER370, 0 },
	{ 4, "DATE$", TOK_DATE, TARGET_VER36, 0 },
	{ 4, "DIR$(", TOK_DIR, TARGET_VER36, 0 },
	{ 5, "DFREE(", (TOK_SUBFUNC_208<<8)+83, TARGET_VER36, 0 },
	{ 6, "DOUBLE{", TOK_DOUBLE_REF, TARGET_VER36, 0 },
	{ 3, "DEG(", TOK_DEG, TARGET_VER36, 0 },
	{ 4, "DRAW(", TOK_DRAW, TARGET_VER36, 0 },
	{ 7, "DCHROOT(", (TOK_SUBFUNC_212<<8)+46, TARGET_VER373, 0 },
	{ 5, "DCNTL(", (TOK_SUBFUNC_212<<8)+10, TARGET_VER373, 0 },
	{ 5, "DBMSG(", (TOK_SUBFUNC_212<<8)+6, TARGET_VER373, 0 },
	{ 5, "DAYNO(", (TOK_SUBFUNC_210<<8)+254, TARGET_VER371, 0 },
	{ 4, "DATE(", (TOK_SUBFUNC_210<<8)+214, TARGET_VER371, 0 },
	{ 3, "DAY(", (TOK_SUBFUNC_210<<8)+217, TARGET_VER371, 0 },
	{ 9, "DELCOOKIE(", (TOK_SUBFUNC_210<<8)+204, TARGET_VER371, 0 },
	{ 10, "DHST_INIT()", (TOK_SUBFUNC_210<<8)+187, TARGET_VER371, 0 },
	{ 8, "DHST_ADD(", (TOK_SUBFUNC_210<<8)+188, TARGET_VER36, 0 },
	{ 5, "DLOCK(", (TOK_SUBFUNC_210<<8)+148, TARGET_VER371, 0 },
	{ 8, "DIGITAL$(", TOK_DIGITAL, TARGET_VER371, 0 },
	{ 7, "DCREATE(", (TOK_SUBFUNC_209<<8)+103, TARGET_VER370, 0 },
	{ 7, "DDELETE(", (TOK_SUBFUNC_209<<8)+104, TARGET_VER370, 0 },
	{ 8, "DSETPATH(", (TOK_SUBFUNC_209<<8)+108, TARGET_VER370, 0 },
	{ 7, "DOSOUND(", (TOK_SUBFUNC_209<<8)+8, TARGET_VER370, 0 },
	{ 10, "DEVCONNECT(", (TOK_SUBFUNC_209<<8)+38, TARGET_VER370, 0 },
	{ 11, "DSPTRISTATE(", (TOK_SUBFUNC_209<<8)+36, TARGET_VER370, 0 },
	{ 8, "DGETDRV()", (TOK_SUBFUNC_209<<8)+11, TARGET_VER370, 0 },
	{ 7, "DSETDRV(", (TOK_SUBFUNC_209<<8)+102, TARGET_VER370, 0 },
	{ 9, "DPATHCONF(", (TOK_SUBFUNC_209<<8)+114, TARGET_VER370, 0 },
	{ 7, "DRVMAP()", (TOK_SUBFUNC_209<<8)+112, TARGET_VER370, 0 },
	{ 7, "DMAREAD(", (TOK_SUBFUNC_209<<8)+218, TARGET_VER370, 0 },
	{ 8, "DMAWRITE(", (TOK_SUBFUNC_209<<8)+219, TARGET_VER370, 0 },
	{ 6, "D_FREE(", (TOK_SUBFUNC_209<<8)+116, TARGET_VER370, TARGET_VER370 },
	{ 6, "DFREE%(", (TOK_SUBFUNC_209<<8)+116, TARGET_VER371, 0 },
	{ 8, "DGETPATH(", (TOK_SUBFUNC_209<<8)+107, TARGET_VER370, 0 },
	{ 2, "DTA", (TOK_SUBFUNC_209<<8)+56, TARGET_VER370, 0 },
	{ 11, "DWRITELABEL(", (TOK_SUBFUNC_210<<8)+163, TARGET_VER371, 0 },
	{ 10, "DREADLABEL(", (TOK_SUBFUNC_210<<8)+164, TARGET_VER371, 0 },
	{ 7, "DGETCWD(", (TOK_SUBFUNC_210<<8)+165, TARGET_VER371, 0 },
	{ 9, "DCLOSEDIR(", (TOK_SUBFUNC_210<<8)+166, TARGET_VER371, 0 },
	{ 10, "DREWINDDIR(", (TOK_SUBFUNC_210<<8)+167, TARGET_VER371, 0 },
	{ 8, "DOPENDIR(", (TOK_SUBFUNC_210<<8)+168, TARGET_VER371, 0 },
	{ 8, "DREADDIR(", (TOK_SUBFUNC_210<<8)+169, TARGET_VER371, 0 },
	{ 9, "DXREADDIR(", (TOK_SUBFUNC_210<<8)+170, TARGET_VER371, 0 },
	{ 6, "DMASND?", (TOK_SUBFUNC_210<<8)+253, TARGET_VER371, 0 },
	{ 11, "DSP_DOBLOCK(", (TOK_SUBFUNC_211<<8)+12, TARGET_VER372, 0 },
	{ 16, "DSP_BLKHANDSHAKE(", (TOK_SUBFUNC_211<<8)+13, TARGET_VER372, 0 },
	{ 15, "DSP_BLKUNPACKED(", (TOK_SUBFUNC_211<<8)+14, TARGET_VER372, 0 },
	{ 12, "DSP_INSTREAM(", (TOK_SUBFUNC_211<<8)+15, TARGET_VER372, 0 },
	{ 13, "DSP_OUTSTREAM(", (TOK_SUBFUNC_211<<8)+16, TARGET_VER372, 0 },
	{ 12, "DSP_IOSTREAM(", (TOK_SUBFUNC_211<<8)+17, TARGET_VER372, 0 },
	{ 20, "DSP_REMOVEINTERRUPTS(", (TOK_SUBFUNC_211<<8)+18, TARGET_VER372, 0 },
	{ 16, "DSP_GETWORDSIZE()", (TOK_SUBFUNC_211<<8)+19, TARGET_VER372, 0 },
	{ 9, "DSP_LOCK()", (TOK_SUBFUNC_211<<8)+20, TARGET_VER372, 0 },
	{ 11, "DSP_UNLOCK()", (TOK_SUBFUNC_211<<8)+21, TARGET_VER372, 0 },
	{ 13, "DSP_AVAILABLE(", (TOK_SUBFUNC_211<<8)+22, TARGET_VER372, 0 },
	{ 11, "DSP_RESERVE(", (TOK_SUBFUNC_211<<8)+23, TARGET_VER372, 0 },
	{ 12, "DSP_LOADPROG(", (TOK_SUBFUNC_211<<8)+24, TARGET_VER372, 0 },
	{ 12, "DSP_EXECPROG(", (TOK_SUBFUNC_211<<8)+25, TARGET_VER372, 0 },
	{ 12, "DSP_EXECBOOT(", (TOK_SUBFUNC_211<<8)+26, TARGET_VER372, 0 },
	{ 15, "DSP_LODTOBINARY(", (TOK_SUBFUNC_211<<8)+27, TARGET_VER372, 0 },
	{ 13, "DSP_TRIGGERHC(", (TOK_SUBFUNC_211<<8)+28, TARGET_VER372, 0 },
	{ 25, "DSP_REQUESTUNIQUEABILITY()", (TOK_SUBFUNC_211<<8)+29, TARGET_VER372, 0 },
	{ 19, "DSP_GETPROGABILITY()", (TOK_SUBFUNC_211<<8)+30, TARGET_VER372, 0 },
	{ 21, "DSP_FLUSHSUBROUTINES()", (TOK_SUBFUNC_211<<8)+31, TARGET_VER372, 0 },
	{ 18, "DSP_LOADSUBROUTINE(", (TOK_SUBFUNC_211<<8)+32, TARGET_VER372, 0 },
	{ 18, "DSP_INQSUBRABILITY(", (TOK_SUBFUNC_211<<8)+33, TARGET_VER372, 0 },
	{ 17, "DSP_RUNSUBROUTINE(", (TOK_SUBFUNC_211<<8)+34, TARGET_VER372, 0 },
	{ 7, "DSP_HF0(", (TOK_SUBFUNC_211<<8)+35, TARGET_VER372, 0 },
	{ 7, "DSP_HF1(", (TOK_SUBFUNC_211<<8)+36, TARGET_VER372, 0 },
	{ 8, "DSP_HF2()", (TOK_SUBFUNC_211<<8)+37, TARGET_VER372, 0 },
	{ 8, "DSP_HF3()", (TOK_SUBFUNC_211<<8)+38, TARGET_VER372, 0 },
	{ 12, "DSP_BLKWORDS(", (TOK_SUBFUNC_211<<8)+39, TARGET_VER372, 0 },
	{ 12, "DSP_BLKBYTES(", (TOK_SUBFUNC_211<<8)+40, TARGET_VER372, 0 },
	{ 10, "DSP_HSTAT()", (TOK_SUBFUNC_211<<8)+41, TARGET_VER372, 0 },
	{ 14, "DSP_SETVECTORS(", (TOK_SUBFUNC_211<<8)+42, TARGET_VER372, 0 },
	{ 14, "DSP_MULTBLOCKS(", (TOK_SUBFUNC_211<<8)+43, TARGET_VER372, 0 },
	{ 4, "EOF(#", (TOK_SUBFUNC_208<<8)+78, TARGET_VER36, 0 },
	{ 3, "EOF(", (TOK_SUBFUNC_208<<8)+78, TARGET_VER36, 0 },
	{ 2, "EQV", TOK_EQV, TARGET_VER36, 0 },
	{ 3, "EQV(", (TOK_SUBFUNC_208<<8)+8, TARGET_VER36, 0 },
	{ 4, "ERROR", TOK_ERROR, TARGET_VER36, 0 },
	{ 4, "ERR$(", TOK_ERRSTR, TARGET_VER36, 0 },
	{ 2, "ERR", (TOK_SUBFUNC_208<<8)+88, TARGET_VER36, 0 },
	{ 4, "EVEN(", (TOK_SUBFUNC_208<<8)+101, TARGET_VER36, 0 },
	{ 4, "EXEC(", (TOK_SUBFUNC_208<<8)+95, TARGET_VER36, 0 },
	{ 5, "EXIST(", (TOK_SUBFUNC_208<<8)+84, TARGET_VER36, 0 },
	{ 3, "EXP(", TOK_EXP, TARGET_VER36, 0 },
	{ 11, "EVNT_KEYBD()", (TOK_SUBFUNC_208<<8)+118, TARGET_VER36, 0 },
	{ 11, "EVNT_BUTTON(", (TOK_SUBFUNC_208<<8)+119, TARGET_VER36, 0 },
	{ 10, "EVNT_MOUSE(", (TOK_SUBFUNC_208<<8)+120, TARGET_VER36, 0 },
	{ 10, "EVNT_MESAG(", (TOK_SUBFUNC_208<<8)+121, TARGET_VER36, 0 },
	{ 10, "EVNT_TIMER(", (TOK_SUBFUNC_208<<8)+122, TARGET_VER36, 0 },
	{ 10, "EVNT_MULTI(", (TOK_SUBFUNC_208<<8)+123, TARGET_VER36, 0 },
	{ 11, "EVNT_DCLICK(", (TOK_SUBFUNC_208<<8)+142, TARGET_VER36, 0 },
	{ 2, "ERL", (TOK_SUBFUNC_210<<8)+2, TARGET_VER370, 0 },
	{ 8, "ENVIRON$(", TOK_ENVIRON, TARGET_VER371, 0 },
	{ 6, "ENVIRON", (TOK_SUBFUNC_210<<8)+121, TARGET_VER370, 0 },
	{ 10, "EGETSHIFT()", (TOK_SUBFUNC_209<<8)+238, TARGET_VER370, 0 },
	{ 9, "ESETSHIFT(", (TOK_SUBFUNC_209<<8)+239, TARGET_VER370, 0 },
	{ 8, "ESETBANK(", (TOK_SUBFUNC_209<<8)+240, TARGET_VER370, 0 },
	{ 9, "ESETCOLOR(", (TOK_SUBFUNC_209<<8)+241, TARGET_VER370, 0 },
	{ 8, "ESETGRAY(", (TOK_SUBFUNC_209<<8)+242, TARGET_VER370, 0 },
	{ 9, "ESETSMEAR(", (TOK_SUBFUNC_209<<8)+243, TARGET_VER370, 0 },
	{ 11, "EGETPALETTE(", (TOK_SUBFUNC_209<<8)+244, TARGET_VER370, 0 },
	{ 11, "ESETPALETTE(", (TOK_SUBFUNC_209<<8)+245, TARGET_VER370, 0 },
	{ 3, "EJP?", (TOK_SUBFUNC_208<<8)+254, TARGET_VER371, 0 },
	{ 4, "FRAC(", TOK_FRAC, TARGET_VER36, 0 },
	{ 3, "FRE(", (TOK_SUBFUNC_208<<8)+71, TARGET_VER36, 0 },
	{ 4, "FALSE", TOK_FALSE, TARGET_VER36, 0 },
	{ 4, "FATAL", (TOK_SUBFUNC_208<<8)+89, TARGET_VER36, 0 },
	{ 3, "FIX(", TOK_FIX, TARGET_VER36, 0 },
	{ 1, "FN", TOK_FNCALL, TARGET_VER36, 0 },
	{ 5, "FLOAT{", TOK_FLOAT_REF, TARGET_VER36, 0 },
	{ 7, "FORM_DO(", (TOK_SUBFUNC_208<<8)+157, TARGET_VER36, 0 },
	{ 9, "FORM_DIAL(", (TOK_SUBFUNC_208<<8)+158, TARGET_VER36, 0 },
	{ 10, "FORM_ALERT(", (TOK_SUBFUNC_208<<8)+159, TARGET_VER36, 0 },
	{ 10, "FORM_ERROR(", (TOK_SUBFUNC_208<<8)+160, TARGET_VER36, 0 },
	{ 11, "FORM_CENTER(", (TOK_SUBFUNC_208<<8)+161, TARGET_VER36, 0 },
	{ 10, "FORM_KEYBD(", (TOK_SUBFUNC_208<<8)+204, TARGET_VER36, 0 },
	{ 11, "FORM_BUTTON(", (TOK_SUBFUNC_208<<8)+205, TARGET_VER36, 0 },
	{ 10, "FSEL_INPUT(", (TOK_SUBFUNC_208<<8)+174, TARGET_VER36, 0 },
	{ 7, "FSFIRST(", (TOK_SUBFUNC_208<<8)+218, TARGET_VER36, 0 },
	{ 7, "FSNEXT()", (TOK_SUBFUNC_208<<8)+219, TARGET_VER36, 0 },
	{ 7, "FSETDTA(", (TOK_SUBFUNC_208<<8)+220, TARGET_VER36, 0 },
	{ 8, "FGETDTA()", (TOK_SUBFUNC_208<<8)+221, TARGET_VER36, 0 },
	{ 4, "FACT(", TOK_FACT, TARGET_VER36, 0 },
	{ 6, "FCHDIR(", (TOK_SUBFUNC_212<<8)+50, TARGET_VER373, 0 },
	{ 10, "FFDOPENDIR(", (TOK_SUBFUNC_212<<8)+51, TARGET_VER373, 0 },
	{ 6, "FDIRFD(", (TOK_SUBFUNC_212<<8)+52, TARGET_VER373, 0 },
	{ 8, "FCHOWN16(", (TOK_SUBFUNC_212<<8)+49, TARGET_VER373, 0 },
	{ 8, "FFSTAT64(", (TOK_SUBFUNC_212<<8)+48, TARGET_VER373, 0 },
	{ 7, "FSTAT64(", (TOK_SUBFUNC_212<<8)+47, TARGET_VER373, 0 },
	{ 6, "FREADV(", (TOK_SUBFUNC_212<<8)+44, TARGET_VER373, 0 },
	{ 7, "FWRITEV(", (TOK_SUBFUNC_212<<8)+45, TARGET_VER373, 0 },
	{ 7, "FFCHMOD(", (TOK_SUBFUNC_212<<8)+7, TARGET_VER373, 0 },
	{ 7, "FFCHOWN(", (TOK_SUBFUNC_212<<8)+8, TARGET_VER373, 0 },
	{ 5, "FSYNC(", (TOK_SUBFUNC_211<<8)+234, TARGET_VER373, 0 },
	{ 8, "FSYMLINK(", (TOK_SUBFUNC_211<<8)+199, TARGET_VER373, 0 },
	{ 5, "FLINK(", (TOK_SUBFUNC_211<<8)+198, TARGET_VER373, 0 },
	{ 6, "FEXIST(", (TOK_SUBFUNC_210<<8)+176, TARGET_VER371, 0 },
	{ 5, "FILES(", (TOK_SUBFUNC_210<<8)+192, TARGET_VER371, 0 },
	{ 8, "FILECOPY(", (TOK_SUBFUNC_210<<8)+152, TARGET_VER371, 0 },
	{ 7, "FPU882()", (TOK_SUBFUNC_208<<8)+246, TARGET_VER370, 0 },
	{ 6, "FXATTR(", (TOK_SUBFUNC_210<<8)+171, TARGET_VER371, 0 },
	{ 5, "FPIPE(", (TOK_SUBFUNC_210<<8)+134, TARGET_VER371, 0 },
	{ 5, "FPOLL(", (TOK_SUBFUNC_210<<8)+126, TARGET_VER371, 0 },
	{ 7, "FRENAME(", (TOK_SUBFUNC_209<<8)+111, TARGET_VER370, 0 },
	{ 7, "FDELETE(", (TOK_SUBFUNC_209<<8)+49, TARGET_VER370, 0 },
	{ 7, "FCREATE(", (TOK_SUBFUNC_209<<8)+47, TARGET_VER370, 0 },
	{ 6, "FCLOSE(", (TOK_SUBFUNC_209<<8)+44, TARGET_VER370, 0 },
	{ 6, "FWRITE(", (TOK_SUBFUNC_209<<8)+46, TARGET_VER370, 0 },
	{ 5, "FOPEN(", (TOK_SUBFUNC_209<<8)+43, TARGET_VER370, 0 },
	{ 5, "FREAD(", (TOK_SUBFUNC_209<<8)+45, TARGET_VER370, 0 },
	{ 5, "FSEEK(", (TOK_SUBFUNC_209<<8)+48, TARGET_VER370, 0 },
	{ 10, "FORM.KEYBD(", (TOK_SUBFUNC_210<<8)+205, TARGET_VER371, 0 },
	{ 10, "FORM_POPUP(", (TOK_SUBFUNC_209<<8)+160, TARGET_VER370, 0 },
	{ 12, "FSEL_EXINPUT(", (TOK_SUBFUNC_209<<8)+25, TARGET_VER370, 0 },
	{ 7, "FINSTAT(", (TOK_SUBFUNC_209<<8)+175, TARGET_VER370, 0 },
	{ 5, "FCNTL(", (TOK_SUBFUNC_209<<8)+177, TARGET_VER370, 0 },
	{ 7, "FSELECT(", (TOK_SUBFUNC_209<<8)+178, TARGET_VER370, 0 },
	{ 8, "FGETCHAR(", (TOK_SUBFUNC_209<<8)+83, TARGET_VER370, 0 },
	{ 8, "FPUTCHAR(", (TOK_SUBFUNC_209<<8)+84, TARGET_VER370, 0 },
	{ 7, "FDATIME(", (TOK_SUBFUNC_209<<8)+113, TARGET_VER370, 0 },
	{ 8, "FOUTSTAT(", (TOK_SUBFUNC_209<<8)+176, TARGET_VER370, 0 },
	{ 7, "FATTRIB(", (TOK_SUBFUNC_209<<8)+115, TARGET_VER370, 0 },
	{ 4, "FDUP(", (TOK_SUBFUNC_209<<8)+171, TARGET_VER370, 0 },
	{ 6, "FFORCE(", (TOK_SUBFUNC_209<<8)+172, TARGET_VER370, 0 },
	{ 6, "FCHMOD(", (TOK_SUBFUNC_209<<8)+254, TARGET_VER370, 0 },
	{ 6, "FCHOWN(", (TOK_SUBFUNC_210<<8)+144, TARGET_VER371, 0 },
	{ 6, "FLOPRD(", (TOK_SUBFUNC_209<<8)+213, TARGET_VER370, 0 },
	{ 6, "FLOPWR(", (TOK_SUBFUNC_209<<8)+214, TARGET_VER370, 0 },
	{ 7, "FLOPFMT(", (TOK_SUBFUNC_209<<8)+215, TARGET_VER370, 0 },
	{ 7, "FLOPVER(", (TOK_SUBFUNC_209<<8)+216, TARGET_VER370, 0 },
	{ 8, "FLOPRATE(", (TOK_SUBFUNC_209<<8)+217, TARGET_VER370, 0 },
	{ 5, "FLOCK(", (TOK_SUBFUNC_209<<8)+173, TARGET_VER370, 0 },
	{ 5, "F_INP(", (TOK_SUBFUNC_209<<8)+63, TARGET_VER370, 0 },
	{ 6, "F_INP&(", (TOK_SUBFUNC_209<<8)+64, TARGET_VER370, 0 },
	{ 6, "F_INP%(", (TOK_SUBFUNC_209<<8)+65, TARGET_VER370, 0 },
	{ 5, "F_OUT(", (TOK_SUBFUNC_209<<8)+60, TARGET_VER370, 0 },
	{ 6, "F_OUT&(", (TOK_SUBFUNC_209<<8)+61, TARGET_VER370, 0 },
	{ 6, "F_OUT%(", (TOK_SUBFUNC_209<<8)+62, TARGET_VER370, 0 },
	{ 6, "F_BGET(", (TOK_SUBFUNC_209<<8)+51, TARGET_VER370, 0 },
	{ 6, "F_BPUT(", (TOK_SUBFUNC_209<<8)+52, TARGET_VER370, 0 },
	{ 6, "F_OPEN(", (TOK_SUBFUNC_209<<8)+59, TARGET_VER370, 0 },
	{ 12, "F_LINE_INPUT(", (TOK_SUBFUNC_209<<8)+68, TARGET_VER370, 0 },
	{ 13, "F_LINE_OUTPUT(", (TOK_SUBFUNC_209<<8)+67, TARGET_VER370, 0 },
	{ 7, "F_PREAD(", (TOK_SUBFUNC_209<<8)+92, TARGET_VER370, TARGET_VER370 },
	{ 8, "F_PWRITE(", (TOK_SUBFUNC_209<<8)+91, TARGET_VER370, TARGET_VER370 },
	{ 7, "F_INPUT(", (TOK_SUBFUNC_209<<8)+90, TARGET_VER370, 0 },
	{ 8, "F_OUTPUT(", (TOK_SUBFUNC_209<<8)+89, TARGET_VER370, 0 },
	{ 5, "F_LOF(", (TOK_SUBFUNC_209<<8)+55, TARGET_VER370, 0 },
	{ 5, "F_LOC(", (TOK_SUBFUNC_209<<8)+54, TARGET_VER370, 0 },
	{ 5, "F_EOF(", (TOK_SUBFUNC_209<<8)+53, TARGET_VER370, 0 },
	{ 7, "F_BLOAD(", (TOK_SUBFUNC_209<<8)+69, TARGET_VER370, 0 },
	{ 7, "F_BSAVE(", (TOK_SUBFUNC_209<<8)+70, TARGET_VER370, 0 },
	{ 6, "F_SEEK(", (TOK_SUBFUNC_209<<8)+71, TARGET_VER370, 0 },
	{ 9, "F_RELSEEK(", (TOK_SUBFUNC_209<<8)+72, TARGET_VER370, 0 },
	{ 6, "F_LOAD(", (TOK_SUBFUNC_210<<8)+18, TARGET_VER370, TARGET_VER370 },
	{ 7, "F_CLOSE(", (TOK_SUBFUNC_210<<8)+119, TARGET_VER370, 0 },
	{ 9, "F_ENDSEEK(", (TOK_SUBFUNC_210<<8)+124, TARGET_VER371, 0 },
	{ 7, "FILELEN(", (TOK_SUBFUNC_210<<8)+127, TARGET_VER371, 0 },
	{ 7, "FSOCKET(", (TOK_SUBFUNC_210<<8)+35, TARGET_VER370, 0 },
	{ 11, "FSOCKETPAIR(", (TOK_SUBFUNC_210<<8)+36, TARGET_VER370, 0 },
	{ 7, "FACCEPT(", (TOK_SUBFUNC_210<<8)+37, TARGET_VER370, 0 },
	{ 8, "FCONNECT(", (TOK_SUBFUNC_210<<8)+38, TARGET_VER370, 0 },
	{ 5, "FBIND(", (TOK_SUBFUNC_210<<8)+39, TARGET_VER370, 0 },
	{ 7, "FLISTEN(", (TOK_SUBFUNC_210<<8)+40, TARGET_VER370, 0 },
	{ 8, "FRECVMSG(", (TOK_SUBFUNC_210<<8)+41, TARGET_VER370, 0 },
	{ 8, "FSENDMSG(", (TOK_SUBFUNC_210<<8)+42, TARGET_VER370, 0 },
	{ 9, "FRECVFROM(", (TOK_SUBFUNC_210<<8)+43, TARGET_VER370, 0 },
	{ 7, "FSENDTO(", (TOK_SUBFUNC_210<<8)+44, TARGET_VER370, 0 },
	{ 11, "FSETSOCKOPT(", (TOK_SUBFUNC_210<<8)+45, TARGET_VER370, 0 },
	{ 11, "FGETSOCKOPT(", (TOK_SUBFUNC_210<<8)+46, TARGET_VER370, 0 },
	{ 12, "FGETPEERNAME(", (TOK_SUBFUNC_210<<8)+47, TARGET_VER370, 0 },
	{ 12, "FGETSOCKNAME(", (TOK_SUBFUNC_210<<8)+48, TARGET_VER370, 0 },
	{ 9, "FSHUTDOWN(", (TOK_SUBFUNC_210<<8)+49, TARGET_VER370, 0 },
	{ 10, "FONT_INIT()", (TOK_SUBFUNC_210<<8)+89, TARGET_VER370, 0 },
	{ 11, "FONT_SELECT(", (TOK_SUBFUNC_210<<8)+90, TARGET_VER370, 0 },
	{ 9, "FREEFILE()", (TOK_SUBFUNC_210<<8)+5, TARGET_VER371, 0 },
	{ 9, "FMIDIPIPE(", (TOK_SUBFUNC_210<<8)+137, TARGET_VER371, 0 },
	{ 9, "FREADLINK(", (TOK_SUBFUNC_211<<8)+183, TARGET_VER372, 0 },
	{ 3, "FPU?", (TOK_SUBFUNC_210<<8)+251, TARGET_VER371, 0 },
	{ 4, "GOSUB", TOK_GOSUB_FUNC, TARGET_VER36, 0 },
	{ 3, "GOTO", TOK_GOTO_FUNC, TARGET_VER36, 0 },
	{ 1, "GB", (TOK_SUBFUNC_208<<8)+61, TARGET_VER36, 0 },
	{ 7, "GCONTRL(", (TOK_SUBFUNC_208<<8)+24, TARGET_VER36, 0 },
	{ 6, "GCONTRL", (TOK_SUBFUNC_208<<8)+25, TARGET_VER36, 0 },
	{ 6, "GEMDOS(", (TOK_SUBFUNC_208<<8)+87, TARGET_VER36, 0 },
	{ 6, "GINTIN(", (TOK_SUBFUNC_208<<8)+26, TARGET_VER36, 0 },
	{ 5, "GINTIN", (TOK_SUBFUNC_208<<8)+27, TARGET_VER36, 0 },
	{ 7, "GINTOUT(", (TOK_SUBFUNC_208<<8)+28, TARGET_VER36, 0 },
	{ 6, "GINTOUT", (TOK_SUBFUNC_208<<8)+29, TARGET_VER36, 0 },
	{ 6, "GLOBAL(", (TOK_SUBFUNC_208<<8)+250, TARGET_VER370, 0 },
	{ 5, "GLOBAL", (TOK_SUBFUNC_208<<8)+251, TARGET_VER370, 0 },
	{ 14, "GRAF_RUBBERBOX(", (TOK_SUBFUNC_208<<8)+162, TARGET_VER36, 0 },
	{ 12, "GRAF_DRAGBOX(", (TOK_SUBFUNC_208<<8)+163, TARGET_VER36, 0 },
	{ 12, "GRAF_MOVEBOX(", (TOK_SUBFUNC_208<<8)+164, TARGET_VER36, 0 },
	{ 12, "GRAF_GROWBOX(", (TOK_SUBFUNC_208<<8)+165, TARGET_VER36, 0 },
	{ 14, "GRAF_SHRINKBOX(", (TOK_SUBFUNC_208<<8)+166, TARGET_VER36, 0 },
	{ 13, "GRAF_WATCHBOX(", (TOK_SUBFUNC_208<<8)+167, TARGET_VER36, 0 },
	{ 13, "GRAF_SLIDEBOX(", (TOK_SUBFUNC_208<<8)+168, TARGET_VER36, 0 },
	{ 11, "GRAF_HANDLE(", (TOK_SUBFUNC_208<<8)+169, TARGET_VER36, 0 },
	{ 10, "GRAF_MOUSE(", (TOK_SUBFUNC_208<<8)+170, TARGET_VER36, 0 },
	{ 12, "GRAF_MKSTATE(", (TOK_SUBFUNC_208<<8)+171, TARGET_VER36, 0 },
	{ 4, "GDOS?", (TOK_SUBFUNC_208<<8)+104, TARGET_VER36, 0 },
	{ 7, "GETSIZE(", (TOK_SUBFUNC_208<<8)+239, TARGET_VER36, 0 },
	{ 2, "G~H", (TOK_SUBFUNC_210<<8)+242, TARGET_VER371, 0 },
	{ 2, "G~R", (TOK_SUBFUNC_210<<8)+243, TARGET_VER371, 0 },
	{ 9, "GETCOOKIE(", (TOK_SUBFUNC_208<<8)+252, TARGET_VER370, 0 },
	{ 6, "GMOUSEK", (TOK_SUBFUNC_208<<8)+247, TARGET_VER370, 0 },
	{ 6, "GMOUSEX", (TOK_SUBFUNC_208<<8)+248, TARGET_VER370, 0 },
	{ 6, "GMOUSEY", (TOK_SUBFUNC_208<<8)+249, TARGET_VER370, 0 },
	{ 16, "GRAF_MULTIRUBBER(", (TOK_SUBFUNC_209<<8)+168, TARGET_VER370, 0 },
	{ 4, "GPIO(", (TOK_SUBFUNC_209<<8)+37, TARGET_VER370, 0 },
	{ 7, "GETREZ()", (TOK_SUBFUNC_209<<8)+118, TARGET_VER370, 0 },
	{ 8, "GETTIME()", (TOK_SUBFUNC_209<<8)+109, TARGET_VER370, 0 },
	{ 6, "GETBPB(", (TOK_SUBFUNC_209<<8)+158, TARGET_VER370, 0 },
	{ 8, "GIACCESS(", (TOK_SUBFUNC_209<<8)+212, TARGET_VER370, 0 },
	{ 7, "GSTICK()", (TOK_SUBFUNC_209<<8)+74, TARGET_VER370, 0 },
	{ 7, "GSTRIG()", (TOK_SUBFUNC_209<<8)+75, TARGET_VER370, 0 },
	{ 6, "GETSTR(", (TOK_SUBFUNC_210<<8)+179, TARGET_VER371, 0 },
	{ 9, "GRAYSCALE(", (TOK_SUBFUNC_210<<8)+213, TARGET_VER371, 0 },
	{ 6, "GETMPB(", (TOK_SUBFUNC_212<<8)+0, TARGET_VER373, 0 },
	{ 4, "HEX$(", TOK_HEX1, TARGET_VER36, 0 },
	{ 4, "HIMEM", (TOK_SUBFUNC_208<<8)+30, TARGET_VER36, 0 },
	{ 7, "HINYBLE(", (TOK_SUBFUNC_210<<8)+195, TARGET_VER371, 0 },
	{ 6, "HIBYTE(", (TOK_SUBFUNC_210<<8)+196, TARGET_VER371, 0 },
	{ 6, "HIWORD(", (TOK_SUBFUNC_210<<8)+197, TARGET_VER371, 0 },
	{ 6, "HICARD(", (TOK_SUBFUNC_210<<8)+198, TARGET_VER371, 0 },
	{ 6, "HOUR24(", (TOK_SUBFUNC_210<<8)+218, TARGET_VER371, 0 },
	{ 6, "HOUR12(", (TOK_SUBFUNC_211<<8)+3, TARGET_VER371, 0 },
	{ 8, "HARDWARE?", (TOK_SUBFUNC_208<<8)+254, TARGET_VER370, TARGET_VER370 },
	{ 1, "IF", TOK_IF, TARGET_VER36, 0 },
	{ 2, "IMP", TOK_IMP, TARGET_VER36, 0 },
	{ 3, "IMP(", (TOK_SUBFUNC_208<<8)+9, TARGET_VER36, 0 },
	{ 5, "INKEY$", TOK_INKEY, TARGET_VER36, 0 },
	{ 6, "INPUT$(", TOK_INPUT1, TARGET_VER36, 0 },
	{ 8, "INPUTBOX(", (TOK_SUBFUNC_210<<8)+22, TARGET_VER371, 0 },
	{ 10, "INPUTRADIO(", (TOK_SUBFUNC_211<<8)+184, TARGET_VER372, 0 },
	{ 4, "INP(#", (TOK_SUBFUNC_208<<8)+77, TARGET_VER36, 0 },
	{ 3, "INP(", (TOK_SUBFUNC_208<<8)+74, TARGET_VER36, 0 },
	{ 5, "INP&(#", (TOK_SUBFUNC_208<<8)+224, TARGET_VER36, 0 },
	{ 4, "INP&(", (TOK_SUBFUNC_208<<8)+223, TARGET_VER36, 0 },
	{ 5, "INP%(#", (TOK_SUBFUNC_208<<8)+226, TARGET_VER36, 0 },
	{ 4, "INP%(", (TOK_SUBFUNC_208<<8)+225, TARGET_VER36, 0 },
	{ 4, "INP?(", (TOK_SUBFUNC_208<<8)+93, TARGET_VER36, 0 },
	{ 4, "INPUT", TOK_INPUT3, TARGET_VER36, 0 },
	{ 5, "INSTR(", (TOK_SUBFUNC_208<<8)+68, TARGET_VER36, 0 },
	{ 3, "INT(", TOK_INT, TARGET_VER36, 0 },
	{ 3, "IBOX", TOK_IBOX, TARGET_VER36, 0 },
	{ 5, "INTIN(", (TOK_SUBFUNC_208<<8)+32, TARGET_VER36, 0 },
	{ 4, "INTIN", (TOK_SUBFUNC_208<<8)+33, TARGET_VER36, 0 },
	{ 6, "INTOUT(", (TOK_SUBFUNC_208<<8)+34, TARGET_VER36, 0 },
	{ 5, "INTOUT", (TOK_SUBFUNC_208<<8)+35, TARGET_VER36, 0 },
	{ 3, "INT{", (TOK_SUBFUNC_208<<8)+114, TARGET_VER36, 0 },
	{ 6, "INPAUX$", TOK_INPAUX, TARGET_VER36, 0 },
	{ 6, "INPMID$", TOK_INPMID, TARGET_VER36, 0 },
	{ 10, "INDEXCOUNT(", (TOK_SUBFUNC_210<<8)+30, TARGET_VER371, 0 },
	{ 7, "ICONBLK(", (TOK_SUBFUNC_210<<8)+209, TARGET_VER371, TARGET_VER371 },
	{ 8, "INITMOUS(", (TOK_SUBFUNC_211<<8)+182, TARGET_VER372, 0 },
	{ 5, "IOREC(", (TOK_SUBFUNC_209<<8)+209, TARGET_VER370, 0 },
	{ 6, "IKBDWS(", (TOK_SUBFUNC_209<<8)+210, TARGET_VER370, 0 },
	{ 7, "ISASCII(", (TOK_SUBFUNC_209<<8)+98, TARGET_VER371, 0 },
	{ 7, "ISBLANK(", (TOK_SUBFUNC_210<<8)+153, TARGET_VER371, 0 },
	{ 7, "ISCNTRL(", (TOK_SUBFUNC_210<<8)+154, TARGET_VER371, 0 },
	{ 7, "ISPRINT(", (TOK_SUBFUNC_210<<8)+155, TARGET_VER371, 0 },
	{ 7, "ISSPACE(", (TOK_SUBFUNC_210<<8)+156, TARGET_VER371, 0 },
	{ 8, "IB_PMASK(", (TOK_SUBFUNC_211<<8)+142, TARGET_VER372, 0 },
	{ 8, "IB_PDATA(", (TOK_SUBFUNC_211<<8)+143, TARGET_VER372, 0 },
	{ 8, "IB_PTEXT(", (TOK_SUBFUNC_211<<8)+144, TARGET_VER372, 0 },
	{ 7, "IB_CHAR(", (TOK_SUBFUNC_211<<8)+145, TARGET_VER372, 0 },
	{ 8, "IB_XCHAR(", (TOK_SUBFUNC_211<<8)+146, TARGET_VER372, 0 },
	{ 8, "IB_YCHAR(", (TOK_SUBFUNC_211<<8)+147, TARGET_VER372, 0 },
	{ 8, "IB_XICON(", (TOK_SUBFUNC_211<<8)+148, TARGET_VER372, 0 },
	{ 8, "IB_YICON(", (TOK_SUBFUNC_211<<8)+149, TARGET_VER372, 0 },
	{ 8, "IB_WICON(", (TOK_SUBFUNC_211<<8)+150, TARGET_VER372, 0 },
	{ 8, "IB_HICON(", (TOK_SUBFUNC_211<<8)+151, TARGET_VER372, 0 },
	{ 8, "IB_XTEXT(", (TOK_SUBFUNC_211<<8)+152, TARGET_VER372, 0 },
	{ 8, "IB_YTEXT(", (TOK_SUBFUNC_211<<8)+153, TARGET_VER372, 0 },
	{ 8, "IB_WTEXT(", (TOK_SUBFUNC_211<<8)+154, TARGET_VER372, 0 },
	{ 8, "IB_HTEXT(", (TOK_SUBFUNC_211<<8)+155, TARGET_VER372, 0 },
	{ 9, "IB_FCOLOR(", (TOK_SUBFUNC_211<<8)+156, TARGET_VER372, 0 },
	{ 9, "IB_BCOLOR(", (TOK_SUBFUNC_211<<8)+157, TARGET_VER372, 0 },
	{ 9, "IB_LETTER(", (TOK_SUBFUNC_211<<8)+158, TARGET_VER372, 0 },
	{ 4, "JOIN(", (TOK_SUBFUNC_210<<8)+178, TARGET_VER371, 0 },
	{ 6, "JOYPAD(", (TOK_SUBFUNC_209<<8)+93, TARGET_VER370, 0 },
	{ 7, "JDISINT(", (TOK_SUBFUNC_209<<8)+224, TARGET_VER370, 0 },
	{ 8, "JENABINT(", (TOK_SUBFUNC_209<<8)+225, TARGET_VER370, 0 },
	{ 11, "JPEGD_INIT()", (TOK_SUBFUNC_211<<8)+5, TARGET_VER372, 0 },
	{ 16, "JPEGD_OPENDRIVER(", (TOK_SUBFUNC_211<<8)+6, TARGET_VER372, 0 },
	{ 17, "JPEGD_CLOSEDRIVER(", (TOK_SUBFUNC_211<<8)+7, TARGET_VER372, 0 },
	{ 20, "JPEGD_GETSTRUCTSIZE()", (TOK_SUBFUNC_211<<8)+8, TARGET_VER372, 0 },
	{ 18, "JPEGD_GETIMAGEINFO(", (TOK_SUBFUNC_211<<8)+9, TARGET_VER372, 0 },
	{ 18, "JPEGD_GETIMAGESIZE(", (TOK_SUBFUNC_211<<8)+10, TARGET_VER372, 0 },
	{ 17, "JPEGD_DECODEIMAGE(", (TOK_SUBFUNC_211<<8)+11, TARGET_VER372, 0 },
	{ 6, "KEYTBL(", (TOK_SUBFUNC_209<<8)+26, TARGET_VER370, 0 },
	{ 7, "KBSHIFT(", (TOK_SUBFUNC_209<<8)+10, TARGET_VER370, 0 },
	{ 2, "KEY", TOK_KEY, TARGET_VER36, 0 },
	{ 3, "KILL", TOK_KILL, TARGET_VER36, 0 },
	{ 6, "KBRATE(", (TOK_SUBFUNC_209<<8)+203, TARGET_VER370, 0 },
	{ 9, "KBDVBASE()", (TOK_SUBFUNC_209<<8)+207, TARGET_VER370, 0 },
	{ 5, "LEFT$(", TOK_LEFT1, TARGET_VER36, 0 },
	{ 3, "LEN(", (TOK_SUBFUNC_208<<8)+66, TARGET_VER36, 0 },
	{ 4, "LOC(#", (TOK_SUBFUNC_208<<8)+80, TARGET_VER36, 0 },
	{ 3, "LOC(", (TOK_SUBFUNC_208<<8)+80, TARGET_VER36, 0 },
	{ 4, "LOF(#", (TOK_SUBFUNC_208<<8)+79, TARGET_VER36, 0 },
	{ 3, "LOF(", (TOK_SUBFUNC_208<<8)+79, TARGET_VER36, 0 },
	{ 3, "LOG(", TOK_LOG, TARGET_VER36, 0 },
	{ 5, "LOG10(", TOK_LOG10, TARGET_VER36, 0 },
	{ 5, "LPEEK(", (TOK_SUBFUNC_208<<8)+65, TARGET_VER36, 0 },
	{ 1, "L:", TOK_LONGARG, TARGET_VER36, 0 },
	{ 4, "LPOS(", (TOK_SUBFUNC_208<<8)+91, TARGET_VER36, 0 },
	{ 4, "LONG{", (TOK_SUBFUNC_208<<8)+113, TARGET_VER36, 0 },
	{ 2, "L~A", (TOK_SUBFUNC_208<<8)+212, TARGET_VER36, 0 },
	{ 4, "LPENX", (TOK_SUBFUNC_208<<8)+231, TARGET_VER36, 0 },
	{ 4, "LPENY", (TOK_SUBFUNC_208<<8)+232, TARGET_VER36, 0 },
	{ 4, "LEAP(", (TOK_SUBFUNC_211<<8)+0, TARGET_VER371, 0 },
	{ 7, "LOADSTR(", (TOK_SUBFUNC_210<<8)+191, TARGET_VER371, 0 },
	{ 7, "LOADMEM(", (TOK_SUBFUNC_210<<8)+18, TARGET_VER371, 0 },
	{ 6, "LCASE$(", TOK_LCASE, TARGET_VER370, 0 },
	{ 6, "LTRIM$(", TOK_LTRIM, TARGET_VER370, 0 },
	{ 6, "LOWER$(", TOK_LOWER, TARGET_VER370, 0 },
	{ 8, "LOCKSND()", (TOK_SUBFUNC_209<<8)+27, TARGET_VER370, 0 },
	{ 8, "LOGBASE()", (TOK_SUBFUNC_209<<8)+119, TARGET_VER370, 0 },
	{ 6, "LRWABS(", (TOK_SUBFUNC_209<<8)+251, TARGET_VER370, 0 },
	{ 9, "LDG_INIT()", (TOK_SUBFUNC_210<<8)+50, TARGET_VER370, 0 },
	{ 8, "LDG_OPEN(", (TOK_SUBFUNC_210<<8)+51, TARGET_VER370, 0 },
	{ 8, "LDG_FIND(", (TOK_SUBFUNC_210<<8)+52, TARGET_VER370, 0 },
	{ 9, "LDG_CLOSE(", (TOK_SUBFUNC_210<<8)+53, TARGET_VER370, 0 },
	{ 11, "LDG_LIBPATH(", (TOK_SUBFUNC_210<<8)+54, TARGET_VER370, 0 },
	{ 10, "LDG_ERROR()", (TOK_SUBFUNC_210<<8)+55, TARGET_VER370, 0 },
	{ 3, "MAX(", TOK_MAX, TARGET_VER36, 0 },
	{ 4, "MID$(", TOK_MID2, TARGET_VER36, 0 },
	{ 3, "MIN(", TOK_MIN, TARGET_VER36, 0 },
	{ 4, "MKD$(", TOK_MKD, TARGET_VER36, 0 },
	{ 4, "MKF$(", TOK_MKF, TARGET_VER36, 0 },
	{ 4, "MKI$(", TOK_MKI, TARGET_VER36, 0 },
	{ 4, "MKL$(", TOK_MKL, TARGET_VER36, 0 },
	{ 4, "MKS$(", TOK_MKS, TARGET_VER36, 0 },
	{ 2, "MOD", TOK_MOD, TARGET_VER36, 0 },
	{ 3, "MOD(", (TOK_SUBFUNC_208<<8)+4, TARGET_VER36, 0 },
	{ 8, "MENU_BAR(", (TOK_SUBFUNC_208<<8)+143, TARGET_VER36, 0 },
	{ 11, "MENU_ICHECK(", (TOK_SUBFUNC_208<<8)+144, TARGET_VER36, 0 },
	{ 12, "MENU_IENABLE(", (TOK_SUBFUNC_208<<8)+145, TARGET_VER36, 0 },
	{ 12, "MENU_TNORMAL(", (TOK_SUBFUNC_208<<8)+146, TARGET_VER36, 0 },
	{ 9, "MENU_TEXT(", (TOK_SUBFUNC_208<<8)+147, TARGET_VER36, 0 },
	{ 13, "MENU_REGISTER(", (TOK_SUBFUNC_208<<8)+148, TARGET_VER36, 0 },
	{ 9, "MENU.TEXT(", (TOK_SUBFUNC_210<<8)+6, TARGET_VER370, 0 },
	{ 10, "MENU_POPUP(", (TOK_SUBFUNC_209<<8)+163, TARGET_VER370, 0 },
	{ 11, "MENU_ISTART(", (TOK_SUBFUNC_209<<8)+162, TARGET_VER370, 0 },
	{ 11, "MENU_ATTACH(", (TOK_SUBFUNC_209<<8)+161, TARGET_VER370, 0 },
	{ 13, "MENU_SETTINGS(", (TOK_SUBFUNC_209<<8)+164, TARGET_VER370, 0 },
	{ 5, "MOUSEK", (TOK_SUBFUNC_208<<8)+60, TARGET_VER36, 0 },
	{ 5, "MOUSEX", (TOK_SUBFUNC_208<<8)+58, TARGET_VER36, 0 },
	{ 5, "MOUSEY", (TOK_SUBFUNC_208<<8)+59, TARGET_VER36, 0 },
	{ 4, "MENU(", (TOK_SUBFUNC_208<<8)+92, TARGET_VER36, 0 },
	{ 3, "MENU", TOK_MENU, TARGET_VER36, 0 },
	{ 6, "MESSAGE", TOK_MESSAGE, TARGET_VER36, 0 },
	{ 3, "MUL(", (TOK_SUBFUNC_208<<8)+0, TARGET_VER36, 0 },
	{ 6, "MALLOC(", (TOK_SUBFUNC_208<<8)+184, TARGET_VER36, 0 },
	{ 5, "MFREE(", (TOK_SUBFUNC_208<<8)+185, TARGET_VER36, 0 },
	{ 7, "MSHRINK(", (TOK_SUBFUNC_208<<8)+186, TARGET_VER36, 0 },
	{ 7, "M_ALLOC(", (TOK_SUBFUNC_209<<8)+66, TARGET_VER370, TARGET_VER370 },
	{ 6, "MFPINT(", (TOK_SUBFUNC_212<<8)+2, TARGET_VER373, 0 },
	{ 7, "MADDALT(", (TOK_SUBFUNC_212<<8)+1, TARGET_VER373, 0 },
	{ 6, "MDPEEK(", (TOK_SUBFUNC_211<<8)+211, TARGET_VER373, 0 },
	{ 6, "MLPEEK(", (TOK_SUBFUNC_211<<8)+212, TARGET_VER373, 0 },
	{ 8, "MERIDIEM(", (TOK_SUBFUNC_211<<8)+4, TARGET_VER371, 0 },
	{ 6, "MINUTE(", (TOK_SUBFUNC_210<<8)+219, TARGET_VER371, 0 },
	{ 5, "MONTH(", (TOK_SUBFUNC_210<<8)+216, TARGET_VER371, 0 },
	{ 8, "MEMBTST|(", (TOK_SUBFUNC_210<<8)+141, TARGET_VER371, 0 },
	{ 8, "MEMBTST&(", (TOK_SUBFUNC_210<<8)+142, TARGET_VER371, 0 },
	{ 8, "MEMBTST%(", (TOK_SUBFUNC_210<<8)+143, TARGET_VER371, 0 },
	{ 7, "MXALLOC(", (TOK_SUBFUNC_209<<8)+9, TARGET_VER370, 0 },
	{ 7, "MEDIACH(", (TOK_SUBFUNC_209<<8)+157, TARGET_VER370, 0 },
	{ 6, "MIDIWS(", (TOK_SUBFUNC_209<<8)+211, TARGET_VER370, 0 },
	{ 7, "MIRROR|(", (TOK_SUBFUNC_210<<8)+11, TARGET_VER370, 0 },
	{ 7, "MIRROR&(", (TOK_SUBFUNC_210<<8)+12, TARGET_VER370, 0 },
	{ 6, "MIRROR(", (TOK_SUBFUNC_210<<8)+13, TARGET_VER370, 0 },
	{ 7, "MIRROR3(", (TOK_SUBFUNC_210<<8)+14, TARGET_VER36, 0 },
	{ 7, "MIRROR$(", TOK_MIRROR, TARGET_VER370, 0 },
	{ 4, "MAKE(", (TOK_SUBFUNC_210<<8)+140, TARGET_VER371, 0 },
	{ 5, "MAKE|(", (TOK_SUBFUNC_210<<8)+118, TARGET_VER371, 0 },
	{ 5, "MAKE&(", (TOK_SUBFUNC_210<<8)+116, TARGET_VER371, 0 },
	{ 5, "MAKE%(", (TOK_SUBFUNC_210<<8)+117, TARGET_VER371, 0 },
	{ 7, "MACCESS(", (TOK_SUBFUNC_210<<8)+172, TARGET_VER371, 0 },
	{ 9, "MVALIDATE(", (TOK_SUBFUNC_210<<8)+173, TARGET_VER371, 0 },
	{ 6, "MROUND(", (TOK_SUBFUNC_210<<8)+9, TARGET_VER371, 0 },
	{ 3, "MSG(", (TOK_SUBFUNC_210<<8)+193, TARGET_VER371, 0 },
	{ 2, "MSG", (TOK_SUBFUNC_210<<8)+194, TARGET_VER371, 0 },
	{ 4, "M68K?", (TOK_SUBFUNC_210<<8)+226, TARGET_VER371, 0 },
	{ 9, "MULTITASK?", (TOK_SUBFUNC_211<<8)+214, TARGET_VER373, 0 },
	{ 3, "NEXT", TOK_NEXT, TARGET_VER36, 0 },
	{ 2, "NOT", TOK_UNOT, TARGET_VER36, 0 },
	{ 3, "NULL", TOK_NULL, TARGET_VER370, 0 },
	{ 5, "NYBLE(", (TOK_SUBFUNC_210<<8)+139, TARGET_VER371, 0 },
	{ 7, "NETWORK?", (TOK_SUBFUNC_210<<8)+27, TARGET_VER371, 0 },
	{ 9, "NVMACCESS(", (TOK_SUBFUNC_209<<8)+208, TARGET_VER370, 0 },
	{ 11, "NEAREST_RGB(", (TOK_SUBFUNC_210<<8)+212, TARGET_VER371, 0 },
	{ 3, "OBOX", TOK_OBOX, TARGET_VER36, 0 },
	{ 4, "OCT$(", TOK_OCT1, TARGET_VER36, 0 },
	{ 3, "ODD(", (TOK_SUBFUNC_208<<8)+102, TARGET_VER36, 0 },
	{ 8, "OFFGIBIT(", (TOK_SUBFUNC_209<<8)+221, TARGET_VER370, 0 },
	{ 5, "OFFSET", TOK_OFFSET, TARGET_VER36, 0 },
	{ 2, "OFF", TOK_OFF, TARGET_VER36, 0 },
	{ 1, "OR", TOK_OR, TARGET_VER36, 0 },
	{ 2, "OR(", (TOK_SUBFUNC_208<<8)+6, TARGET_VER36, 0 },
	{ 4, "OUT?(", (TOK_SUBFUNC_208<<8)+94, TARGET_VER36, 0 },
	{ 8, "OBJC_ADD(", (TOK_SUBFUNC_208<<8)+149, TARGET_VER36, 0 },
	{ 11, "OBJC_DELETE(", (TOK_SUBFUNC_208<<8)+150, TARGET_VER36, 0 },
	{ 9, "OBJC_DRAW(", (TOK_SUBFUNC_208<<8)+151, TARGET_VER36, 0 },
	{ 9, "OBJC_FIND(", (TOK_SUBFUNC_208<<8)+152, TARGET_VER36, 0 },
	{ 11, "OBJC_OFFSET(", (TOK_SUBFUNC_208<<8)+153, TARGET_VER36, 0 },
	{ 10, "OBJC_ORDER(", (TOK_SUBFUNC_208<<8)+154, TARGET_VER36, 0 },
	{ 9, "OBJC_EDIT(", (TOK_SUBFUNC_208<<8)+155, TARGET_VER36, 0 },
	{ 11, "OBJC_CHANGE(", (TOK_SUBFUNC_208<<8)+156, TARGET_VER36, 0 },
	{ 10, "OBJC_XFIND(", (TOK_SUBFUNC_209<<8)+165, TARGET_VER370, 0 },
	{ 11, "OBJC_SYSVAR(", (TOK_SUBFUNC_209<<8)+24, TARGET_VER370, 0 },
	{ 6, "OB_ADR(", (TOK_SUBFUNC_208<<8)+191, TARGET_VER36, 0 },
	{ 7, "OB_NEXT(", (TOK_SUBFUNC_208<<8)+192, TARGET_VER36, 0 },
	{ 7, "OB_HEAD(", (TOK_SUBFUNC_208<<8)+193, TARGET_VER36, 0 },
	{ 7, "OB_TAIL(", (TOK_SUBFUNC_208<<8)+194, TARGET_VER36, 0 },
	{ 7, "OB_TYPE(", (TOK_SUBFUNC_208<<8)+195, TARGET_VER36, 0 },
	{ 8, "OB_FLAGS(", (TOK_SUBFUNC_208<<8)+196, TARGET_VER36, 0 },
	{ 8, "OB_STATE(", (TOK_SUBFUNC_208<<8)+197, TARGET_VER36, 0 },
	{ 7, "OB_SPEC(", (TOK_SUBFUNC_208<<8)+198, TARGET_VER36, 0 },
	{ 4, "OB_X(", (TOK_SUBFUNC_208<<8)+199, TARGET_VER36, 0 },
	{ 4, "OB_Y(", (TOK_SUBFUNC_208<<8)+200, TARGET_VER36, 0 },
	{ 4, "OB_W(", (TOK_SUBFUNC_208<<8)+201, TARGET_VER36, 0 },
	{ 4, "OB_H(", (TOK_SUBFUNC_208<<8)+202, TARGET_VER36, 0 },
	{ 8, "OB.STATE(", (TOK_SUBFUNC_210<<8)+19, TARGET_VER370, 0 },
	{ 8, "OB.FLAGS(", (TOK_SUBFUNC_210<<8)+20, TARGET_VER370, 0 },
	{ 11, "OB_SELECTED(", (TOK_SUBFUNC_210<<8)+21, TARGET_VER370, TARGET_VER370 },
	{ 10, "OB_CROSSED(", (TOK_SUBFUNC_210<<8)+22, TARGET_VER370, TARGET_VER370 },
	{ 10, "OB_CHECKED(", (TOK_SUBFUNC_210<<8)+23, TARGET_VER370, TARGET_VER370 },
	{ 11, "OB_DISABLED(", (TOK_SUBFUNC_210<<8)+24, TARGET_VER370, TARGET_VER370 },
	{ 13, "OB_SELECTABLE(", (TOK_SUBFUNC_210<<8)+25, TARGET_VER370, TARGET_VER370 },
	{ 10, "OB_DEFAULT(", (TOK_SUBFUNC_210<<8)+26, TARGET_VER370, TARGET_VER370 },
	{ 7, "OB_EXIT(", (TOK_SUBFUNC_210<<8)+27, TARGET_VER370, TARGET_VER370 },
	{ 11, "OB_EDITABLE(", (TOK_SUBFUNC_210<<8)+28, TARGET_VER370, TARGET_VER370 },
	{ 10, "OB_RBUTTON(", (TOK_SUBFUNC_210<<8)+29, TARGET_VER370, TARGET_VER370 },
	{ 9, "OB_LASTOB(", (TOK_SUBFUNC_210<<8)+30, TARGET_VER370, TARGET_VER370 },
	{ 12, "OB_TOUCHEXIT(", (TOK_SUBFUNC_210<<8)+31, TARGET_VER370, TARGET_VER370 },
	{ 11, "OB_HIDETREE(", (TOK_SUBFUNC_210<<8)+32, TARGET_VER370, TARGET_VER370 },
	{ 10, "OB.RBUTTON(", (TOK_SUBFUNC_210<<8)+33, TARGET_VER370, TARGET_VER370 },
	{ 8, "OB_RADIO(", (TOK_SUBFUNC_210<<8)+33, TARGET_VER371, 0 },
	{ 8, "OB_TEXT$(", TOK_OB_TEXT, TARGET_VER370, 0 },
	{ 7, "ONGIBIT(", (TOK_SUBFUNC_209<<8)+220, TARGET_VER370, 0 },
	{ 11, "OB_SELECTED(", (TOK_SUBFUNC_211<<8)+88, TARGET_VER372, 0 },
	{ 10, "OB_CROSSED(", (TOK_SUBFUNC_211<<8)+89, TARGET_VER372, 0 },
	{ 10, "OB_CHECKED(", (TOK_SUBFUNC_211<<8)+90, TARGET_VER372, 0 },
	{ 11, "OB_DISABLED(", (TOK_SUBFUNC_211<<8)+91, TARGET_VER372, 0 },
	{ 11, "OB_OUTLINED(", (TOK_SUBFUNC_211<<8)+92, TARGET_VER372, 0 },
	{ 11, "OB_SHADOWED(", (TOK_SUBFUNC_211<<8)+93, TARGET_VER372, 0 },
	{ 11, "OB_WHITEBAK(", (TOK_SUBFUNC_211<<8)+94, TARGET_VER372, 0 },
	{ 13, "OB_SELECTABLE(", (TOK_SUBFUNC_211<<8)+96, TARGET_VER372, 0 },
	{ 10, "OB_DEFAULT(", (TOK_SUBFUNC_211<<8)+97, TARGET_VER372, 0 },
	{ 7, "OB_EXIT(", (TOK_SUBFUNC_211<<8)+98, TARGET_VER372, 0 },
	{ 11, "OB_EDITABLE(", (TOK_SUBFUNC_211<<8)+99, TARGET_VER372, 0 },
	{ 10, "OB_RBUTTON(", (TOK_SUBFUNC_211<<8)+100, TARGET_VER372, 0 },
	{ 9, "OB_LASTOB(", (TOK_SUBFUNC_211<<8)+101, TARGET_VER372, 0 },
	{ 12, "OB_TOUCHEXIT(", (TOK_SUBFUNC_211<<8)+102, TARGET_VER372, 0 },
	{ 11, "OB_HIDETREE(", (TOK_SUBFUNC_211<<8)+103, TARGET_VER372, 0 },
	{ 11, "OB_INDIRECT(", (TOK_SUBFUNC_211<<8)+104, TARGET_VER372, 0 },
	{ 10, "OB_FL3DIND(", (TOK_SUBFUNC_211<<8)+105, TARGET_VER372, 0 },
	{ 10, "OB_FL3DACT(", (TOK_SUBFUNC_211<<8)+106, TARGET_VER372, 0 },
	{ 10, "OB_SUBMENU(", (TOK_SUBFUNC_211<<8)+107, TARGET_VER372, 0 },
	{ 10, "OB_FL3DBAK(", (TOK_SUBFUNC_211<<8)+109, TARGET_VER372, 0 },
	{ 7, "OB_XYWH(", (TOK_SUBFUNC_211<<8)+195, TARGET_VER373, 0 },
	{ 4, "PEEK(", (TOK_SUBFUNC_208<<8)+63, TARGET_VER36, 0 },
	{ 7, "PIXEL32(", (TOK_SUBFUNC_211<<8)+189, TARGET_VER373, 0 },
	{ 7, "PIXEL24(", (TOK_SUBFUNC_211<<8)+185, TARGET_VER373, 0 },
	{ 7, "PIXEL16(", (TOK_SUBFUNC_211<<8)+190, TARGET_VER373, 0 },
	{ 7, "PIXEL15(", (TOK_SUBFUNC_211<<8)+196, TARGET_VER373, 0 },
	{ 7, "PIXEL8C(", (TOK_SUBFUNC_211<<8)+206, TARGET_VER373, 0 },
	{ 7, "PIXEL8P(", (TOK_SUBFUNC_211<<8)+208, TARGET_VER373, 0 },
	{ 7, "PIXEL4P(", (TOK_SUBFUNC_211<<8)+209, TARGET_VER373, 0 },
	{ 7, "PIXEL2P(", (TOK_SUBFUNC_211<<8)+210, TARGET_VER373, 0 },
	{ 7, "PIXEL1M(", (TOK_SUBFUNC_211<<8)+207, TARGET_VER373, 0 },
	{ 1, "PI", TOK_PI, TARGET_VER36, 0 },
	{ 5, "POINT(", (TOK_SUBFUNC_208<<8)+72, TARGET_VER36, 0 },
	{ 3, "POS(", (TOK_SUBFUNC_208<<8)+90, TARGET_VER36, 0 },
	{ 5, "PTSIN(", (TOK_SUBFUNC_208<<8)+36, TARGET_VER36, 0 },
	{ 4, "PTSIN", (TOK_SUBFUNC_208<<8)+37, TARGET_VER36, 0 },
	{ 6, "PTSOUT(", (TOK_SUBFUNC_208<<8)+38, TARGET_VER36, 0 },
	{ 5, "PTSOUT", (TOK_SUBFUNC_208<<8)+39, TARGET_VER36, 0 },
	{ 4, "PTST(", (TOK_SUBFUNC_208<<8)+43, TARGET_VER36, 0 },
	{ 4, "PRED(", (TOK_SUBFUNC_208<<8)+97, TARGET_VER36, 0 },
	{ 4, "PADX(", (TOK_SUBFUNC_208<<8)+228, TARGET_VER36, 0 },
	{ 4, "PADY(", (TOK_SUBFUNC_208<<8)+229, TARGET_VER36, 0 },
	{ 4, "PADT(", (TOK_SUBFUNC_208<<8)+230, TARGET_VER36, 0 },
	{ 5, "PTERM(", (TOK_SUBFUNC_212<<8)+43, TARGET_VER373, 0 },
	{ 7, "PTERM0()", (TOK_SUBFUNC_212<<8)+42, TARGET_VER373, 0 },
	{ 10, "PSEMAPHORE(", (TOK_SUBFUNC_212<<8)+37, TARGET_VER373, 0 },
	{ 9, "PSETREUID(", (TOK_SUBFUNC_212<<8)+35, TARGET_VER373, 0 },
	{ 9, "PSETREGID(", (TOK_SUBFUNC_212<<8)+36, TARGET_VER373, 0 },
	{ 9, "PGETEGID()", (TOK_SUBFUNC_212<<8)+33, TARGET_VER373, 0 },
	{ 8, "PSETEGID(", (TOK_SUBFUNC_212<<8)+34, TARGET_VER373, 0 },
	{ 9, "PGETEUID()", (TOK_SUBFUNC_212<<8)+31, TARGET_VER373, 0 },
	{ 8, "PSETEUID(", (TOK_SUBFUNC_212<<8)+32, TARGET_VER373, 0 },
	{ 9, "PGETAUID()", (TOK_SUBFUNC_212<<8)+29, TARGET_VER373, 0 },
	{ 8, "PSETAUID(", (TOK_SUBFUNC_212<<8)+30, TARGET_VER373, 0 },
	{ 10, "PGETGROUPS(", (TOK_SUBFUNC_212<<8)+27, TARGET_VER373, 0 },
	{ 10, "PSETGROUPS(", (TOK_SUBFUNC_212<<8)+28, TARGET_VER373, 0 },
	{ 9, "PGETPGRP()", (TOK_SUBFUNC_212<<8)+25, TARGET_VER373, 0 },
	{ 8, "PSETPGRP(", (TOK_SUBFUNC_212<<8)+26, TARGET_VER373, 0 },
	{ 8, "PUNTAES()", (TOK_SUBFUNC_212<<8)+4, TARGET_VER373, 0 },
	{ 9, "PSIGPAUSE(", (TOK_SUBFUNC_211<<8)+230, TARGET_VER373, 0 },
	{ 10, "PSIGACTION(", (TOK_SUBFUNC_211<<8)+231, TARGET_VER373, 0 },
	{ 6, "PAUSE()", (TOK_SUBFUNC_211<<8)+228, TARGET_VER373, 0 },
	{ 12, "PSIGPENDING()", (TOK_SUBFUNC_211<<8)+229, TARGET_VER373, 0 },
	{ 9, "PSIGBLOCK(", (TOK_SUBFUNC_211<<8)+224, TARGET_VER373, 0 },
	{ 11, "PSIGSETMASK(", (TOK_SUBFUNC_211<<8)+225, TARGET_VER373, 0 },
	{ 5, "POPUP(", (TOK_SUBFUNC_210<<8)+125, TARGET_VER371, 0 },
	{ 7, "PSIGNAL(", (TOK_SUBFUNC_210<<8)+190, TARGET_VER371, 0 },
	{ 5, "PKILL(", (TOK_SUBFUNC_210<<8)+186, TARGET_VER371, 0 },
	{ 5, "PREAD(", (TOK_SUBFUNC_209<<8)+92, TARGET_VER371, 0 },
	{ 6, "PWRITE(", (TOK_SUBFUNC_209<<8)+91, TARGET_VER371, 0 },
	{ 5, "PNICE(", (TOK_SUBFUNC_210<<8)+145, TARGET_VER371, 0 },
	{ 7, "PRENICE(", (TOK_SUBFUNC_210<<8)+146, TARGET_VER371, 0 },
	{ 9, "PGETPPID()", (TOK_SUBFUNC_210<<8)+147, TARGET_VER371, 0 },
	{ 7, "PRUSAGE(", (TOK_SUBFUNC_210<<8)+135, TARGET_VER371, 0 },
	{ 8, "PGETPID()", (TOK_SUBFUNC_210<<8)+128, TARGET_VER371, 0 },
	{ 7, "PSYSCTL(", (TOK_SUBFUNC_209<<8)+180, TARGET_VER370, 0 },
	{ 7, "PDOMAIN(", (TOK_SUBFUNC_209<<8)+17, TARGET_VER370, 0 },
	{ 5, "PEXEC(", (TOK_SUBFUNC_209<<8)+16, TARGET_VER370, 0 },
	{ 9, "PHYSBASE()", (TOK_SUBFUNC_209<<8)+120, TARGET_VER370, 0 },
	{ 7, "PROTOBT(", (TOK_SUBFUNC_209<<8)+226, TARGET_VER370, 0 },
	{ 6, "PRTBLK(", (TOK_SUBFUNC_209<<8)+228, TARGET_VER370, 0 },
	{ 8, "PTERMRES(", (TOK_SUBFUNC_209<<8)+255, TARGET_VER370, 0 },
	{ 3, "PCR?", (TOK_SUBFUNC_210<<8)+15, TARGET_VER370, 0 },
	{ 3, "PCR(", (TOK_SUBFUNC_210<<8)+17, TARGET_VER370, 0 },
	{ 12, "PGETPRIORITY(", (TOK_SUBFUNC_210<<8)+149, TARGET_VER371, 0 },
	{ 12, "PSETPRIORITY(", (TOK_SUBFUNC_210<<8)+150, TARGET_VER371, 0 },
	{ 9, "PSETLIMIT(", (TOK_SUBFUNC_210<<8)+162, TARGET_VER371, 0 },
	{ 7, "PUSRVAL(", (TOK_SUBFUNC_210<<8)+161, TARGET_VER371, 0 },
	{ 6, "PUMASK(", (TOK_SUBFUNC_211<<8)+197, TARGET_VER373, 0 },
	{ 8, "PGETUID()", (TOK_SUBFUNC_211<<8)+244, TARGET_VER373, 0 },
	{ 7, "PSETUID(", (TOK_SUBFUNC_211<<8)+245, TARGET_VER373, 0 },
	{ 8, "PGETGID()", (TOK_SUBFUNC_211<<8)+242, TARGET_VER373, 0 },
	{ 7, "PSETGID(", (TOK_SUBFUNC_211<<8)+243, TARGET_VER373, 0 },
	{ 6, "PTRACE(", (TOK_SUBFUNC_211<<8)+232, TARGET_VER373, 0 },
	{ 6, "PWAIT()", (TOK_SUBFUNC_211<<8)+239, TARGET_VER373, 0 },
	{ 6, "PWAIT3(", (TOK_SUBFUNC_211<<8)+240, TARGET_VER373, 0 },
	{ 8, "PWAITPID(", (TOK_SUBFUNC_211<<8)+241, TARGET_VER373, 0 },
	{ 4, "PMSG(", (TOK_SUBFUNC_211<<8)+236, TARGET_VER373, 0 },
	{ 6, "PFORK()", (TOK_SUBFUNC_211<<8)+237, TARGET_VER373, 0 },
	{ 7, "PVFORK()", (TOK_SUBFUNC_211<<8)+238, TARGET_VER373, 0 },
	{ 2, "P~I", (TOK_SUBFUNC_210<<8)+129, TARGET_VER373, 0 },
	{ 6, "RANDOM(", TOK_RANDOM, TARGET_VER36, 0 },
	{ 4, "RAND(", (TOK_SUBFUNC_208<<8)+82, TARGET_VER36, 0 },
	{ 6, "RIGHT$(", TOK_RIGHT1, TARGET_VER36, 0 },
	{ 6, "RTRIM$(", TOK_RTRIM, TARGET_VER370, 0 },
	{ 3, "RND(", TOK_RND1, TARGET_VER36, 0 },
	{ 2, "RND", TOK_RND, TARGET_VER36, 0 },
	{ 3, "ROL(", (TOK_SUBFUNC_208<<8)+12, TARGET_VER36, 0 },
	{ 3, "ROR(", (TOK_SUBFUNC_208<<8)+13, TARGET_VER36, 0 },
	{ 4, "ROL&(", (TOK_SUBFUNC_208<<8)+50, TARGET_VER36, 0 },
	{ 4, "ROR&(", (TOK_SUBFUNC_208<<8)+51, TARGET_VER36, 0 },
	{ 4, "ROL|(", (TOK_SUBFUNC_208<<8)+54, TARGET_VER36, 0 },
	{ 4, "ROR|(", (TOK_SUBFUNC_208<<8)+55, TARGET_VER36, 0 },
	{ 9, "RSRC_LOAD(", (TOK_SUBFUNC_208<<8)+124, TARGET_VER36, 0 },
	{ 10, "RSRC_FREE()", (TOK_SUBFUNC_208<<8)+125, TARGET_VER36, 0 },
	{ 10, "RSRC_GADDR(", (TOK_SUBFUNC_208<<8)+126, TARGET_VER36, 0 },
	{ 10, "RSRC_SADDR(", (TOK_SUBFUNC_208<<8)+127, TARGET_VER36, 0 },
	{ 10, "RSRC_OBFIX(", (TOK_SUBFUNC_208<<8)+128, TARGET_VER36, 0 },
	{ 10, "RSRC_RCFIX(", (TOK_SUBFUNC_209<<8)+166, TARGET_VER370, 0 },
	{ 3, "RAD(", TOK_RAD, TARGET_VER36, 0 },
	{ 5, "ROUND(", TOK_ROUND1, TARGET_VER36, 0 },
	{ 6, "RINSTR(", (TOK_SUBFUNC_208<<8)+209, TARGET_VER36, 0 },
	{ 12, "RC_INTERSECT(", (TOK_SUBFUNC_208<<8)+217, TARGET_VER36, 0 },
	{ 7, "REALLOC(", (TOK_SUBFUNC_212<<8)+53, TARGET_VER373, 0 },
	{ 3, "RGB(", (TOK_SUBFUNC_210<<8)+157, TARGET_VER371, 0 },
	{ 6, "RGB256(", (TOK_SUBFUNC_210<<8)+158, TARGET_VER371, 0 },
	{ 7, "RGB1000(", (TOK_SUBFUNC_210<<8)+159, TARGET_VER371, 0 },
	{ 6, "RSCONF(", (TOK_SUBFUNC_209<<8)+204, TARGET_VER370, 0 },
	{ 8, "RANDOM%()", (TOK_SUBFUNC_209<<8)+117, TARGET_VER370, 0 },
	{ 5, "RWABS(", (TOK_SUBFUNC_209<<8)+159, TARGET_VER370, 0 },
	{ 8, "REPLACE$(", TOK_REPLACE, TARGET_VER370, 0 },
	{ 8, "RC_EQUAL(", (TOK_SUBFUNC_211<<8)+194, TARGET_VER373, 0 },
	{ 3, "SGN(", (TOK_SUBFUNC_208<<8)+100, TARGET_VER36, 0 },
	{ 3, "SIN(", TOK_SIN, TARGET_VER36, 0 },
	{ 4, "SINQ(", TOK_SINQ, TARGET_VER36, 0 },
	{ 6, "SPACE$(", TOK_SPACE, TARGET_VER36, 0 },
	{ 3, "SPC(", TOK_SPC, TARGET_VER36, 0 },
	{ 3, "SQR(", TOK_SQR, TARGET_VER36, 0 },
	{ 3, "STEP", TOK_STEP, TARGET_VER36, 0 },
	{ 4, "STR$(", TOK_STR1, TARGET_VER36, 0 },
	{ 7, "STRING$(", TOK_STRING_CODE, TARGET_VER36, 0 },
	{ 3, "SHL(", (TOK_SUBFUNC_208<<8)+10, TARGET_VER36, 0 },
	{ 3, "SHR(", (TOK_SUBFUNC_208<<8)+11, TARGET_VER36, 0 },
	{ 4, "SHL&(", (TOK_SUBFUNC_208<<8)+48, TARGET_VER36, 0 },
	{ 4, "SHR&(", (TOK_SUBFUNC_208<<8)+49, TARGET_VER36, 0 },
	{ 4, "SHL|(", (TOK_SUBFUNC_208<<8)+52, TARGET_VER36, 0 },
	{ 4, "SHR|(", (TOK_SUBFUNC_208<<8)+53, TARGET_VER36, 0 },
	{ 4, "SWAP(", (TOK_SUBFUNC_208<<8)+17, TARGET_VER36, 0 },
	{ 9, "SHEL_READ(", (TOK_SUBFUNC_208<<8)+129, TARGET_VER36, 0 },
	{ 10, "SHEL_WRITE(", (TOK_SUBFUNC_208<<8)+130, TARGET_VER36, 0 },
	{ 8, "SHEL_GET(", (TOK_SUBFUNC_208<<8)+131, TARGET_VER36, 0 },
	{ 8, "SHEL_PUT(", (TOK_SUBFUNC_208<<8)+132, TARGET_VER36, 0 },
	{ 9, "SHEL_FIND(", (TOK_SUBFUNC_208<<8)+133, TARGET_VER36, 0 },
	{ 10, "SHEL_ENVRN(", (TOK_SUBFUNC_208<<8)+134, TARGET_VER36, 0 },
	{ 9, "SCRP_READ(", (TOK_SUBFUNC_208<<8)+172, TARGET_VER36, 0 },
	{ 10, "SCRP_WRITE(", (TOK_SUBFUNC_208<<8)+173, TARGET_VER36, 0 },
	{ 4, "SUCC(", (TOK_SUBFUNC_208<<8)+96, TARGET_VER36, 0 },
	{ 3, "SUB(", (TOK_SUBFUNC_208<<8)+3, TARGET_VER36, 0 },
	{ 5, "STICK(", (TOK_SUBFUNC_208<<8)+206, TARGET_VER36, 0 },
	{ 5, "STRIG(", (TOK_SUBFUNC_208<<8)+207, TARGET_VER36, 0 },
	{ 3, "STOP", TOK_STOP, TARGET_VER36, 0 },
	{ 6, "SINGLE{", TOK_SINGLE_REF, TARGET_VER36, 0 },
	{ 3, "STE?", (TOK_SUBFUNC_208<<8)+233, TARGET_VER36, 0 },
	{ 5, "SCALE(", (TOK_SUBFUNC_208<<8)+235, TARGET_VER36, 0 },
	{ 9, "SVERSION()", (TOK_SUBFUNC_212<<8)+9, TARGET_VER373, 0 },
	{ 5, "SSBRK(", (TOK_SUBFUNC_212<<8)+5, TARGET_VER373, 0 },
	{ 5, "SYNC()", (TOK_SUBFUNC_211<<8)+233, TARGET_VER373, 0 },
	{ 8, "SREALLOC(", (TOK_SUBFUNC_211<<8)+235, TARGET_VER373, 0 },
	{ 6, "STRUCT(", (TOK_SUBFUNC_211<<8)+205, TARGET_VER373, 0 },
	{ 7, "STRUCT!(", (TOK_SUBFUNC_211<<8)+201, TARGET_VER373, 0 },
	{ 7, "STRUCT|(", (TOK_SUBFUNC_211<<8)+202, TARGET_VER373, 0 },
	{ 7, "STRUCT&(", (TOK_SUBFUNC_211<<8)+203, TARGET_VER373, 0 },
	{ 7, "STRUCT%(", (TOK_SUBFUNC_211<<8)+204, TARGET_VER373, 0 },
	{ 7, "STRUCT$(", 181, TARGET_VER373, 0 },
	{ 5, "SUPER?", (TOK_SUBFUNC_211<<8)+188, TARGET_VER373, 0 },
	{ 11, "SUPERSCALAR(", (TOK_SUBFUNC_211<<8)+86, TARGET_VER372, 0 },
	{ 6, "SECOND(", (TOK_SUBFUNC_210<<8)+220, TARGET_VER371, 0 },
	{ 6, "SETSTR(", (TOK_SUBFUNC_210<<8)+21, TARGET_VER371, 0 },
	{ 5, "SBYTE(", (TOK_SUBFUNC_210<<8)+28, TARGET_VER371, 0 },
	{ 5, "SBYTE{", (TOK_SUBFUNC_210<<8)+29, TARGET_VER371, 0 },
	{ 9, "SETCOOKIE(", (TOK_SUBFUNC_210<<8)+203, TARGET_VER371, 0 },
	{ 9, "SHEL_RDEF(", (TOK_SUBFUNC_210<<8)+185, TARGET_VER371, 0 },
	{ 9, "SHEL_WDEF(", (TOK_SUBFUNC_210<<8)+184, TARGET_VER371, 0 },
	{ 9, "SHEL_HELP(", (TOK_SUBFUNC_210<<8)+183, TARGET_VER371, 0 },
	{ 5, "SPLIT(", (TOK_SUBFUNC_210<<8)+177, TARGET_VER371, 0 },
	{ 7, "SUPTIME(", (TOK_SUBFUNC_210<<8)+136, TARGET_VER371, 0 },
	{ 7, "SCRDMP()", (TOK_SUBFUNC_210<<8)+133, TARGET_VER371, 0 },
	{ 8, "STRPEEK$(", TOK_CHAR, TARGET_VER371, 0 },
	{ 5, "SWAP|(", (TOK_SUBFUNC_210<<8)+130, TARGET_VER371, 0 },
	{ 7, "SLBOPEN(", (TOK_SUBFUNC_210<<8)+122, TARGET_VER371, 0 },
	{ 8, "SLBCLOSE(", (TOK_SUBFUNC_210<<8)+123, TARGET_VER371, 0 },
	{ 10, "SHEL.WRITE(", (TOK_SUBFUNC_210<<8)+7, TARGET_VER370, 0 },
	{ 1, "S:", (TOK_SUBFUNC_210<<8)+1, TARGET_VER370, 0 },
	{ 6, "SUBPTR(", (TOK_SUBFUNC_210<<8)+0, TARGET_VER370, 0 },
	{ 7, "SSYSTEM(", (TOK_SUBFUNC_209<<8)+13, TARGET_VER370, 0 },
	{ 7, "SYSCONF(", (TOK_SUBFUNC_209<<8)+12, TARGET_VER370, 0 },
	{ 9, "SETBUFFER(", (TOK_SUBFUNC_209<<8)+30, TARGET_VER370, 0 },
	{ 7, "SETMODE(", (TOK_SUBFUNC_209<<8)+31, TARGET_VER370, 0 },
	{ 12, "SETMONTRACKS(", (TOK_SUBFUNC_209<<8)+33, TARGET_VER370, 0 },
	{ 9, "SETTRACKS(", (TOK_SUBFUNC_209<<8)+32, TARGET_VER370, 0 },
	{ 9, "SNDSTATUS(", (TOK_SUBFUNC_209<<8)+39, TARGET_VER370, 0 },
	{ 8, "SOUNDCMD(", (TOK_SUBFUNC_209<<8)+29, TARGET_VER370, 0 },
	{ 12, "SETINTERRUPT(", (TOK_SUBFUNC_209<<8)+34, TARGET_VER370, 0 },
	{ 5, "SUPER(", (TOK_SUBFUNC_209<<8)+50, TARGET_VER370, 0 },
	{ 7, "SUPEXEC(", (TOK_SUBFUNC_209<<8)+202, TARGET_VER370, 0 },
	{ 6, "SETEXC(", (TOK_SUBFUNC_209<<8)+155, TARGET_VER370, 0 },
	{ 9, "SETSCREEN(", (TOK_SUBFUNC_209<<8)+200, TARGET_VER370, 0 },
	{ 10, "SETPALETTE(", (TOK_SUBFUNC_209<<8)+201, TARGET_VER370, 0 },
	{ 7, "SYIELD()", (TOK_SUBFUNC_209<<8)+174, TARGET_VER370, 0 },
	{ 8, "SHUTDOWN(", (TOK_SUBFUNC_209<<8)+179, TARGET_VER370, 0 },
	{ 7, "SETTIME(", (TOK_SUBFUNC_209<<8)+110, TARGET_VER370, 0 },
	{ 6, "SETPRT(", (TOK_SUBFUNC_209<<8)+223, TARGET_VER370, 0 },
	{ 8, "SETCOLOR(", (TOK_SUBFUNC_209<<8)+199, TARGET_VER370, 0 },
	{ 3, "SND?", (TOK_SUBFUNC_209<<8)+58, TARGET_VER370, 0 },
	{ 6, "SALERT(", (TOK_SUBFUNC_209<<8)+253, TARGET_VER370, 0 },
	{ 6, "SYSTAB?", (TOK_SUBFUNC_210<<8)+8, TARGET_VER370, 0 },
	{ 6, "SYSTAB(", (TOK_SUBFUNC_210<<8)+3, TARGET_VER370, 0 },
	{ 5, "SYSTAB", (TOK_SUBFUNC_210<<8)+4, TARGET_VER370, 0 },
	{ 9, "STIK_INIT(", (TOK_SUBFUNC_210<<8)+56, TARGET_VER370, 0 },
	{ 11, "STIK_KRFREE(", (TOK_SUBFUNC_210<<8)+58, TARGET_VER370, 0 },
	{ 14, "STIK_KRGETFREE(", (TOK_SUBFUNC_210<<8)+59, TARGET_VER370, 0 },
	{ 17, "STIK_GET_ERR_TEXT(", (TOK_SUBFUNC_210<<8)+61, TARGET_VER370, 0 },
	{ 12, "STIK_GETVSTR(", (TOK_SUBFUNC_210<<8)+62, TARGET_VER370, 0 },
	{ 13, "STIK_TCP_OPEN(", (TOK_SUBFUNC_210<<8)+64, TARGET_VER370, 0 },
	{ 14, "STIK_TCP_CLOSE(", (TOK_SUBFUNC_210<<8)+65, TARGET_VER370, 0 },
	{ 13, "STIK_TCP_SEND(", (TOK_SUBFUNC_210<<8)+66, TARGET_VER370, 0 },
	{ 19, "STIK_TCP_WAIT_STATE(", (TOK_SUBFUNC_210<<8)+67, TARGET_VER370, 0 },
	{ 11, "STIK_CNKICK(", (TOK_SUBFUNC_210<<8)+72, TARGET_VER370, 0 },
	{ 17, "STIK_CNBYTE_COUNT(", (TOK_SUBFUNC_210<<8)+73, TARGET_VER370, 0 },
	{ 15, "STIK_CNGET_CHAR(", (TOK_SUBFUNC_210<<8)+74, TARGET_VER370, 0 },
	{ 16, "STIK_CNGET_BLOCK(", (TOK_SUBFUNC_210<<8)+76, TARGET_VER370, 0 },
	{ 12, "STIK_RESOLVE(", (TOK_SUBFUNC_210<<8)+78, TARGET_VER370, 0 },
	{ 14, "STIK_CNGETINFO(", (TOK_SUBFUNC_210<<8)+83, TARGET_VER370, 0 },
	{ 3, "TAB(", TOK_TAB, TARGET_VER36, 0 },
	{ 3, "TAN(", TOK_TAN, TARGET_VER36, 0 },
	{ 3, "THEN", TOK_THEN, TARGET_VER36, 0 },
	{ 5, "TIME$(", TOK_TIME1, TARGET_VER370, 0 },
	{ 4, "TIME$", TOK_TIME, TARGET_VER36, 0 },
	{ 4, "TIMER", (TOK_SUBFUNC_208<<8)+62, TARGET_VER36, 0 },
	{ 10, "TIMESTAMP$(", TOK_TIMESTAMP, TARGET_VER370, 0 },
	{ 1, "TO", TOK_TO, TARGET_VER36, 0 },
	{ 3, "TRUE", TOK_TRUE, TARGET_VER36, 0 },
	{ 5, "TRUNC(", TOK_TRUNC, TARGET_VER36, 0 },
	{ 4, "TYPE(", (TOK_SUBFUNC_208<<8)+190, TARGET_VER36, 0 },
	{ 5, "TRACE$", TOK_TRACE, TARGET_VER36, 0 },
	{ 5, "TRIM$(", TOK_TRIM, TARGET_VER36, 0 },
	{ 2, "TT?", (TOK_SUBFUNC_208<<8)+234, TARGET_VER36, 0 },
	{ 8, "TADJTIME(", (TOK_SUBFUNC_212<<8)+39, TARGET_VER373, 0 },
	{ 13, "TGETTIMEOFDAY(", (TOK_SUBFUNC_212<<8)+40, TARGET_VER373, 0 },
	{ 13, "TSETTIMEOFDAY(", (TOK_SUBFUNC_212<<8)+41, TARGET_VER373, 0 },
	{ 10, "TSETITIMER(", (TOK_SUBFUNC_212<<8)+38, TARGET_VER373, 0 },
	{ 4, "TIME(", (TOK_SUBFUNC_210<<8)+221, TARGET_VER371, 0 },
	{ 6, "TALARM(", (TOK_SUBFUNC_211<<8)+226, TARGET_VER373, 0 },
	{ 7, "TMALARM(", (TOK_SUBFUNC_211<<8)+227, TARGET_VER373, 0 },
	{ 7, "TEDINFO(", (TOK_SUBFUNC_210<<8)+208, TARGET_VER371, TARGET_VER371 },
	{ 9, "TGETDATE()", (TOK_SUBFUNC_209<<8)+19, TARGET_VER370, 0 },
	{ 9, "TGETTIME()", (TOK_SUBFUNC_209<<8)+20, TARGET_VER370, 0 },
	{ 8, "TSETDATE(", (TOK_SUBFUNC_209<<8)+105, TARGET_VER370, 0 },
	{ 8, "TSETTIME(", (TOK_SUBFUNC_209<<8)+106, TARGET_VER370, 0 },
	{ 8, "TICKCAL()", (TOK_SUBFUNC_209<<8)+156, TARGET_VER370, 0 },
	{ 8, "TE_PTEXT(", (TOK_SUBFUNC_211<<8)+126, TARGET_VER372, 0 },
	{ 9, "TE_PTMPLT(", (TOK_SUBFUNC_211<<8)+127, TARGET_VER372, 0 },
	{ 9, "TE_PVALID(", (TOK_SUBFUNC_211<<8)+128, TARGET_VER372, 0 },
	{ 7, "TE_FONT(", (TOK_SUBFUNC_211<<8)+129, TARGET_VER372, 0 },
	{ 9, "TE_FONTID(", (TOK_SUBFUNC_211<<8)+130, TARGET_VER372, 0 },
	{ 7, "TE_JUST(", (TOK_SUBFUNC_211<<8)+131, TARGET_VER372, 0 },
	{ 8, "TE_COLOR(", (TOK_SUBFUNC_211<<8)+132, TARGET_VER372, 0 },
	{ 11, "TE_FONTSIZE(", (TOK_SUBFUNC_211<<8)+133, TARGET_VER372, 0 },
	{ 12, "TE_THICKNESS(", (TOK_SUBFUNC_211<<8)+134, TARGET_VER372, 0 },
	{ 9, "TE_TXTLEN(", (TOK_SUBFUNC_211<<8)+135, TARGET_VER372, 0 },
	{ 9, "TE_TMPLEN(", (TOK_SUBFUNC_211<<8)+136, TARGET_VER372, 0 },
	{ 11, "TE_FRAMECOL(", (TOK_SUBFUNC_211<<8)+137, TARGET_VER372, 0 },
	{ 10, "TE_TEXTCOL(", (TOK_SUBFUNC_211<<8)+138, TARGET_VER372, 0 },
	{ 11, "TE_TEXTMODE(", (TOK_SUBFUNC_211<<8)+139, TARGET_VER372, 0 },
	{ 14, "TE_FILLPATTERN(", (TOK_SUBFUNC_211<<8)+140, TARGET_VER372, 0 },
	{ 14, "TE_INTERIORCOL(", (TOK_SUBFUNC_211<<8)+141, TARGET_VER372, 0 },
	{ 6, "UPPER$(", TOK_UPPER, TARGET_VER36, 0 },
	{ 4, "USING", TOK_USING, TARGET_VER36, 0 },
	{ 8, "USERDEF!(", (TOK_SUBFUNC_211<<8)+221, TARGET_VER373, 0 },
	{ 9, "USERDEFBIT", (TOK_SUBFUNC_211<<8)+222, TARGET_VER373, 0 },
	{ 8, "USERDEF|(", (TOK_SUBFUNC_211<<8)+215, TARGET_VER373, 0 },
	{ 9, "USERDEFBYT", (TOK_SUBFUNC_211<<8)+216, TARGET_VER373, 0 },
	{ 8, "USERDEF&(", (TOK_SUBFUNC_211<<8)+217, TARGET_VER373, 0 },
	{ 9, "USERDEFWRD", (TOK_SUBFUNC_211<<8)+218, TARGET_VER373, 0 },
	{ 8, "USERDEF%(", (TOK_SUBFUNC_211<<8)+219, TARGET_VER373, 0 },
	{ 9, "USERDEFLNG", (TOK_SUBFUNC_211<<8)+220, TARGET_VER373, 0 },
	{ 7, "USERBLK(", (TOK_SUBFUNC_210<<8)+211, TARGET_VER371, TARGET_VER371 },
	{ 6, "UCASE$(", TOK_RCASE, TARGET_VER36, 0 },
	{ 10, "UNLOCKSND()", (TOK_SUBFUNC_209<<8)+28, TARGET_VER36, 0 },
	{ 6, "UNPACK(", (TOK_SUBFUNC_209<<8)+94, TARGET_VER36, 0 },
	{ 7, "UB_CODE(", (TOK_SUBFUNC_211<<8)+124, TARGET_VER372, 0 },
	{ 7, "UB_PARM(", (TOK_SUBFUNC_211<<8)+125, TARGET_VER372, 0 },
	{ 3, "VAL(", TOK_VAL, TARGET_VER36, 0 },
	{ 4, "VAL?(", (TOK_SUBFUNC_208<<8)+73, TARGET_VER36, 0 },
	{ 6, "VARPTR(", (TOK_SUBFUNC_208<<8)+187, TARGET_VER36, 0 },
	{ 6, "VARIAT(", TOK_VARIAT, TARGET_VER36, 0 },
	{ 2, "VAR", TOK_VAR, TARGET_VER36, 0 },
	{ 6, "VDIBASE", (TOK_SUBFUNC_208<<8)+40, TARGET_VER36, 0 },
	{ 1, "V:", (TOK_SUBFUNC_208<<8)+203, TARGET_VER36, 0 },
	{ 2, "V~H", (TOK_SUBFUNC_208<<8)+213, TARGET_VER36, 0 },
	{ 7, "V_OPNWK(", (TOK_SUBFUNC_208<<8)+105, TARGET_VER36, 0 },
	{ 8, "V_CLSWK()", (TOK_SUBFUNC_208<<8)+106, TARGET_VER36, 0 },
	{ 8, "V_OPNVWK(", (TOK_SUBFUNC_208<<8)+107, TARGET_VER36, 0 },
	{ 9, "V_CLSVWK()", (TOK_SUBFUNC_208<<8)+108, TARGET_VER36, 0 },
	{ 8, "V_UPDWK()", (TOK_SUBFUNC_208<<8)+109, TARGET_VER36, 0 },
	{ 14, "VST_LOAD_FONTS(", (TOK_SUBFUNC_208<<8)+110, TARGET_VER36, 0 },
	{ 16, "VST_UNLOAD_FONTS(", (TOK_SUBFUNC_208<<8)+111, TARGET_VER36, 0 },
	{ 8, "V_CLRWK()", (TOK_SUBFUNC_208<<8)+214, TARGET_VER36, 0 },
	{ 8, "VQT_NAME(", (TOK_SUBFUNC_208<<8)+215, TARGET_VER36, 0 },
	{ 10, "VQT_EXTENT(", (TOK_SUBFUNC_208<<8)+216, TARGET_VER36, 0 },
	{ 13, "VQ_TABSTATUS()", (TOK_SUBFUNC_212<<8)+65, TARGET_VER373, 0 },
	{ 7, "V_EEOL()", (TOK_SUBFUNC_212<<8)+66, TARGET_VER373, 0 },
	{ 7, "V_EEOS()", (TOK_SUBFUNC_212<<8)+67, TARGET_VER373, 0 },
	{ 8, "V_RMCUR()", (TOK_SUBFUNC_212<<8)+68, TARGET_VER373, 0 },
	{ 8, "V_DSPCUR(", (TOK_SUBFUNC_212<<8)+69, TARGET_VER373, 0 },
	{ 8, "V_CURUP()", (TOK_SUBFUNC_212<<8)+60, TARGET_VER373, 0 },
	{ 10, "V_CURDOWN()", (TOK_SUBFUNC_212<<8)+61, TARGET_VER373, 0 },
	{ 11, "V_CURRIGHT()", (TOK_SUBFUNC_212<<8)+62, TARGET_VER373, 0 },
	{ 10, "V_CURLEFT()", (TOK_SUBFUNC_212<<8)+63, TARGET_VER373, 0 },
	{ 10, "V_CURHOME()", (TOK_SUBFUNC_212<<8)+64, TARGET_VER373, 0 },
	{ 7, "V_RVON()", (TOK_SUBFUNC_212<<8)+56, TARGET_VER373, 0 },
	{ 8, "V_RVOFF()", (TOK_SUBFUNC_212<<8)+57, TARGET_VER373, 0 },
	{ 11, "V_EXIT_CUR()", (TOK_SUBFUNC_212<<8)+58, TARGET_VER373, 0 },
	{ 12, "V_ENTER_CUR()", (TOK_SUBFUNC_212<<8)+59, TARGET_VER373, 0 },
	{ 13, "VQ_CURADDRESS(", (TOK_SUBFUNC_212<<8)+54, TARGET_VER373, 0 },
	{ 12, "V_CURADDRESS(", (TOK_SUBFUNC_212<<8)+55, TARGET_VER373, 0 },
	{ 10, "VQ_CHCELLS(", (TOK_SUBFUNC_211<<8)+193, TARGET_VER373, 0 },
	{ 9, "V_BEZ_ON()", (TOK_SUBFUNC_211<<8)+191, TARGET_VER373, 0 },
	{ 10, "V_BEZ_OFF()", (TOK_SUBFUNC_211<<8)+192, TARGET_VER373, 0 },
	{ 11, "V_HARDCOPY()", (TOK_SUBFUNC_211<<8)+54, TARGET_VER372, 0 },
	{ 9, "VQ_VGDOS()", (TOK_SUBFUNC_209<<8)+14, TARGET_VER370, 0 },
	{ 7, "V_OPNBM(", (TOK_SUBFUNC_209<<8)+6, TARGET_VER370, 0 },
	{ 8, "VQ_COLOR(", (TOK_SUBFUNC_209<<8)+0, TARGET_VER370, 0 },
	{ 9, "VST_POINT(", (TOK_SUBFUNC_209<<8)+21, TARGET_VER370, 0 },
	{ 12, "VGETMONITOR()", (TOK_SUBFUNC_209<<8)+229, TARGET_VER370, 0 },
	{ 8, "VGETSIZE(", (TOK_SUBFUNC_209<<8)+230, TARGET_VER370, 0 },
	{ 8, "VSETMODE(", (TOK_SUBFUNC_209<<8)+231, TARGET_VER370, 0 },
	{ 10, "VCHECKMODE(", (TOK_SUBFUNC_209<<8)+232, TARGET_VER370, 0 },
	{ 10, "VSETSCREEN(", (TOK_SUBFUNC_209<<8)+233, TARGET_VER370, 0 },
	{ 11, "V_GET_PIXEL(", (TOK_SUBFUNC_209<<8)+73, TARGET_VER370, 0 },
	{ 10, "V_BEZ_QUAL(", (TOK_SUBFUNC_209<<8)+135, TARGET_VER36, 0 },
	{ 9, "V_HIDE_C()", (TOK_SUBFUNC_209<<8)+88, TARGET_VER370, 0 },
	{ 9, "V_SHOW_C()", (TOK_SUBFUNC_209<<8)+87, TARGET_VER370, 0 },
	{ 15, "VQF_ATTRIBUTES()", (TOK_SUBFUNC_209<<8)+127, TARGET_VER370, 0 },
	{ 15, "VQL_ATTRIBUTES()", (TOK_SUBFUNC_209<<8)+128, TARGET_VER370, 0 },
	{ 15, "VQM_ATTRIBUTES()", (TOK_SUBFUNC_209<<8)+129, TARGET_VER370, 0 },
	{ 15, "VQT_ATTRIBUTES()", (TOK_SUBFUNC_209<<8)+130, TARGET_VER370, 0 },
	{ 12, "VQT_FONTINFO(", (TOK_SUBFUNC_209<<8)+42, TARGET_VER370, 0 },
	{ 9, "VQT_WIDTH(", (TOK_SUBFUNC_209<<8)+41, TARGET_VER370, 0 },
	{ 9, "VRO_CPYFM(", (TOK_SUBFUNC_209<<8)+4, TARGET_VER370, 0 },
	{ 9, "VRT_CPYFM(", (TOK_SUBFUNC_209<<8)+5, TARGET_VER370, 0 },
	{ 8, "VR_TRNFM(", (TOK_SUBFUNC_209<<8)+131, TARGET_VER370, 0 },
	{ 8, "VQ_EXTND(", (TOK_SUBFUNC_209<<8)+132, TARGET_VER370, 0 },
	{ 11, "VQ_SCRNINFO(", (TOK_SUBFUNC_209<<8)+133, TARGET_VER370, 0 },
	{ 8, "V_CLSBM()", (TOK_SUBFUNC_209<<8)+7, TARGET_VER370, 0 },
	{ 8, "VQ_MOUSE(", (TOK_SUBFUNC_209<<8)+136, TARGET_VER370, 0 },
	{ 13, "VST_ALIGNMENT(", (TOK_SUBFUNC_209<<8)+15, TARGET_VER370, 0 },
	{ 8, "VS_COLOR(", (TOK_SUBFUNC_208<<8)+253, TARGET_VER370, 0 },
	{ 5, "V_BEZ(", (TOK_SUBFUNC_209<<8)+134, TARGET_VER370, 0 },
	{ 7, "VGETRGB(", (TOK_SUBFUNC_209<<8)+234, TARGET_VER370, 0 },
	{ 7, "VSETRGB(", (TOK_SUBFUNC_209<<8)+235, TARGET_VER370, 0 },
	{ 8, "VSETMASK(", (TOK_SUBFUNC_209<<8)+236, TARGET_VER370, 0 },
	{ 8, "VSETSYNC(", (TOK_SUBFUNC_209<<8)+237, TARGET_VER370, 0 },
	{ 9, "V_CURTEXT(", (TOK_SUBFUNC_209<<8)+121, TARGET_VER370, 0 },
	{ 9, "VST_COLOR(", (TOK_SUBFUNC_209<<8)+122, TARGET_VER370, 0 },
	{ 11, "VST_EFFECTS(", (TOK_SUBFUNC_209<<8)+123, TARGET_VER370, 0 },
	{ 12, "VST_ROTATION(", (TOK_SUBFUNC_209<<8)+124, TARGET_VER370, 0 },
	{ 10, "VST_HEIGHT(", (TOK_SUBFUNC_209<<8)+125, TARGET_VER370, 0 },
	{ 8, "VST_FONT(", (TOK_SUBFUNC_209<<8)+126, TARGET_VER370, 0 },
	{ 8, "VSL_TYPE(", (TOK_SUBFUNC_209<<8)+137, TARGET_VER370, 0 },
	{ 9, "VSL_WIDTH(", (TOK_SUBFUNC_209<<8)+138, TARGET_VER370, 0 },
	{ 8, "VSL_ENDS(", (TOK_SUBFUNC_209<<8)+139, TARGET_VER370, 0 },
	{ 9, "VSL_UDSTY(", (TOK_SUBFUNC_209<<8)+140, TARGET_VER370, 0 },
	{ 9, "VSL_COLOR(", (TOK_SUBFUNC_209<<8)+141, TARGET_VER370, 0 },
	{ 9, "VSM_COLOR(", (TOK_SUBFUNC_209<<8)+142, TARGET_VER370, 0 },
	{ 10, "VSM_HEIGHT(", (TOK_SUBFUNC_209<<8)+143, TARGET_VER370, 0 },
	{ 8, "VSM_TYPE(", (TOK_SUBFUNC_209<<8)+144, TARGET_VER370, 0 },
	{ 9, "VSWR_MODE(", (TOK_SUBFUNC_209<<8)+145, TARGET_VER370, 0 },
	{ 9, "VSF_COLOR(", (TOK_SUBFUNC_209<<8)+146, TARGET_VER370, 0 },
	{ 12, "VSF_INTERIOR(", (TOK_SUBFUNC_209<<8)+147, TARGET_VER370, 0 },
	{ 13, "VSF_PERIMETER(", (TOK_SUBFUNC_209<<8)+148, TARGET_VER370, 0 },
	{ 9, "VSF_STYLE(", (TOK_SUBFUNC_209<<8)+149, TARGET_VER370, 0 },
	{ 9, "VSF_UDPAT(", (TOK_SUBFUNC_209<<8)+150, TARGET_VER370, 0 },
	{ 7, "VS_CLIP(", (TOK_SUBFUNC_209<<8)+169, TARGET_VER370, 0 },
	{ 9, "VSC_FORM()", (TOK_SUBFUNC_209<<8)+170, TARGET_VER370, 0 },
	{ 5, "V_BAR(", (TOK_SUBFUNC_209<<8)+181, TARGET_VER370, 0 },
	{ 6, "V_RBOX(", (TOK_SUBFUNC_209<<8)+182, TARGET_VER370, 0 },
	{ 7, "V_RFBOX(", (TOK_SUBFUNC_209<<8)+183, TARGET_VER370, 0 },
	{ 8, "VR_RECFL(", (TOK_SUBFUNC_209<<8)+184, TARGET_VER370, 0 },
	{ 5, "V_ARC(", (TOK_SUBFUNC_209<<8)+185, TARGET_VER370, 0 },
	{ 8, "V_CIRCLE(", (TOK_SUBFUNC_209<<8)+186, TARGET_VER370, 0 },
	{ 8, "V_ELLARC(", (TOK_SUBFUNC_209<<8)+187, TARGET_VER370, 0 },
	{ 8, "V_ELLPIE(", (TOK_SUBFUNC_209<<8)+188, TARGET_VER370, 0 },
	{ 9, "V_ELLIPSE(", (TOK_SUBFUNC_209<<8)+189, TARGET_VER370, 0 },
	{ 10, "V_PIESLICE(", (TOK_SUBFUNC_209<<8)+190, TARGET_VER370, 0 },
	{ 13, "V_CONTOURFILL(", (TOK_SUBFUNC_209<<8)+191, TARGET_VER370, 0 },
	{ 7, "V_GTEXT(", (TOK_SUBFUNC_209<<8)+192, TARGET_VER370, 0 },
	{ 7, "V_PLINE(", (TOK_SUBFUNC_209<<8)+193, TARGET_VER370, 0 },
	{ 9, "V_PMARKER(", (TOK_SUBFUNC_209<<8)+194, TARGET_VER370, 0 },
	{ 10, "V_FILLAREA(", (TOK_SUBFUNC_209<<8)+195, TARGET_VER370, 0 },
	{ 11, "V_JUSTIFIED(", (TOK_SUBFUNC_209<<8)+196, TARGET_VER370, 0 },
	{ 8, "VQ_KEY_S(", (TOK_SUBFUNC_209<<8)+197, TARGET_VER370, 0 },
	{ 10, "V_BEZ_FILL(", (TOK_SUBFUNC_209<<8)+198, TARGET_VER370, 0 },
	{ 8, "VA_START(", (TOK_SUBFUNC_210<<8)+115, TARGET_VER370, 0 },
	{ 6, "VSYNC()", (TOK_SUBFUNC_210<<8)+151, TARGET_VER371, 0 },
	{ 16, "VR_TRANSFER_BITS(", (TOK_SUBFUNC_211<<8)+44, TARGET_VER372, 0 },
	{ 13, "V_CREATE_CTAB(", (TOK_SUBFUNC_211<<8)+45, TARGET_VER372, 0 },
	{ 13, "V_DELETE_CTAB(", (TOK_SUBFUNC_211<<8)+46, TARGET_VER372, 0 },
	{ 13, "V_CREATE_ITAB(", (TOK_SUBFUNC_211<<8)+47, TARGET_VER372, 0 },
	{ 13, "V_DELETE_ITAB(", (TOK_SUBFUNC_211<<8)+48, TARGET_VER372, 0 },
	{ 12, "VQ_PX_FORMAT(", (TOK_SUBFUNC_211<<8)+49, TARGET_VER372, 0 },
	{ 14, "V_GET_CTAB_ID()", (TOK_SUBFUNC_211<<8)+50, TARGET_VER372, 0 },
	{ 12, "VQT_EXT_NAME(", (TOK_SUBFUNC_211<<8)+51, TARGET_VER372, 0 },
	{ 9, "V_OPEN_BM(", (TOK_SUBFUNC_211<<8)+52, TARGET_VER372, 0 },
	{ 11, "V_RESIZE_BM(", (TOK_SUBFUNC_211<<8)+53, TARGET_VER372, 0 },
	{ 8, "VST_NAME(", (TOK_SUBFUNC_211<<8)+55, TARGET_VER372, 0 },
	{ 15, "VQT_NAME_AND_ID(", (TOK_SUBFUNC_211<<8)+56, TARGET_VER372, 0 },
	{ 12, "VST_FG_COLOR(", (TOK_SUBFUNC_211<<8)+57, TARGET_VER372, 0 },
	{ 12, "VSF_FG_COLOR(", (TOK_SUBFUNC_211<<8)+58, TARGET_VER372, 0 },
	{ 12, "VSL_FG_COLOR(", (TOK_SUBFUNC_211<<8)+59, TARGET_VER372, 0 },
	{ 12, "VSM_FG_COLOR(", (TOK_SUBFUNC_211<<8)+60, TARGET_VER372, 0 },
	{ 12, "VSR_FG_COLOR(", (TOK_SUBFUNC_211<<8)+61, TARGET_VER372, 0 },
	{ 12, "VQT_FG_COLOR(", (TOK_SUBFUNC_211<<8)+62, TARGET_VER372, 0 },
	{ 12, "VQF_FG_COLOR(", (TOK_SUBFUNC_211<<8)+63, TARGET_VER372, 0 },
	{ 12, "VQL_FG_COLOR(", (TOK_SUBFUNC_211<<8)+64, TARGET_VER372, 0 },
	{ 12, "VQM_FG_COLOR(", (TOK_SUBFUNC_211<<8)+65, TARGET_VER372, 0 },
	{ 12, "VQR_FG_COLOR(", (TOK_SUBFUNC_211<<8)+66, TARGET_VER372, 0 },
	{ 12, "VST_BG_COLOR(", (TOK_SUBFUNC_211<<8)+67, TARGET_VER372, 0 },
	{ 12, "VSF_BG_COLOR(", (TOK_SUBFUNC_211<<8)+68, TARGET_VER372, 0 },
	{ 12, "VSL_BG_COLOR(", (TOK_SUBFUNC_211<<8)+69, TARGET_VER372, 0 },
	{ 12, "VSM_BG_COLOR(", (TOK_SUBFUNC_211<<8)+70, TARGET_VER372, 0 },
	{ 12, "VSR_BG_COLOR(", (TOK_SUBFUNC_211<<8)+71, TARGET_VER372, 0 },
	{ 12, "VQT_BG_COLOR(", (TOK_SUBFUNC_211<<8)+72, TARGET_VER372, 0 },
	{ 12, "VQF_BG_COLOR(", (TOK_SUBFUNC_211<<8)+73, TARGET_VER372, 0 },
	{ 12, "VQL_BG_COLOR(", (TOK_SUBFUNC_211<<8)+74, TARGET_VER372, 0 },
	{ 12, "VQM_BG_COLOR(", (TOK_SUBFUNC_211<<8)+75, TARGET_VER372, 0 },
	{ 12, "VQR_BG_COLOR(", (TOK_SUBFUNC_211<<8)+76, TARGET_VER372, 0 },
	{ 15, "VS_HILITE_COLOR(", (TOK_SUBFUNC_211<<8)+77, TARGET_VER372, 0 },
	{ 12, "VS_MIN_COLOR(", (TOK_SUBFUNC_211<<8)+78, TARGET_VER372, 0 },
	{ 12, "VS_MAX_COLOR(", (TOK_SUBFUNC_211<<8)+79, TARGET_VER372, 0 },
	{ 15, "VS_WEIGHT_COLOR(", (TOK_SUBFUNC_211<<8)+80, TARGET_VER372, 0 },
	{ 15, "VQ_HILITE_COLOR(", (TOK_SUBFUNC_211<<8)+81, TARGET_VER372, 0 },
	{ 12, "VQ_MIN_COLOR(", (TOK_SUBFUNC_211<<8)+82, TARGET_VER372, 0 },
	{ 12, "VQ_MAX_COLOR(", (TOK_SUBFUNC_211<<8)+83, TARGET_VER372, 0 },
	{ 15, "VQ_WEIGHT_COLOR(", (TOK_SUBFUNC_211<<8)+84, TARGET_VER372, 0 },
	{ 8, "V_SETRGB(", (TOK_SUBFUNC_211<<8)+85, TARGET_VER372, 0 },
	{ 12, "VQT_XFNTINFO(", (TOK_SUBFUNC_211<<8)+87, TARGET_VER372, 0 },
	{ 13, "V_COLOR2VALUE(", (TOK_SUBFUNC_210<<8)+211, TARGET_VER372, 0 },
	{ 13, "V_VALUE2COLOR(", (TOK_SUBFUNC_210<<8)+210, TARGET_VER372, 0 },
	{ 15, "V_COLOR2NEAREST(", (TOK_SUBFUNC_210<<8)+209, TARGET_VER372, 0 },
	{ 12, "VQ_DFLT_CTAB(", (TOK_SUBFUNC_210<<8)+208, TARGET_VER372, 0 },
	{ 16, "V_CTAB_IDX2VALUE(", (TOK_SUBFUNC_210<<8)+207, TARGET_VER372, 0 },
	{ 14, "V_CTAB_VDI2IDX(", (TOK_SUBFUNC_210<<8)+206, TARGET_VER372, 0 },
	{ 14, "V_CTAB_IDX2VDI(", (TOK_SUBFUNC_211<<8)+166, TARGET_VER372, 0 },
	{ 11, "VQ_CTAB_ID()", (TOK_SUBFUNC_211<<8)+167, TARGET_VER372, 0 },
	{ 13, "VQ_CTAB_ENTRY(", (TOK_SUBFUNC_211<<8)+168, TARGET_VER372, 0 },
	{ 7, "VQ_CTAB(", (TOK_SUBFUNC_211<<8)+169, TARGET_VER372, 0 },
	{ 13, "VS_DFLT_CTAB()", (TOK_SUBFUNC_211<<8)+170, TARGET_VER372, 0 },
	{ 13, "VS_CTAB_ENTRY(", (TOK_SUBFUNC_211<<8)+171, TARGET_VER372, 0 },
	{ 7, "VS_CTAB(", (TOK_SUBFUNC_211<<8)+172, TARGET_VER372, 0 },
	{ 21, "VR_CLIP_RECTS_BY_DST()", (TOK_SUBFUNC_211<<8)+173, TARGET_VER372, 0 },
	{ 21, "VR_CLIP_RECTS_BY_SRC()", (TOK_SUBFUNC_211<<8)+174, TARGET_VER372, 0 },
	{ 14, "VQT_FONTHEADER(", (TOK_SUBFUNC_211<<8)+175, TARGET_VER372, 0 },
	{ 9, "VST_WIDTH(", (TOK_SUBFUNC_211<<8)+176, TARGET_VER372, 0 },
	{ 18, "V_CLEAR_DISP_LIST()", (TOK_SUBFUNC_211<<8)+177, TARGET_VER372, 0 },
	{ 8, "VEX_TIMV(", (TOK_SUBFUNC_211<<8)+178, TARGET_VER372, 0 },
	{ 8, "VEX_BUTV(", (TOK_SUBFUNC_211<<8)+179, TARGET_VER372, 0 },
	{ 8, "VEX_MOTV(", (TOK_SUBFUNC_211<<8)+180, TARGET_VER372, 0 },
	{ 8, "VEX_CURV(", (TOK_SUBFUNC_211<<8)+181, TARGET_VER372, 0 },
	{ 1, "W:", TOK_WORDARG, TARGET_VER36, 0 },
	{ 7, "WINDTAB(", (TOK_SUBFUNC_208<<8)+41, TARGET_VER36, 0 },
	{ 6, "WINDTAB", (TOK_SUBFUNC_208<<8)+42, TARGET_VER36, 0 },
	{ 4, "WORD(", (TOK_SUBFUNC_208<<8)+14, TARGET_VER36, 0 },
	{ 11, "WIND_CREATE(", (TOK_SUBFUNC_208<<8)+175, TARGET_VER36, 0 },
	{ 9, "WIND_OPEN(", (TOK_SUBFUNC_208<<8)+176, TARGET_VER36, 0 },
	{ 10, "WIND_CLOSE(", (TOK_SUBFUNC_208<<8)+177, TARGET_VER36, 0 },
	{ 11, "WIND_DELETE(", (TOK_SUBFUNC_208<<8)+178, TARGET_VER36, 0 },
	{ 8, "WIND_GET(", (TOK_SUBFUNC_208<<8)+179, TARGET_VER36, 0 },
	{ 8, "WIND_SET(", (TOK_SUBFUNC_208<<8)+180, TARGET_VER36, 0 },
	{ 9, "WIND_FIND(", (TOK_SUBFUNC_208<<8)+181, TARGET_VER36, 0 },
	{ 11, "WIND_UPDATE(", (TOK_SUBFUNC_208<<8)+182, TARGET_VER36, 0 },
	{ 9, "WIND_CALC(", (TOK_SUBFUNC_208<<8)+183, TARGET_VER36, 0 },
	{ 7, "W_HAND(#", (TOK_SUBFUNC_208<<8)+98, TARGET_VER36, 0 },
	{ 8, "W_INDEX(#", (TOK_SUBFUNC_208<<8)+99, TARGET_VER36, 0 },
	{ 8, "WORK_OUT(", (TOK_SUBFUNC_208<<8)+208, TARGET_VER36, 0 },
	{ 3, "WITH", TOK_WITH, TARGET_VER36, 0 },
	{ 4, "WORD{", (TOK_SUBFUNC_208<<8)+222, TARGET_VER36, 0 },
	{ 9, "WIND_SGET(", (TOK_SUBFUNC_210<<8)+182, TARGET_VER371, 0 },
	{ 9, "WIND_NEW()", (TOK_SUBFUNC_209<<8)+85, TARGET_VER370, 0 },
	{ 8, "WAKETIME(", (TOK_SUBFUNC_209<<8)+227, TARGET_VER370, 0 },
	{ 7, "WF_NAME(", (TOK_SUBFUNC_209<<8)+248, TARGET_VER370, 0 },
	{ 7, "WF_INFO(", (TOK_SUBFUNC_209<<8)+249, TARGET_VER370, 0 },
	{ 7, "WEEKDAY(", (TOK_SUBFUNC_210<<8)+91, TARGET_VER370, 0 },
	{ 6, "WF_TOP(", (TOK_SUBFUNC_210<<8)+160, TARGET_VER371, 0 },
	{ 4, "WEEK(", (TOK_SUBFUNC_211<<8)+1, TARGET_VER371, 0 },
	{ 9, "WORD2LONG(", (TOK_SUBFUNC_210<<8)+117, TARGET_VER370, TARGET_VER371 },
	{ 5, "XBIOS(", (TOK_SUBFUNC_208<<8)+86, TARGET_VER36, 0 },
	{ 2, "XOR", TOK_XOR, TARGET_VER36, 0 },
	{ 3, "XOR(", (TOK_SUBFUNC_208<<8)+7, TARGET_VER36, 0 },
	{ 7, "XBTIMER(", (TOK_SUBFUNC_212<<8)+3, TARGET_VER373, 0 },
	{ 6, "XLATE$(", TOK_XLATE, TARGET_VER371, 0 },
	{ 4, "YEAR(", (TOK_SUBFUNC_210<<8)+215, TARGET_VER371, 0 },
	{ 6, "ZTRIM$(", TOK_ZTRIM, TARGET_VER370, 0 },
	{ 0, "\\", TOK_INTDIV, TARGET_VER36, 0 },
	{ 0, "[", TOK_LBRACKET, TARGET_VER36, 0 },
	{ 0, "]", TOK_RBRACKET, TARGET_VER36, 0 },
	{ 4, "_DATA", (TOK_SUBFUNC_208<<8)+227, TARGET_VER36, 0 },
	{ 9, "_BUILDINFO", (TOK_SUBFUNC_210<<8)+240, TARGET_VER371, 0 },
	{ 7, "_BMPSIZE", (TOK_SUBFUNC_211<<8)+223, TARGET_VER373, 0 },
	{ 7, "_BOOTDEV", (TOK_SUBFUNC_211<<8)+200, TARGET_VER373, 0 },
	{ 7, "_VERSION", (TOK_SUBFUNC_210<<8)+227, TARGET_VER371, 0 },
	{ 6, "_GEMDOS", (TOK_SUBFUNC_209<<8)+18, TARGET_VER370, 0 },
	{ 6, "_GLOBAL", (TOK_SUBFUNC_211<<8)+213, TARGET_VER373, 0 },
	{ 5, "_CPUID", (TOK_SUBFUNC_210<<8)+224, TARGET_VER371, 0 },
	{ 4, "_MINT", (TOK_SUBFUNC_209<<8)+1, TARGET_VER370, 0 },
	{ 3, "_PID", (TOK_SUBFUNC_210<<8)+129, TARGET_VER371, TARGET_VER372 },
	{ 3, "_AES", (TOK_SUBFUNC_208<<8)+242, TARGET_VER370, 0 },
	{ 3, "_CPU", (TOK_SUBFUNC_209<<8)+57, TARGET_VER370, 0 },
	{ 3, "_FPU", (TOK_SUBFUNC_210<<8)+222, TARGET_VER371, 0 },
	{ 3, "_MCH", (TOK_SUBFUNC_210<<8)+223, TARGET_VER371, 0 },
	{ 3, "_TOS", (TOK_SUBFUNC_208<<8)+243, TARGET_VER370, 0 },
	{ 3, "_CF_", (TOK_SUBFUNC_210<<8)+241, TARGET_VER371, 0 },
	{ 2, "_CW", (TOK_SUBFUNC_210<<8)+228, TARGET_VER371, 0 },
	{ 2, "_CH", (TOK_SUBFUNC_210<<8)+229, TARGET_VER371, 0 },
	{ 2, "_SW", (TOK_SUBFUNC_209<<8)+2, TARGET_VER370, 0 },
	{ 2, "_SH", (TOK_SUBFUNC_209<<8)+3, TARGET_VER370, 0 },
	{ 2, "_DX", (TOK_SUBFUNC_210<<8)+245, TARGET_VER371, 0 },
	{ 2, "_DY", (TOK_SUBFUNC_210<<8)+246, TARGET_VER371, 0 },
	{ 2, "_DW", (TOK_SUBFUNC_210<<8)+247, TARGET_VER371, 0 },
	{ 2, "_DH", (TOK_SUBFUNC_210<<8)+248, TARGET_VER371, 0 },
	{ 2, "_A3", (TOK_SUBFUNC_211<<8)+251, TARGET_VER373, 0 },
	{ 2, "_A4", (TOK_SUBFUNC_211<<8)+252, TARGET_VER373, 0 },
	{ 2, "_A5", (TOK_SUBFUNC_211<<8)+253, TARGET_VER373, 0 },
	{ 2, "_A6", (TOK_SUBFUNC_211<<8)+254, TARGET_VER373, 0 },
	{ 2, "_A7", (TOK_SUBFUNC_211<<8)+255, TARGET_VER373, 0 },
	{ 1, "_X", (TOK_SUBFUNC_208<<8)+236, TARGET_VER36, 0 },
	{ 1, "_Y", (TOK_SUBFUNC_208<<8)+237, TARGET_VER36, 0 },
	{ 1, "_P", (TOK_SUBFUNC_208<<8)+255, TARGET_VER370, 0 },
	{ 1, "_C", (TOK_SUBFUNC_208<<8)+238, TARGET_VER36, 0 },
	{ 1, "_B", (TOK_SUBFUNC_208<<8)+241, TARGET_VER370, 0 },
	{ 1, "_0", (TOK_SUBFUNC_210<<8)+230, TARGET_VER371, 0 },
	{ 1, "_1", (TOK_SUBFUNC_210<<8)+231, TARGET_VER371, 0 },
	{ 1, "_2", (TOK_SUBFUNC_210<<8)+232, TARGET_VER371, 0 },
	{ 1, "_3", (TOK_SUBFUNC_210<<8)+233, TARGET_VER371, 0 },
	{ 1, "_4", (TOK_SUBFUNC_210<<8)+234, TARGET_VER371, 0 },
	{ 1, "_5", (TOK_SUBFUNC_210<<8)+235, TARGET_VER371, 0 },
	{ 1, "_6", (TOK_SUBFUNC_210<<8)+236, TARGET_VER371, 0 },
	{ 1, "_7", (TOK_SUBFUNC_210<<8)+237, TARGET_VER371, 0 },
	{ 1, "_8", (TOK_SUBFUNC_210<<8)+238, TARGET_VER371, 0 },
	{ 1, "_9", (TOK_SUBFUNC_210<<8)+239, TARGET_VER371, 0 },
	{ 0, "^", TOK_POWER, TARGET_VER36, 0 },
	{ 0, "{", (TOK_SUBFUNC_208<<8)+112, TARGET_VER36, 0 },
	{ 0, "}", TOK_RBRACE, TARGET_VER36, 0 },
	{ 4, "EOF(#", (TOK_SUBFUNC_208<<8)+78, TARGET_VER36, 0 },
	{ 4, "LOF(#", (TOK_SUBFUNC_208<<8)+79, TARGET_VER36, 0 },
	{ 4, "LOC(#", (TOK_SUBFUNC_208<<8)+80, TARGET_VER36, 0 },
	{ 3, " AT(", TOK_AT2, TARGET_VER36, 0 },
	{ 4, "SUCC(", TOK_SUCC, TARGET_VER36, 0 },
	{ 4, "PRED(", TOK_PRED, TARGET_VER36, 0 },
	{ 0, "/", TOK_DIVIDE, TARGET_VER36, 6 }
};

/******************************************************************************/
/*** ---------------------------------------------------------------------- ***/
/******************************************************************************/

static struct argdesc const x1439e[] = {
	{ ARG_PUSH_(x143ec) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x143ec) },
	{ ARG_END_ }
};

static struct argdesc const x14f9b[] = {
	{ ARG_PUSH_(x14fa6) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ ARG_END_ }
};

static struct argdesc const x14d00[] = {
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_END_ }
};

static struct argdesc const x14cfd[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_END_ }
};

static struct argdesc const x14cfa[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_END_ }
};

static struct argdesc const x14cf7[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_END_ }
};

static struct argdesc const x14cf4[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_END_ }
};

static struct argdesc const x14cf1[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_END_ }
};

static struct argdesc const x14cee[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_END_ }
};

static struct argdesc const x14ceb[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_END_ }
};

static struct argdesc const x14ce8[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_END_ }
};

static struct argdesc const x14d04[] = {
	{ ARG_PUSH_(x14b9a) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14d09[] = {
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14d03[] = {
	{ ARG_END_ }
};

static struct argdesc const x14d0e[] = {
	{ ARG_PUSH_(iexp) },
	{ TOK_RBRACE, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x1440d[] = {
	{ ARG_PUSH_(x14336+6) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+6) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+6) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+6) },
	{ ARG_END_ }
};

static struct argdesc const x14f15[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x1440d+4) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x1440d+4) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x1440d) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const x14ee8[] = {
	{ ARG_PUSH_(iexp8) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp8) },
	{ ARG_PUSH_(x14f15+2) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14f3c[] = {
	{ ARG_PUSH_(x1439e) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14f41[] = {
	{ ARG_PUSH_(iexp3) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14fa6) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14f4a[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(x143ec) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14f52[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14f55[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14f4d[] = {
	{ ARG_PUSH_(x143ec) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14f5d[] = {
	{ ARG_PUSH_(x14336+8) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14f28[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x1440d+4) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const x14f66[] = {
	{ ARG_PUSH_(iexp4) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp2) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp2) },
	{ ARG_PUSH_(x14f28) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14f6a[] = {
	{ ARG_PUSH_(iexp2) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp2) },
	{ ARG_PUSH_(x14f28) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14f6e[] = {
	{ ARG_PUSH_(iexp2) },
	{ ARG_PUSH_(x14f28) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14f76[] = {
	{ ARG_PUSH_(iexp2) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp3) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+6) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14f7a[] = {
	{ ARG_PUSH_(iexp3) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+6) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14f83[] = {
	{ ARG_PUSH_(iexp4) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp) },
	{ ARG_PUSH_(x14f15+4) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14f87[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp) },
	{ ARG_PUSH_(x14f15+4) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14f8a[] = {
	{ ARG_PUSH_(iexp) },
	{ ARG_PUSH_(x14f15+4) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14f23[] = {
	{ ARG_PUSH_(x14f15+5) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14f92[] = {
	{ ARG_PUSH_(iexp2) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+8) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14fa3[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(x14336+8) },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14fae[] = {
	{ ARG_PUSH_(x14fa6) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },
	{ TOK_SUBFUNC_208, { (void *)68 } }, /* INSTR(a$,b$) */
	{ ARG_REPLACE_(69) }, /* -> INSTR(a$,b$,x) */
	{ ARG_PUSH_(x14fa3) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },
	{ TOK_SUBFUNC_208, { (void *)68 } },
	{ ARG_REPLACE_(70) }, /* -> INSTR(x,a$,b$) */
	{ ARG_PUSH_(x14f9b) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14fc5[] = {
	{ ARG_PUSH_(x14fa6) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },
	{ TOK_SUBFUNC_208, { (void *)209 } }, /* RINSTR(a$,b$) */
	{ ARG_REPLACE_(210) }, /* -> RINSTR(a$,b$,x) */
	{ ARG_PUSH_(x14fa3) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },
	{ TOK_SUBFUNC_208, { (void *)209 } },
	{ ARG_REPLACE_(211) }, /* -> RINSTR(x,a$,b$) */
	{ ARG_PUSH_(x14f9b) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14d2b[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14b9a) },
	{ ARG_PUSH_(x14d2b) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const x14d23[] = {
	{ ARG_PUSH_(x14b9a) },
	{ ARG_PUSH_(x14d2b) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14fe1[] = {
	{ ARG_PUSH_(x14336) },
	{ ARG_END_ }
};

static struct argdesc const x14fdc[] = {
	{ ARG_PUSH_(x14fe1) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14fe9[] = {
	{ ARG_PUSH_(x1434e) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },
	{ ARG_PUSH_(any_arr) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14fe5[] = {
	{ ARG_PUSH_(x14fe9) },
	{ ARG_END_ }
};

static struct argdesc const x1501f[] = {
	{ ARG_PUSH_(any_arr) },
	{ ARG_POP_ },
	{ ARG_PUSH_(x1434e) },
	{ ARG_END_ }
};

static struct argdesc const x14ff3[] = {
	{ ARG_REPLACE_(TOK_SUBFUNC_208) },
	{ ARG_INSERT_(189) }, /* -> ARRPTR */
	{ ARG_PUSH_(x1501f) },
	{ ARG_END_ }
};

static struct argdesc const x14fee[] = {
	{ ARG_PUSH_(any_arr) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const long_or_wordarg[] = {
	{ TOK_LONGARG, { 0 } },
	{ ARG_POP_ },
	{ TOK_WORDARG, { 0 } },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const x1504d[] = {
	{ ARG_PUSH_(comma_or_semi) },
	{ ARG_PUSH_(long_or_wordarg) },
	{ ARG_PUSH_(iexp) },
	{ ARG_PUSH_(x1504d) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const x15046[] = {
	{ ARG_PUSH_(iexp) },
	{ ARG_PUSH_(x1504d) },
	{ ARG_END_ }
};

static struct argdesc const x14ffb[] = {
	{ ARG_PUSH_(x15046) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x15000[] = {
	{ ARG_PUSH_(x144dd) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x15005[] = {
	{ ARG_CALL_FUNC_(expect_float_or_int) },
	{ TOK_LPAREN, { 0 } },
	{ ARG_REPLACE_(TOK_LPAREN2) },
	{ ARG_PUSH_(x1504d+1) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x15010[] = {
	{ ARG_PUSH_(x14b90+1) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14ca9[] = {
	{ ARG_REPLACE_(TOK_SUBFUNC_208) },
	{ TOK_LPAREN, { 0 } },
	{ ARG_REPLACE_(1) }, /* -> DIV() */
	{ ARG_PUSH_(x14cfd) },
	{ ARG_END_ }
};

static struct argdesc const x14cb2[] = {
	{ ARG_REPLACE_(TOK_SUBFUNC_208) },
	{ TOK_LPAREN, { 0 } },
	{ ARG_REPLACE_(4) }, /* -> MOD() */
	{ ARG_PUSH_(x14cfd) },
	{ ARG_END_ }
};

static struct argdesc const x14cbb[] = {
	{ ARG_REPLACE_(TOK_SUBFUNC_208) },
	{ TOK_LPAREN, { 0 } },
	{ ARG_REPLACE_(5) }, /* -> AND() */
	{ ARG_PUSH_(x14cfd) },
	{ ARG_END_ }
};

static struct argdesc const x14cc4[] = {
	{ ARG_REPLACE_(TOK_SUBFUNC_208) },
	{ TOK_LPAREN, { 0 } },
	{ ARG_REPLACE_(6) }, /* -> OR() */
	{ ARG_PUSH_(x14cfd) },
	{ ARG_END_ }
};

static struct argdesc const x14ccd[] = {
	{ ARG_REPLACE_(TOK_SUBFUNC_208) },
	{ TOK_LPAREN, { 0 } },
	{ ARG_REPLACE_(7) }, /* -> XOR() */
	{ ARG_PUSH_(x14cfd) },
	{ ARG_END_ }
};

static struct argdesc const x14cd6[] = {
	{ ARG_REPLACE_(TOK_SUBFUNC_208) },
	{ TOK_LPAREN, { 0 } },
	{ ARG_REPLACE_(8) }, /* -> EQV() */
	{ ARG_PUSH_(x14cfd) },
	{ ARG_END_ }
};

static struct argdesc const x14cdf[] = {
	{ ARG_REPLACE_(TOK_SUBFUNC_208) },
	{ TOK_LPAREN, { 0 } },
	{ ARG_REPLACE_(9) }, /* -> IMP() */
	{ ARG_PUSH_(x14cfd) },
	{ ARG_END_ }
};

static struct argdesc const x14d13[] = {
	{ ARG_PUSH_(x14b9a) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_POP_ },
	{ TOK_ROUND1, { 0 } },
	{ ARG_REPLACE_(TOK_ROUND2) },
	{ ARG_PUSH_(x14b9a) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_END_ }
};

static struct argdesc const x14f05[] = {
	{ ARG_PUSH_(iexp3) },
	{ ARG_PUSH_(x14f15+4) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14f0d[] = {
	{ ARG_PUSH_(iexp5) },
	{ ARG_PUSH_(x14f15+4) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14f2e[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+6) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const x14f34[] = {
	{ ARG_PUSH_(x1439e) },
	{ ARG_PUSH_(x14f2e) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14c9f[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp5) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp5) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const x14c97[] = {
	{ ARG_PUSH_(iexp) },
	{ ARG_PUSH_(x14c9f) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14c8e[] = {
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ ARG_PUSH_(x14c9f) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14efd[] = {
	{ ARG_PUSH_(sexp) },
	{ ARG_PUSH_(x14f15) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x14ef4[] = {
	{ ARG_PUSH_(iexp4) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x1440d) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58d60[] = {
	{ ARG_PUSH_(x14336+8) },
	{ ARG_END_ }
};

static struct argdesc const x58d5a[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x58d60) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const x58d52[] = {
	{ ARG_PUSH_(iexp) },
	{ ARG_PUSH_(x58d5a) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58dd0[] = {
	{ ARG_PUSH_(x1439e) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+6) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58d64[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(x1440d+2) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58d67[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(x1440d+2) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58d6a[] = {
	{ ARG_PUSH_(x1440d+2) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58edd[] = {
	{ ARG_PUSH_(x14fa6) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58478[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(x14336+2) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58e05[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(x143ec) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x587a9[] = {
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58ed8[] = {
	{ ARG_PUSH_(x14fa3) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58480[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(x14336+6) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58483[] = {
	{ ARG_PUSH_(x14336+6) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58ea0[] = {
	{ ARG_PUSH_(iexp) },
	{ ARG_PUSH_(x14f28) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58ea8[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(x143ec) },
	{ ARG_PUSH_(x14f28) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58e23[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_END_ }
};

static struct argdesc const x58488[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x57fc3[] = {
	{ ARG_CALL_FUNC_(ref_procedure) },
	{ ARG_END_ }
};

static struct argdesc const x57fbe[] = {
	{ ARG_PUSH_(x57fc3) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58848[] = {
	{ ARG_PUSH_(x14cf7) },
	{ ARG_POP_ },
	{ TOK_SUBFUNC_208, { (void *)239 } }, /* GETSIZE() */
	{ ARG_REPLACE_(240) }, /* -> GETSIZE(x1,y1,x2,y2,n) */
	{ ARG_PUSH_(x14cf4) },
	{ ARG_END_ }
};

static struct argdesc const y132[] = {
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58854[] = {
	{ ARG_PUSH_(x14cfd) },
	{ ARG_POP_ },
	{ TOK_SUBFUNC_210, { (void *)91 } }, /* WEEKDAY(date,format) */
	{ ARG_REPLACE_(92) }, /* -> WEEKDAY(year,month,day,format) */
	{ ARG_PUSH_(x14cf7) },
	{ ARG_END_ }
};

static struct argdesc const x58f03[] = {
	{ ARG_PUSH_(x14f9b) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+8) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+8) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58efa[] = {
	{ ARG_PUSH_(x14336+8) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+8) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58efe[] = {
	{ ARG_PUSH_(x14336+8) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58f10[] = {
	{ ARG_PUSH_(x14f9b) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58df3[] = {
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x143ec) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58524[] = {
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_CALL_FUNC_(expect_string_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58531[] = {
	{ ARG_CALL_FUNC_(expect_string_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(x143ec) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58541[] = {
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(x143ec) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x587b6[] = {
	{ ARG_PUSH_(iexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x5855f[] = {
	{ ARG_PUSH_(x143ec) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp_rparen) },
	{ ARG_END_ }
};

static struct argdesc const x58e37[] = {
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58567[] = {
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_CALL_FUNC_(expect_string_arr) },
	{ TOK_RPAREN, { 0 } },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58e48[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x143ec) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58550[] = {
	{ ARG_PUSH_(x143ec) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(sexp) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58860[] = {
	{ ARG_PUSH_(x14d00) },
	{ ARG_POP_ },
	{ TOK_SUBFUNC_210, { (void *)254 } }, /* DAYNO(date) */
	{ ARG_REPLACE_(255) }, /* -> DAYNO(year,month,day) */
	{ ARG_PUSH_(x14cfa) },
	{ ARG_END_ }
};

static struct argdesc const x5886c[] = {
	{ ARG_PUSH_(x14cfd) },
	{ ARG_POP_ },
	{ TOK_SUBFUNC_211, { (void *)1 } }, /* WEEK(date,format) */
	{ ARG_REPLACE_(2) }, /* -> WEEK(year,month,day,format) */
	{ ARG_PUSH_(x14cf7) },
	{ ARG_END_ }
};

static struct argdesc const x58e70[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x143ec) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58497[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(x14336+6) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+6) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+6) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+6) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x584a3[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(x14336+6) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+6) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+6) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+6) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x584a6[] = {
	{ ARG_PUSH_(x14336+6) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+6) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+6) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+6) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58d41[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(x14336+8) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58d44[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(x14336+8) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58d4a[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(x14336+8) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58d35[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(x14336+8) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+6) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x58e60[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(sexp) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+4) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x59d88[] = {
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x1440d+2) },
	{ ARG_POP_ },
	{ ARG_END_ }
};

static struct argdesc const x59d80[] = {
	{ ARG_PUSH_(iexp4) },
	{ ARG_PUSH_(x59d88) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x59be7[] = {
	{ ARG_PUSH_(x14336+4) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+4) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

static struct argdesc const x59c1f[] = {
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(iexp_comma) },
	{ ARG_PUSH_(x14336+8) },
	{ TOK_COMMA, { 0 } },
	{ ARG_PUSH_(x14336+8) },
	{ TOK_RPAREN, { 0 } },
	{ ARG_END_ }
};

/*** ---------------------------------------------------------------------- ***/

const struct argdesc *const arg_table[MAX_FUNCS] = {
	x14cbb, /*   0  AND  */
	x14cc4, /*   1  OR  */
	x14ccd, /*   2  XOR  */
	x14cdf, /*   3  IMP  */
	x14cd6, /*   4  EQV  */
	NULL,   /*   5 - */
	NULL,   /*   6 + */
	x14ff3, /*   7 * */
	NULL,   /*   8 / */
	NULL,   /*   9 ^ */
	x14cb2, /*  10  MOD  */
	x14ca9, /*  11  DIV  */
	NULL,   /*  12 <> */
	NULL,   /*  13 <= */
	NULL,   /*  14 =< */
	NULL,   /*  15 >= */
	NULL,   /*  16 => */
	NULL,   /*  17 < */
	NULL,   /*  18 > */
	NULL,   /*  19 = */
	NULL,   /*  20 <> */
	NULL,   /*  21 <= */
	NULL,   /*  22 =< */
	NULL,   /*  23 >= */
	NULL,   /*  24 => */
	NULL,   /*  25 < */
	NULL,   /*  26 > */
	NULL,   /*  27 = */
	NULL,   /*  28 + */
	NULL,   /*  29 + */
	NULL,   /*  30 - */
	NULL,   /*  31 NOT  */
	NULL,   /*  32 ) */
	NULL,   /*  33 , */
	NULL,   /*  34 ; */
	x14d04, /*  35 ( */
	NULL,   /*  36 ERR$( */
	x14d04, /*  37 INT( */
	x14d04, /*  38 TRUNC( */
	x14d04, /*  39 FRAC( */
	x14d04, /*  40 ABS( */
	x14d04, /*  41 SIN( */
	x14d04, /*  42 COS( */
	x14d04, /*  43 TAN( */
	x14d04, /*  44 ATN( */
	NULL,   /*  45 == */
	NULL,   /*  46 ( */
	x14d04, /*  47 EXP( */
	x14d04, /*  48 LOG( */
	x14d04, /*  49 LOG10( */
	NULL,   /*  50 VAR  */
	NULL,   /*  51 ) */
	NULL,   /*  52 INPAUX$ */
	x14d09, /*  53 VAL( */
	NULL,   /*  54 INPMID$ */
	NULL,   /*  55  */
	NULL,   /*  56 TIME$ */
	x14d03, /*  57 )= */
	NULL,   /*  58 LEFT$( */
	NULL,   /*  59 LEFT$( */
	NULL,   /*  60 RIGHT$( */
	NULL,   /*  61 RIGHT$( */
	NULL,   /*  62 MID$( */
	NULL,   /*  63 MID$( */
	NULL,   /*  64 , */
	x14d04, /*  65 ASIN( */
	NULL,   /*  66 CHR$( */
	NULL,   /*  67 }= */
	NULL,   /*  68 ]= */
	NULL,   /*  69 = */
	NULL,   /*  70  */
	NULL,   /*  71  TO  */
	NULL,   /*  72  STEP  */
	NULL,   /*  73  DOWNTO  */
	NULL,   /*  74  THEN */
	NULL,   /*  75  GOTO  */
	NULL,   /*  76  GOSUB  */
	NULL,   /*  77 # */
	x14d04, /*  78 SQR( */
	x14d03, /*  79 PI */
	NULL,   /*  80 [ */
	NULL,   /*  81 ] */
	x14d04, /*  82 ACOS( */
	NULL,   /*  83 INKEY$ */
	x14d04, /*  84 RND( */
	x14d03, /*  85 RND */
	x14d04, /*  86 RANDOM( */
	NULL,   /*  87 ' */
	NULL,   /*  88 } */
	NULL,   /*  89 AT( */
	NULL,   /*  90 IF */
	NULL,   /*  91 \ */
	x14d0e, /*  92 FLOAT{ */
	x14d0e, /*  93 DOUBLE{ */
	NULL,   /*  94 INPUT$( */
	NULL,   /*  95 INPUT$( */
	NULL,   /*  96 INPUT */
	NULL,   /*  97 CHAR{ */
	NULL,   /*  98 MKI$( */
	NULL,   /*  99 MKL$( */
	NULL,   /* 100 MKS$( */
	NULL,   /* 101 MKF$( */
	NULL,   /* 102 MKD$( */
	x14d04, /* 103 DEG( */
	x14d04, /* 104 RAD( */
	x14d09, /* 105 CVS( */
	x14d09, /* 106 CVF( */
	x14d09, /* 107 CVD( */
	NULL,   /* 108  AS  */
	NULL,   /* 109  OFFSET  */
	x14d04, /* 110 CFLOAT( */
	NULL,   /* 111 TRACE$ */
	x14d13, /* 112 ROUND( */
	NULL,   /* 113 ROUND( */
	NULL,   /* 114  WITH  */
	NULL,   /* 115 BIN$( */
	NULL,   /* 116 BIN$( */
	x14d23, /* 117 MIN( */
	x14d23, /* 118 MIN( */
	x14d23, /* 119 MAX( */
	x14d23, /* 120 MAX( */
	x14d0e, /* 121 SINGLE{ */
	NULL,   /* 122  AT( */
	x14d04, /* 123 SINQ( */
	NULL,   /* 124 : */
	x14d04, /* 125 COSQ( */
	NULL,   /* 126 DATE$ */
	NULL,   /* 127 UPPER$( */
	NULL,   /* 128 SPACE$( */
	NULL,   /* 129 STRING$( */
	NULL,   /* 130 STRING$( */
	NULL,   /* 131 SUCC( */
	NULL,   /* 132 DIR$( */
	NULL,   /* 133 PRED( */
	x14d00, /* 134 DRAW( */
	NULL,   /* 135 TRIM$( */
	NULL,   /* 136 CMDLINE$ */
	NULL,   /* 137 CURDIR$ */
	NULL,   /* 138 L: */
	NULL,   /* 139 W: */
	x14d00, /* 140 FACT( */
	x14cfd, /* 141 COMBIN( */
	NULL,   /* 142 ENVIRON$( */
	x14cfd, /* 143 VARIAT( */
	NULL,   /* 144 LTRIM$( */
	NULL,   /* 145 RTRIM$( */
	NULL,   /* 146 LCASE$( */
	NULL,   /* 147 UCASE$( */
	NULL,   /* 148 LOWER$( */
	NULL,   /* 149 OB_TEXT$( */
	NULL,   /* 150 ZTRIM$( */
	NULL,   /* 151 ERROR */
	NULL,   /* 152 STOP */
	NULL,   /* 153 BREAK */
	NULL,   /* 154  CONT */
	x14d04, /* 155 FIX( */
	NULL,   /* 156 , */
	NULL,   /* 157 ( */
	NULL,   /* 158 FN  */
	NULL,   /* 159 @ */
	NULL,   /* 160 MIRROR$( */
	NULL,   /* 161 TAB( */
	NULL,   /* 162 SPC( */
	NULL,   /* 163 USING  */
	NULL,   /* 164 CHAR$( */
	NULL,   /* 165 TIME$( */
	NULL,   /* 166 TIMESTAMP$( */
	NULL,   /* 167 MENU */
	NULL,   /* 168 NEXT */
	NULL,   /* 169 STRPEEK$( */
	NULL,   /* 170 KEY */
	NULL,   /* 171 BUTTON */
	NULL,   /* 172 IBOX */
	NULL,   /* 173 OBOX */
	NULL,   /* 174 MESSAGE */
	NULL,   /* 175 OFF */
	NULL,   /* 176 KILL */
	NULL,   /* 177 DIGITAL$( */
	NULL,   /* 178 REPLACE$( */
	NULL,   /* 179 CRYPT$( */
	NULL,   /* 180 XLATE$( */
	NULL,   /* 181 STRUCT$( */
	NULL,   /* 182 BASE  */
	x14d03, /* 183 NULL */
	NULL,   /* 184 0 */
	NULL,   /* 185 1 */
	NULL,   /* 186 2 */
	NULL,   /* 187 3 */
	x14d03, /* 188 TRUE */
	x14d03, /* 189 FALSE */
	NULL,   /* 190 STR$( */
	NULL,   /* 191 STR$( */
	NULL,   /* 192 STR$( */
	NULL,   /* 193 HEX$( */
	NULL,   /* 194 HEX$( */
	NULL,   /* 195 OCT$( */
	NULL,   /* 196 OCT$( */
	NULL,   /* 197 */
	NULL,   /* 198 */
	NULL,   /* 199 */
	NULL,   /* 200 */
	NULL,   /* 201 */
	NULL,   /* 202 */
	NULL,   /* 203 */
	NULL,   /* 204 */
	NULL,   /* 205 */
	NULL,   /* 206 */
	NULL,   /* 207 */
	NULL,   /* 208 */
	NULL,   /* 209 */
	NULL,   /* 210 */
	NULL,   /* 211 */
	NULL,   /* 212 */
	NULL,   /* 213 */
	NULL,   /* 214 */
	NULL,   /* 215 */
	NULL,   /* 216 */
	NULL,   /* 217 */
	NULL,   /* 218 */
	NULL,   /* 219 */
	NULL,   /* 220 */
	NULL,   /* 221 */
	NULL,   /* 222 */
	NULL,   /* 223 */
	NULL,   /* 224 */
	NULL,   /* 225 */
	NULL,   /* 226 */
	NULL,   /* 227 */
	NULL,   /* 228 */
	NULL,   /* 229 */
	NULL,   /* 230 */
	NULL,   /* 231 */
	NULL,   /* 232 */
	NULL,   /* 233 */
	NULL,   /* 234 */
	NULL,   /* 235 */
	NULL,   /* 236 */
	NULL,   /* 237 */
	NULL,   /* 238 */
	NULL,   /* 239 */
	NULL,   /* 240 */
	NULL,   /* 241 */
	NULL,   /* 242 */
	NULL,   /* 243 */
	NULL,   /* 244 */
	NULL,   /* 245 */
	NULL,   /* 246 */
	NULL,   /* 247 */
	NULL,   /* 248 */
	NULL,   /* 249 */
	NULL,   /* 250 */
	NULL,   /* 251 */
	NULL,   /* 252 */
	NULL,   /* 253 */
	NULL,   /* 254 */
	NULL,   /* 255 */

	/* secondary function table #208 */
	x14cfd, /*   0 MUL( */
	x14cfd, /*   1 DIV( */
	x14cfd, /*   2 ADD( */
	x14cfd, /*   3 SUB( */
	x14cfd, /*   4 MOD( */
	x14cfd, /*   5 AND( */
	x14cfd, /*   6 OR( */
	x14cfd, /*   7 XOR( */
	x14cfd, /*   8 EQV( */
	x14cfd, /*   9 IMP( */
	x14cfd, /*  10 SHL( */
	x14cfd, /*  11 SHR( */
	x14cfd, /*  12 ROL( */
	x14cfd, /*  13 ROR( */
	x14d00, /*  14 WORD( */
	x14d00, /*  15 CARD( */
	x14d00, /*  16 BYTE( */
	x14d00, /*  17 SWAP( */
	x14d00, /*  18 ADDRIN( */
	x14d03, /*  19 ADDRIN */
	x14d00, /*  20 ADDROUT( */
	x14d03, /*  21 ADDROUT */
	x14d00, /*  22 CONTRL( */
	x14d03, /*  23 CONTRL */
	x14d00, /*  24 GCONTRL( */
	x14d03, /*  25 GCONTRL */
	x14d00, /*  26 GINTIN( */
	x14d03, /*  27 GINTIN */
	x14d00, /*  28 GINTOUT( */
	x14d03, /*  29 GINTOUT */
	x14d03, /*  30 HIMEM */
	x14d03, /*  31 BASEPAGE */
	x14d00, /*  32 INTIN( */
	x14d03, /*  33 INTIN */
	x14d00, /*  34 INTOUT( */
	x14d03, /*  35 INTOUT */
	x14d00, /*  36 PTSIN( */
	x14d03, /*  37 PTSIN */
	x14d00, /*  38 PTSOUT( */
	x14d03, /*  39 PTSOUT */
	x14d03, /*  40 VDIBASE */
	x14cfd, /*  41 WINDTAB( */
	x14d03, /*  42 WINDTAB */
	x14cfd, /*  43 PTST( */
	x14cfd, /*  44 BTST( */
	x14cfd, /*  45 BSET( */
	x14cfd, /*  46 BCLR( */
	x14cfd, /*  47 BCHG( */
	x14cfd, /*  48 SHL&( */
	x14cfd, /*  49 SHR&( */
	x14cfd, /*  50 ROL&( */
	x14cfd, /*  51 ROR&( */
	x14cfd, /*  52 SHL|( */
	x14cfd, /*  53 SHR|( */
	x14cfd, /*  54 ROL|( */
	x14cfd, /*  55 ROR|( */
	x14d03, /*  56 CRSLIN */
	x14d03, /*  57 CRSCOL */
	x14d03, /*  58 MOUSEX */
	x14d03, /*  59 MOUSEY */
	x14d03, /*  60 MOUSEK */
	x14d03, /*  61 GB */
	x14d03, /*  62 TIMER */
	x14d00, /*  63 PEEK( */
	x14d00, /*  64 DPEEK( */
	x14d00, /*  65 LPEEK( */
	x14d09, /*  66 LEN( */
	x14d09, /*  67 ASC( */
	x14fae, /*  68 INSTR( */
	x14fae, /*  69 INSTR( */
	x14fae, /*  70 INSTR( */
	x15010, /*  71 FRE( */
	x14cfd, /*  72 POINT( */
	x14d09, /*  73 VAL?( */
	x14d00, /*  74 INP( */
	x14d09, /*  75 CVI( */
	x14d09, /*  76 CVL( */
	x14d00, /*  77 INP(# */
	x14d00, /*  78 EOF(# */
	x14d00, /*  79 LOF(# */
	x14d00, /*  80 LOC(# */
	x14fee, /*  81 DIM?( */
	x14d00, /*  82 RAND( */
	x14d00, /*  83 DFREE( */
	x14d09, /*  84 EXIST( */
	x14ffb, /*  85 BIOS( */
	x14ffb, /*  86 XBIOS( */
	x14ffb, /*  87 GEMDOS( */
	x14d03, /*  88 ERR */
	x14d03, /*  89 FATAL */
	x14d00, /*  90 POS( */
	x14d00, /*  91 LPOS( */
	x14d00, /*  92 MENU( */
	x14d00, /*  93 INP?( */
	x14d00, /*  94 OUT?( */
	x15000, /*  95 EXEC( */
	x14d00, /*  96 SUCC( */
	x14d00, /*  97 PRED( */
	x14d00, /*  98 W_HAND(# */
	x14d00, /*  99 W_INDEX(# */
	x14d04, /* 100 SGN( */
	x14d04, /* 101 EVEN( */
	x14d04, /* 102 ODD( */
	x14d00, /* 103 CINT( */
	x14d03, /* 104 GDOS? */
	x14c97, /* 105 V_OPNWK( */
	x14d03, /* 106 V_CLSWK() */
	x14c97, /* 107 V_OPNVWK( */
	x14d03, /* 108 V_CLSVWK() */
	x14d03, /* 109 V_UPDWK() */
	x14d00, /* 110 VST_LOAD_FONTS( */
	x14d00, /* 111 VST_UNLOAD_FONTS( */
	x14d0e, /* 112 { */
	x14d0e, /* 113 LONG{ */
	x14d0e, /* 114 INT{ */
	x14d0e, /* 115 CARD{ */
	x14d0e, /* 116 BYTE{ */
	x15005, /* 117 C: */
	x14d03, /* 118 EVNT_KEYBD() */
	x14f05, /* 119 EVNT_BUTTON( */
	x14f0d, /* 120 EVNT_MOUSE( */
	x14d00, /* 121 EVNT_MESAG( */
	x14d00, /* 122 EVNT_TIMER( */
	x14ee8, /* 123 EVNT_MULTI( */
	x14d09, /* 124 RSRC_LOAD( */
	x14d03, /* 125 RSRC_FREE() */
	x14f92, /* 126 RSRC_GADDR( */
	x14cfa, /* 127 RSRC_SADDR( */
	x14cfd, /* 128 RSRC_OBFIX( */
	x14f3c, /* 129 SHEL_READ( */
	x14f41, /* 130 SHEL_WRITE( */
	x14f4a, /* 131 SHEL_GET( */
	x14f55, /* 132 SHEL_PUT( */
	x14f4d, /* 133 SHEL_FIND( */
	x14f5d, /* 134 SHEL_ENVRN( */
	x14d03, /* 135 APPL_INIT() */
	x14cfa, /* 136 APPL_READ( */
	x14cfa, /* 137 APPL_WRITE( */
	x14d09, /* 138 APPL_FIND( */
	x14cfa, /* 139 APPL_TPLAY( */
	x14cfd, /* 140 APPL_TRECORD( */
	x14d03, /* 141 APPL_EXIT() */
	x14cfd, /* 142 EVNT_DCLICK( */
	x14cfd, /* 143 MENU_BAR( */
	x14cfa, /* 144 MENU_ICHECK( */
	x14cfa, /* 145 MENU_IENABLE( */
	x14cfa, /* 146 MENU_TNORMAL( */
	x14f52, /* 147 MENU_TEXT( */
	x14f55, /* 148 MENU_REGISTER( */
	x14cfa, /* 149 OBJC_ADD( */
	x14cfd, /* 150 OBJC_DELETE( */
	x14cee, /* 151 OBJC_DRAW( */
	x14cf4, /* 152 OBJC_FIND( */
	x14f6e, /* 153 OBJC_OFFSET( */
	x14cfa, /* 154 OBJC_ORDER( */
	x14f76, /* 155 OBJC_EDIT( */
	x14ce8, /* 156 OBJC_CHANGE( */
	x14cfd, /* 157 FORM_DO( */
	x14ce8, /* 158 FORM_DIAL( */
	x14f55, /* 159 FORM_ALERT( */
	x14d00, /* 160 FORM_ERROR( */
	x14f8a, /* 161 FORM_CENTER( */
	x14f6a, /* 162 GRAF_RUBBERBOX( */
	x14f66, /* 163 GRAF_DRAGBOX( */
	x14cf1, /* 164 GRAF_MOVEBOX( */
	x14ceb, /* 165 GRAF_GROWBOX( */
	x14ceb, /* 166 GRAF_SHRINKBOX( */
	x14cf7, /* 167 GRAF_WATCHBOX( */
	x14cf7, /* 168 GRAF_SLIDEBOX( */
	x14f23, /* 169 GRAF_HANDLE( */
	x14cfd, /* 170 GRAF_MOUSE( */
	x14f23, /* 171 GRAF_MKSTATE( */
	x14f4d, /* 172 SCRP_READ( */
	x14d09, /* 173 SCRP_WRITE( */
	x14f34, /* 174 FSEL_INPUT( */
	x14cf4, /* 175 WIND_CREATE( */
	x14cf4, /* 176 WIND_OPEN( */
	x14d00, /* 177 WIND_CLOSE( */
	x14d00, /* 178 WIND_DELETE( */
	x14f87, /* 179 WIND_GET( */
	x14cf1, /* 180 WIND_SET( */
	x14cfd, /* 181 WIND_FIND( */
	x14d00, /* 182 WIND_UPDATE( */
	x14f83, /* 183 WIND_CALC( */
	x14d00, /* 184 MALLOC( */
	x14d00, /* 185 MFREE( */
	x14cfd, /* 186 MSHRINK( */
	x14fdc, /* 187 VARPTR( */
	x14fe5, /* 188 ARRPTR( */
	x14ff3, /* 189 * */
	x14d00, /* 190 TYPE( */
	x14cfd, /* 191 OB_ADR( */
	x14cfd, /* 192 OB_NEXT( */
	x14cfd, /* 193 OB_HEAD( */
	x14cfd, /* 194 OB_TAIL( */
	x14cfd, /* 195 OB_TYPE( */
	x14cfd, /* 196 OB_FLAGS( */
	x14cfd, /* 197 OB_STATE( */
	x14cfd, /* 198 OB_SPEC( */
	x14cfd, /* 199 OB_X( */
	x14cfd, /* 200 OB_Y( */
	x14cfd, /* 201 OB_W( */
	x14cfd, /* 202 OB_H( */
	x14fe1, /* 203 V: */
	x14f6a, /* 204 FORM_KEYBD( */
	x14f7a, /* 205 FORM_BUTTON( */
	x14d00, /* 206 STICK( */
	x14d00, /* 207 STRIG( */
	x14d00, /* 208 WORK_OUT( */
	x14fc5, /* 209 RINSTR( */
	x14fc5, /* 210 RINSTR( */
	x14fc5, /* 211 RINSTR( */
	x14d03, /* 212 L~A */
	x14d03, /* 213 V~H */
	x14d03, /* 214 V_CLRWK() */
	x14f4a, /* 215 VQT_NAME( */
	x14efd, /* 216 VQT_EXTENT( */
	x14ef4, /* 217 RC_INTERSECT( */
	x14c8e, /* 218 FSFIRST( */
	x14d03, /* 219 FSNEXT() */
	x14d00, /* 220 FSETDTA( */
	x14d03, /* 221 FGETDTA() */
	x14d0e, /* 222 WORD{ */
	x14d00, /* 223 INP&( */
	x14d00, /* 224 INP&(# */
	x14d00, /* 225 INP%( */
	x14d00, /* 226 INP%(# */
	x14d03, /* 227 _DATA */
	x14d00, /* 228 PADX( */
	x14d00, /* 229 PADY( */
	x14d00, /* 230 PADT( */
	x14d03, /* 231 LPENX */
	x14d03, /* 232 LPENY */
	x14d03, /* 233 STE? */
	x14d03, /* 234 TT? */
	x14cfa, /* 235 SCALE( */
	x14d03, /* 236 _X */
	x14d03, /* 237 _Y */
	x14d03, /* 238 _C */
	x58848, /* 239 GETSIZE( */
	x58848, /* 240 GETSIZE( */
	x14d03, /* 241 _B */
	x14d03, /* 242 _AES */
	x14d03, /* 243 _TOS */
	x14d03, /* 244 A~I */
	x14d03, /* 245 CPU020() */
	x14d03, /* 246 FPU882() */
	x14d03, /* 247 GMOUSEK */
	x14d03, /* 248 GMOUSEX */
	x14d03, /* 249 GMOUSEY */
	x14d00, /* 250 GLOBAL( */
	x14d03, /* 251 GLOBAL */
	x58d52, /* 252 GETCOOKIE( */
	x14cf7, /* 253 VS_COLOR( */
	x14d03, /* 254 EJP? */
	x14d03, /* 255 _P */

	/* secondary function table #209 */
	x58d64, /*   0 VQ_COLOR( */
	x14d03, /*   1 _MINT */
	x14d03, /*   2 _SW */
	x14d03, /*   3 _SH */
	x14cfa, /*   4 VRO_CPYFM( */
	x14cf4, /*   5 VRT_CPYFM( */
	x14cfd, /*   6 V_OPNBM( */
	x14d03, /*   7 V_CLSBM( */
	x14d00, /*   8 DOSOUND( */
	x14cfd, /*   9 MXALLOC( */
	x14d00, /*  10 KBSHIFT( */
	x14d03, /*  11 DGETDRV( */
	x14d00, /*  12 SYSCONF( */
	x14cfa, /*  13 SSYSTEM( */
	x14d03, /*  14 VQ_VGDOS() */
	x14f6e, /*  15 VST_ALIGNMENT( */
	x14cf7, /*  16 PEXEC( */
	x14d00, /*  17 PDOMAIN( */
	x14d03, /*  18 _GEMDOS */
	x14d03, /*  19 TGETDATE() */
	x14d03, /*  20 TGETTIME() */
	x14f8a, /*  21 VST_POINT( */
	x14f8a, /*  22 APPL_GETINFO( */
	x14f92, /*  23 APPL_CONTROL( */
	x14f6a, /*  24 OBJC_SYSVAR( */
	x58dd0, /*  25 FSEL_EXINPUT( */
	x14cfa, /*  26 KEYTBL( */
	x14d03, /*  27 LOCKSND() */
	x14d03, /*  28 UNLOCKSND() */
	x14cfd, /*  29 SOUNDCMD( */
	x14cfa, /*  30 SETBUFFER( */
	x14d00, /*  31 SETMODE( */
	x14cfd, /*  32 SETTRACKS( */
	x14d00, /*  33 SETMONTRACKS( */
	x14cfd, /*  34 SETINTERRUPT( */
	x14d00, /*  35 BUFFOPER( */
	x14cfd, /*  36 DSPTRISTATE( */
	x14cfd, /*  37 GPIO( */
	x14cf4, /*  38 DEVCONNECT( */
	x14d00, /*  39 SNDSTATUS( */
	x14d00, /*  40 BUFFPTR( */
	x58d67, /*  41 VQT_WIDTH( */
	x58d6a, /*  42 VQT_FONTINFO( */
	x14c8e, /*  43 FOPEN( */
	x14d00, /*  44 FCLOSE( */
	x14cfa, /*  45 FREAD( */
	x14cfa, /*  46 FWRITE( */
	x14c8e, /*  47 FCREATE( */
	x14cfa, /*  48 FSEEK( */
	x14d09, /*  49 FDELETE( */
	x14d00, /*  50 SUPER( */
	x14cfa, /*  51 F_BGET( */
	x14cfa, /*  52 F_BPUT( */
	x14d00, /*  53 F_EOF( */
	x14d00, /*  54 F_LOC( */
	x14d00, /*  55 F_LOF( */
	x14d03, /*  56 DTA */
	x14d03, /*  57 _CPU */
	x14d03, /*  58 SND? */
	x58edd, /*  59 F_OPEN( */
	x14cfd, /*  60 F_OUT( */
	x14cfd, /*  61 F_OUT&( */
	x14cfd, /*  62 F_OUT%( */
	x58478, /*  63 F_INP( */
	x58480, /*  64 F_INP&( */
	x58d4a, /*  65 F_INP%( */
	x14cfa, /*  66 ALLOC( */
	x14f55, /*  67 F_LINE_OUTPUT( */
	x14f4a, /*  68 F_LINE_INPUT( */
	x14c8e, /*  69 F_BLOAD( */
	x587a9, /*  70 F_BSAVE( */
	x14cfd, /*  71 F_SEEK( */
	x14cfd, /*  72 F_RELSEEK( */
	x14f6e, /*  73 V_GET_PIXEL( */
	x14d03, /*  74 GSTICK() */
	x14d03, /*  75 GSTRIG() */
	x14d00, /*  76 BLITMODE( */
	x14cfd, /*  77 CACHECTRL( */
	x14d00, /*  78 CT60_CACHE( */
	x14d03, /*  79 CT60_FLUSH_CACHE() */
	x14d00, /*  80 CT60_READ_CORE_TEMPERATURE( */
	x14cfa, /*  81 CT60_RW_PARAMETER( */
	x14cfd, /*  82 CT60_VMALLOC( */
	x14cfd, /*  83 FGETCHAR( */
	x14cfa, /*  84 FPUTCHAR( */
	x14d03, /*  85 WIND_NEW() */
	x14d03, /*  86 APPL_YIELD() */
	x14d03, /*  87 V_SHOW_C() */
	x14d03, /*  88 V_HIDE_C() */
	x14f55, /*  89 F_INPUT( */
	x58e05, /*  90 F_OUTPUT( */
	x14f55, /*  91 PREAD( */
	x14f4a, /*  92 PWRITE( */
	x14d00, /*  93 JOYPAD( */
	x14cfd, /*  94 UNPACK( */
	x14f52, /*  95 BINSTR( */
	x14cfa, /*  96 BFIND( */
	x14cfa, /*  97 BCOUNT( */
	x14d09, /*  98 ISASCII( */
	x14d00, /*  99 BSWAP&( */
	x14d00, /* 100 BSWAP( */
	x14d09, /* 101 CCONWS( */
	x14d00, /* 102 DSETDRV( */
	x14d09, /* 103 DCREATE( */
	x14d09, /* 104 DDELETE( */
	x14d00, /* 105 TSETDATE( */
	x14d00, /* 106 TSETTIME( */
	x5855f, /* 107 DGETPATH( */
	x14d09, /* 108 DSETPATH( */
	x14d03, /* 109 GETTIME() */
	x14d00, /* 110 SETTIME( */
	x58ed8, /* 111 FRENAME( */
	x14d03, /* 112 DRVMAP() */
	x14cfa, /* 113 FDATIME( */
	x14c8e, /* 114 DPATHCONF( */
	x587a9, /* 115 FATTRIB( */
	x14cfd, /* 116 DFREE%( */
	x14d03, /* 117 RANDOM%() */
	x14d03, /* 118 GETREZ() */
	x14d03, /* 119 LOGBASE() */
	x14d03, /* 120 PHYSBASE() */
	x14d09, /* 121 V_CURTEXT( */
	x14d00, /* 122 VST_COLOR( */
	x14d00, /* 123 VST_EFFECTS( */
	x14d00, /* 124 VST_ROTATION( */
	x14f8a, /* 125 VST_HEIGHT( */
	x14d00, /* 126 VST_FONT( */
	x14d03, /* 127 VQF_ATTRIBUTES() */
	x14d03, /* 128 VQL_ATTRIBUTES() */
	x14d03, /* 129 VQM_ATTRIBUTES() */
	x14d03, /* 130 VQT_ATTRIBUTES() */
	x14cfd, /* 131 VR_TRNFM( */
	x14d00, /* 132 VQ_EXTND( */
	x14d00, /* 133 VQ_SCRNINFO( */
	x58ea0, /* 134 V_BEZ( */
	x58480, /* 135 V_BEZ_QUAL( */
	x58d6a, /* 136 VQ_MOUSE( */
	x14d00, /* 137 VSL_TYPE( */
	x14d00, /* 138 VSL_WIDTH( */
	x14cfd, /* 139 VSL_ENDS( */
	x14d00, /* 140 VSL_UDSTY( */
	x14d00, /* 141 VSL_COLOR( */
	x14d00, /* 142 VSM_COLOR( */
	x14d00, /* 143 VSM_HEIGHT( */
	x14d00, /* 144 VSM_TYPE( */
	x14d00, /* 145 VSWR_MODE( */
	x14d00, /* 146 VSF_COLOR( */
	x14d00, /* 147 VSF_INTERIOR( */
	x14d00, /* 148 VSF_PERIMETER( */
	x14d00, /* 149 VSF_STYLE( */
	x14d00, /* 150 VSF_UDPAT( */
	x14d00, /* 151 BCONIN( */
	x14cfd, /* 152 BCONOUT( */
	x14d00, /* 153 BCOSTAT( */
	x14d00, /* 154 BCONSTAT( */
	x14cfd, /* 155 SETEXC( */
	x14d03, /* 156 TICKCAL( */
	x14d00, /* 157 MEDIACH( */
	x14d00, /* 158 GETBPB( */
	x14cf4, /* 159 RWABS( */
	x14cfa, /* 160 FORM_POPUP( */
	x14cf7, /* 161 MENU_ATTACH( */
	x14cf7, /* 162 MENU_ISTART( */
	x14cf7, /* 163 MENU_POPUP( */
	x14cfd, /* 164 MENU_SETTINGS( */
	x14cf4, /* 165 OBJC_XFIND( */
	x14d00, /* 166 RSRC_RCFIX( */
	x58ea8, /* 167 APPL_SEARCH( */
	x14f66, /* 168 GRAF_MULTIRUBBER( */
	x14cf4, /* 169 VS_CLIP( */
	x14d03, /* 170 VSC_FORM() */
	x14d00, /* 171 FDUP( */
	x14cfd, /* 172 FFORCE( */
	x14cf7, /* 173 FLOCK( */
	x14d03, /* 174 SYIELD() */
	x14d00, /* 175 FINSTAT( */
	x14d00, /* 176 FOUTSTAT( */
	x14cfa, /* 177 FCNTL( */
	x14cf7, /* 178 FSELECT( */
	x14d00, /* 179 SHUTDOWN( */
	x14cf1, /* 180 PSYSCTL( */
	x14cf7, /* 181 V_BAR( */
	x14cf7, /* 182 V_RBOX( */
	x14cf7, /* 183 V_RFBOX( */
	x14cf7, /* 184 VR_RECFL( */
	x14cf4, /* 185 V_ARC( */
	x14cfa, /* 186 V_CIRCLE( */
	x14cf1, /* 187 V_ELLARC( */
	x14cf1, /* 188 V_ELLPIE( */
	x14cf7, /* 189 V_ELLIPSE( */
	x14cf4, /* 190 V_PIESLICE( */
	x14cfa, /* 191 V_CONTOURFILL( */
	x14f52, /* 192 V_GTEXT( */
	x14d00, /* 193 V_PLINE( */
	x14d00, /* 194 V_PMARKER( */
	x14d00, /* 195 V_FILLAREA( */
	x58e23, /* 196 V_JUSTIFIED( */
	x58483, /* 197 VQ_KEY_S( */
	x58ea0, /* 198 V_BEZ_FILL( */
	x14cfd, /* 199 SETCOLOR( */
	x14cfa, /* 200 SETSCREEN( */
	x14d00, /* 201 SETPALETTE( */
	x14d00, /* 202 SUPEXEC( */
	x14cfd, /* 203 KBRATE( */
	x14cf1, /* 204 RSCONF( */
	x14cfd, /* 205 CURSCONF( */
	x14d00, /* 206 BCONMAP( */
	x14d03, /* 207 KBDVBASE() */
	x14cf7, /* 208 NVMACCESS( */
	x14d00, /* 209 IOREC( */
	x14cfd, /* 210 IKBDWS( */
	x14cfd, /* 211 MIDIWS( */
	x14cfd, /* 212 GIACCESS( */
	x14cee, /* 213 FLOPRD( */
	x14cee, /* 214 FLOPWR( */
	x14ce8, /* 215 FLOPFMT( */
	x14cee, /* 216 FLOPVER( */
	x14cfd, /* 217 FLOPRATE( */
	x14cf7, /* 218 DMAREAD( */
	x14cf7, /* 219 DMAWRITE( */
	x14d00, /* 220 ONGIBIT( */
	x14d00, /* 221 OFFGIBIT( */
	x14d03, /* 222 BIOSKEYS() */
	x14d00, /* 223 SETPRT( */
	x14d00, /* 224 JDISINT( */
	x14d00, /* 225 JENABINT( */
	x14cf7, /* 226 PROTOBT( */
	x14d00, /* 227 WAKETIME( */
	x14d00, /* 228 PRTBLK( */
	x14d03, /* 229 VGETMONITOR() */
	x14d00, /* 230 VGETSIZE( */
	x14d00, /* 231 VSETMODE( */
	x14d00, /* 232 VCHECKMODE( */
	x14cf7, /* 233 VSETSCREEN( */
	x14cfa, /* 234 VGETRGB( */
	x14cfa, /* 235 VSETRGB( */
	x14cfa, /* 236 VSETMASK( */
	x14d00, /* 237 VSETSYNC( */
	x14d03, /* 238 EGETSHIFT() */
	x14d00, /* 239 ESETSHIFT( */
	x14d00, /* 240 ESETBANK( */
	x14cfd, /* 241 ESETCOLOR( */
	x14d00, /* 242 ESETGRAY( */
	x14d00, /* 243 ESETSMEAR( */
	x14cfa, /* 244 EGETPALETTE( */
	x14cfa, /* 245 ESETPALETTE( */
	x14cfd, /* 246 CRC16( */
	x14cfd, /* 247 CRC32( */
	x14f52, /* 248 WF_NAME( */
	x14f52, /* 249 WF_INFO( */
	x58488, /* 250 ALERT( */
	x14cf1, /* 251 LRWABS( */
	x14cee, /* 252 AP_SEND( */
	x14d09, /* 253 SALERT( */
	x14c8e, /* 254 FCHMOD( */
	x14cfd, /* 255 PTERMRES( */

	/* secondary function table #210 */
	x57fbe, /*   0 SUBPTR( */
	x57fc3, /*   1 S: */
	x14d03, /*   2 ERL */
	x14d00, /*   3 SYSTAB( */
	x14d03, /*   4 SYSTAB */
	x14d03, /*   5 FREEFILE() */
	x14cfa, /*   6 MENU.TEXT( */
	x14cf4, /*   7 SHEL.WRITE( */
	x14d03, /*   8 SYSTAB? */
	x14cfd, /*   9 MROUND( */
	x14d00, /*  10 BSWAP3( */
	x14d00, /*  11 MIRROR|( */
	x14d00, /*  12 MIRROR&( */
	x14d00, /*  13 MIRROR( */
	x14d00, /*  14 MIRROR3( */
	x14d03, /*  15 PCR? */
	x14d00, /*  16 CONTERM( */
	x14d00, /*  17 _PCR */
	x14d09, /*  18 LOADMEM( */
	x14cfa, /*  19 OB.STATE( */
	x14cfa, /*  20 OB.FLAGS( */
	x58550, /*  21 SETSTR( */
	x58e48, /*  22 INPUTBOX( */
	x14cfa, /*  23 BCOUNT&( */
	x14cfa, /*  24 BCOUNT(% */
	x14cfd, /*  25 C_VDI(# */
	x14cfd, /*  26 C_XBIOS(# */
	x14d03, /*  27 NETWORK? */
	x14d00, /*  28 SBYTE( */
	x14d0e, /*  29 SBYTE{ */
	x14fee, /*  30 INDEXCOUNT( */
	x14cfd, /*  31 CALLOC( */
	x14fee, /*  32 ARRAYSIZE( */
	x14cfa, /*  33 OB_RADIO( */
	x14cfd, /*  34 CHECKSUM( */
	x14cfa, /*  35 FSOCKET( */
	x14cf7, /*  36 FSOCKETPAIR( */
	x14cfa, /*  37 FACCEPT( */
	x14cfa, /*  38 FCONNECT( */
	x14cfa, /*  39 FBIND( */
	x14cfd, /*  40 FRECVMSG( */
	x14cfa, /*  41 FSENDMSG( */
	x14cfa, /*  42 FLISTEN( */
	x14cf1, /*  43 FRECVFROM( */
	x14cf1, /*  44 FSENDTO( */
	x14cf4, /*  45 FSETSOCKOPT( */
	x14cf4, /*  46 FGETSOCKOPT( */
	x14cfa, /*  47 FGETPEERNAME( */
	x14cfa, /*  48 FGETSOCKNAME( */
	x14cfd, /*  49 FSHUTDOWN( */
	x14d03, /*  50 LDG_INIT() */
	x14d09, /*  51 LDG_OPEN( */
	x14c8e, /*  52 LDG_FIND( */
	x14d00, /*  53 LDG_CLOSE( */
	x14f4d, /*  54 LDG_LIBPATH( */
	x14d03, /*  55 LDG_ERROR() */
	x58efa, /*  56 STIK_INIT( */
	NULL,   /*  57 STIK_INIT( */
	x14d00, /*  58 STIK_KRFREE( */
	x14d00, /*  59 STIK_KRGETFREE( */
	NULL,   /*  60 STIK_KRGETFREE( */
	x14d00, /*  61 STIK_GET_ERR_TEXT( */
	x14d09, /*  62 STIK_GETVSTR( */
	NULL,   /*  63 STIK_GETVSTR( */
	x14cf7, /*  64 STIK_TCP_OPEN( */
	x14cfd, /*  65 STIK_TCP_CLOSE( */
	x14cfa, /*  66 STIK_TCP_SEND( */
	x14cfa, /*  67 STIK_TCP_WAIT_STATE( */
	NULL,   /*  68 STIK_TCP_WAIT_STATE( */
	NULL,   /*  69 STIK_TCP_WAIT_STATE( */
	NULL,   /*  70 STIK_TCP_WAIT_STATE( */
	NULL,   /*  71 STIK_TCP_WAIT_STATE( */
	x14d00, /*  72 STIK_CNKICK( */
	x14d00, /*  73 STIK_CNBYTE_COUNT( */
	x14d00, /*  74 STIK_CNGET_CHAR( */
	NULL,   /*  75  */
	x14cfa, /*  76 STIK_CNGET_BLOCK( */
	NULL,   /*  77  */
	y132  , /*  78 STIK_RESOLVE( */
	NULL,   /*  79  */
	NULL,   /*  80  */
	NULL,   /*  81  */
	NULL,   /*  82  */
	x14d00, /*  83 STIK_CNGETINFO( */
	NULL,   /*  84  */
	NULL,   /*  85  */
	NULL,   /*  86  */
	NULL,   /*  87  */
	NULL,   /*  88  */
	x14d03, /*  89 FONT_INIT() */
	x14cf4, /*  90 FONT_SELECT( */
	x58854, /*  91 WEEKDAY( */
	x58854, /*  92 WEEKDAY( */
	x14d03, /*  93 AV_INIT() */
	x14f55, /*  94 AV_PROTOKOLL( */
	NULL,   /*  95  */
	NULL,   /*  96  */
	x14cfd, /*  97 AV_SENDKEY( */
	NULL,   /*  98  */
	NULL,   /*  99  */
	x58edd, /* 100 AV_OPENWIND( */
	x58f10, /* 101 AV_STARTPROG( */
	x14d00, /* 102 AV_ACCWINDOPEN( */
	x14d00, /* 103 AV_ACCWINDCLOSED( */
	NULL,   /* 104  */
	x14d09, /* 105 AV_PATH_UPDATE( */
	x14cfd, /* 106 AV_WHAT_IZIT( */
	NULL,   /* 107 AV_WHAT_IZIT( */
	x14d03, /* 108 AV_EXIT() */
	x14d00, /* 109 AV_STARTED( */
	x58f10, /* 110 AV_XWIND( */
	NULL,   /* 111  */
	x14d09, /* 112 AV_FILEINFO( */
	x58f10, /* 113 AV_COPYFILE( */
	x14d09, /* 114 AV_DELFILE( */
	x14d09, /* 115 VA_START( */
	x14cfd, /* 116 MAKE&( */
	x14cfd, /* 117 MAKE%( */
	x14cfd, /* 118 MAKE|( */
	x14d00, /* 119 F_CLOSE( */
	x14d00, /* 120 APPL.FIND( */
	x14d03, /* 121 ENVIRON */
	x58f03, /* 122 SLBOPEN( */
	x14d00, /* 123 SLBCLOSE( */
	x14cfd, /* 124 F_ENDSEEK( */
	y132  , /* 125 POPUP( */
	x14cfa, /* 126 FPOLL( */
	x14d09, /* 127 FILELEN( */
	x14d03, /* 128 PGETPID() */
	x14d03, /* 129 P~I */
	x14d00, /* 130 SWAP|( */
	x14cfa, /* 131 BROUND( */
	x14cfa, /* 132 BCOMPARE( */
	x14d03, /* 133 SCRDMP() */
	x14d00, /* 134 FPIPE( */
	x14d00, /* 135 PRUSAGE( */
	x14cfd, /* 136 SUPTIME( */
	x14cfa, /* 137 FMIDIPIPE( */
	x14cfa, /* 138 CONSTRAIN( */
	x14d00, /* 139 NYBLE( */
	x14cfd, /* 140 MAKE( */
	x14cfd, /* 141 MEMBTST|( */
	x14cfd, /* 142 MEMBTST&( */
	x14cfd, /* 143 MEMBTST%( */
	x587a9, /* 144 FCHOWN( */
	x14d00, /* 145 PNICE( */
	x14cfd, /* 146 PRENICE( */
	x14d03, /* 147 PGETPPID() */
	x14cfd, /* 148 DLOCK( */
	x14cfd, /* 149 PGETPRIORITY( */
	x14cfa, /* 150 PSETPRIORITY( */
	x14d03, /* 151 VSYNC() */
	x58edd, /* 152 FILECOPY( */
	x14d09, /* 153 ISBLANK( */
	x14d09, /* 154 ISCNTRL( */
	x14d09, /* 155 ISPRINT( */
	x14d09, /* 156 ISSPACE( */
	x14cf7, /* 157 RGB( */
	x14cfd, /* 158 RGB256( */
	x14cfd, /* 159 RGB1000( */
	x14d00, /* 160 WF_TOP( */
	x14d00, /* 161 PUSRVAL( */
	x14cfd, /* 162 PSETLIMIT( */
	x58edd, /* 163 DWRITELABEL( */
	x58df3, /* 164 DREADLABEL( */
	x14f4a, /* 165 DGETCWD( */
	x14d00, /* 166 DCLOSEDIR( */
	x14d00, /* 167 DREWINDDIR( */
	x14c8e, /* 168 DOPENDIR( */
	x14cfa, /* 169 DREADDIR( */
	x58d41, /* 170 DXREADDIR( */
	x587b6, /* 171 FXATTR( */
	x14cfa, /* 172 MACCESS( */
	x58d44, /* 173 MVALIDATE( */
	x14cfa, /* 174 BFIND& */
	x14cfa, /* 175 BFIND% */
	x14d09, /* 176 FEXIST( */
	x58524, /* 177 SPLIT( */
	x58531, /* 178 JOIN( */
	x58541, /* 179 GETSTR( */
	x14cfa, /* 180 BCOMPARE&( */
	x14cfa, /* 181 BCOMPARE%( */
	x58e05, /* 182 WIND_SGET( */
	x58ed8, /* 183 SHEL_HELP( */
	x58edd, /* 184 SHEL_WDEF( */
	x14f3c, /* 185 SHEL_RDEF( */
	x14cfd, /* 186 PKILL( */
	x14d03, /* 187 DHST_INIT() */
	x58e37, /* 188 DHST_ADD( */
	NULL,   /* 189  */
	x14cfd, /* 190 PSIGNAL( */
	x58df3, /* 191 LOADSTR( */
	x58567, /* 192 FILES( */
	x14d00, /* 193 MSG( */
	x14d03, /* 194 MSG */
	x14d00, /* 195 HINYBLE( */
	x14d00, /* 196 HIBYTE( */
	x14d00, /* 197 HIWORD( */
	x14d00, /* 198 HICARD( */
	NULL,   /* 199  */
	NULL,   /* 200  */
	NULL,   /* 201  */
	NULL,   /* 202  */
	x14cfd, /* 203 SETCOOKIE( */
	x14d00, /* 204 DELCOOKIE( */
	x14f6a, /* 205 FORM.KEYBD( */
	x14d00, /* 206 V_CTAB_VDI2IDX( */
	x14d00, /* 207 V_CTAB_IDX2VALUE( */
	x14cfd, /* 208 VQ_DFLT_CTAB( */
	x58497, /* 209 V_COLOR2NEAREST( */
	x584a3, /* 210 V_VALUE2COLOR( */
	x14cf4, /* 211 V_COLOR2VALUE( */
	x14cf4, /* 212 NEAREST_RGB( */
	x14cf7, /* 213 GRAYSCALE( */
	x14cfa, /* 214 DATE( */
	x14d00, /* 215 YEAR( */
	x14d00, /* 216 MONTH( */
	x14d00, /* 217 DAY( */
	x14d00, /* 218 HOUR24( */
	x14d00, /* 219 MINUTE( */
	x14d00, /* 220 SECOND( */
	x14cfa, /* 221 TIME( */
	x14d03, /* 222 _FPU */
	x14d03, /* 223 _MCH */
	x14d03, /* 224 _CPUID */
	x14d03, /* 225 COMPILED? */
	x14d03, /* 226 M68K? */
	x14d03, /* 227 _VERSION */
	x14d03, /* 228 _CW */
	x14d03, /* 229 _CH */
	x14d03, /* 230 _0 */
	x14d03, /* 231 _1 */
	x14d03, /* 232 _2 */
	x14d03, /* 233 _3 */
	x14d03, /* 234 _4 */
	x14d03, /* 235 _5 */
	x14d03, /* 236 _6 */
	x14d03, /* 237 _7 */
	x14d03, /* 238 _8 */
	x14d03, /* 239 _9 */
	x14d03, /* 240 _BUILDINFO */
	x14d03, /* 241 _CF_ */
	x14d03, /* 242 G~H */
	x14d03, /* 243 G~R */
	x14cfa, /* 244 BMPSIZE( */
	x14d03, /* 245 _DX */
	x14d03, /* 246 _DY */
	x14d03, /* 247 _DW */
	x14d03, /* 248 _DH */
	x14d03, /* 249 ACC? */
	x14d03, /* 250 AUTO? */
	x14d03, /* 251 FPU? */
	x14d03, /* 252 CPU020? */
	x14d03, /* 253 DMASND? */
	x58860, /* 254 DAYNO( */
	x58860, /* 255  */

	/* secondary function table #211 */
	x14d00, /*   0 LEAP( */
	x5886c, /*   1 WEEK( */
	x5886c, /*   2  */
	x14d00, /*   3 HOUR12( */
	x14d00, /*   4 MERIDIEM( */
	x14d03, /*   5 JPEGD_INIT() */
	x14d00, /*   6 JPEGD_OPENDRIVER( */
	x14d00, /*   7 JPEGD_CLOSEDRIVER( */
	x14d03, /*   8 JPEGD_GETSTRUCTSIZE() */
	x14d00, /*   9 JPEGD_GETIMAGEINFO( */
	x14d00, /*  10 JPEGD_GETIMAGESIZE( */
	x14d00, /*  11 JPEGD_DECODEIMAGE( */
	x14cf7, /*  12 DSP_DOBLOCK( */
	x14cf7, /*  13 DSP_BLKHANDSHAKE( */
	x14cf7, /*  14 DSP_BLKUNPACKED( */
	x14cf7, /*  15 DSP_INSTREAM( */
	x14cf7, /*  16 DSP_OUTSTREAM( */
	x14cf1, /*  17 DSP_IOSTREAM( */
	x14d00, /*  18 DSP_REMOVEINTERRUPTS( */
	x14d03, /*  19 DSP_GETWORDSIZE() */
	x14d03, /*  20 DSP_LOCK() */
	x14d03, /*  21 DSP_UNLOCK() */
	x58efa, /*  22 DSP_AVAILABLE( */
	x14cfd, /*  23 DSP_RESERVE( */
	x587a9, /*  24 DSP_LOADPROG( */
	x14cfa, /*  25 DSP_EXECPROG( */
	x14cfa, /*  26 DSP_EXECBOOT( */
	x14c8e, /*  27 DSP_LODTOBINARY( */
	x14d00, /*  28 DSP_TRIGGERHC( */
	x14d03, /*  29 DSP_REQUESTUNIQUEABILITY() */
	x14d03, /*  30 DSP_GETPROGABILITY() */
	x14d03, /*  31 DSP_FLUSHSUBROUTINES() */
	x14cfa, /*  32 DSP_LOADSUBROUTINE( */
	x14d00, /*  33 DSP_INQSUBRABILITY( */
	x14d00, /*  34 DSP_RUNSUBROUTINE( */
	x14d00, /*  35 DSP_HF0( */
	x14d00, /*  36 DSP_HF1( */
	x14d03, /*  37 DSP_HF2() */
	x14d03, /*  38 DSP_HF3() */
	x14cf7, /*  39 DSP_BLKWORDS( */
	x14cf7, /*  40 DSP_BLKBYTES( */
	x14d03, /*  41 DSP_HSTAT() */
	x14cfd, /*  42 DSP_SETVECTORS( */
	x14cf7, /*  43 DSP_MULTBLOCKS( */
	x14cfa, /*  44 VR_TRANSFER_BITS( */
	x14cfd, /*  45 V_CREATE_CTAB( */
	x14d00, /*  46 V_DELETE_CTAB( */
	x14cfd, /*  47 V_CREATE_ITAB( */
	x14d00, /*  48 V_DELETE_ITAB( */
	x58efe, /*  49 VQ_PX_FORMAT( */
	x14d03, /*  50 V_GET_CTAB_ID() */
	x58ea8, /*  51 VQT_EXT_NAME( */
	x14cf1, /*  52 V_OPEN_BM( */
	x14cf7, /*  53 V_RESIZE_BM( */
	x14d03, /*  54 V_HARDCOPY() */
	x58e70, /*  55 VST_NAME( */
	x58e70, /*  56 VQT_NAME_AND_ID( */
	x14cf4, /*  57 VST_FG_COLOR( */
	x14cf4, /*  58 VSF_FG_COLOR( */
	x14cf4, /*  59 VSL_FG_COLOR( */
	x14cf4, /*  60 VSM_FG_COLOR( */
	x14cf4, /*  61 VSR_FG_COLOR( */
	x584a6, /*  62 VQT_FG_COLOR( */
	x584a6, /*  63 VQF_FG_COLOR( */
	x584a6, /*  64 VQL_FG_COLOR( */
	x584a6, /*  65 VQM_FG_COLOR( */
	x584a6, /*  66 VQR_FG_COLOR( */
	x14cf4, /*  67 VST_BG_COLOR( */
	x14cf4, /*  68 VSF_BG_COLOR( */
	x14cf4, /*  69 VSL_BG_COLOR( */
	x14cf4, /*  70 VSM_BG_COLOR( */
	x14cf4, /*  71 VSR_BG_COLOR( */
	x584a6, /*  72 VQT_BG_COLOR( */
	x584a6, /*  73 VQF_BG_COLOR( */
	x584a6, /*  74 VQL_BG_COLOR( */
	x584a6, /*  75 VQM_BG_COLOR( */
	x584a6, /*  76 VQR_BG_COLOR( */
	x14cf4, /*  77 VS_HILITE_COLOR( */
	x14cf4, /*  78 VS_MIN_COLOR( */
	x14cf4, /*  79 VS_MAX_COLOR( */
	x14cf4, /*  80 VS_WEIGHT_COLOR( */
	x584a6, /*  81 VQ_HILITE_COLOR( */
	x584a6, /*  82 VQ_MIN_COLOR( */
	x584a6, /*  83 VQ_MAX_COLOR( */
	x584a6, /*  84 VQ_WEIGHT_COLOR( */
	x14cf7, /*  85 V_SETRGB( */
	x14d00, /*  86 SUPERSCALAR( */
	x14cf7, /*  87 VQT_XFNTINFO( */
	x14cfd, /*  88 OB_SELECTED( */
	x14cfd, /*  89 OB_CROSSED( */
	x14cfd, /*  90 OB_CHECKED( */
	x14cfd, /*  91 OB_DISABLED( */
	x14cfd, /*  92 OB_OUTLINED( */
	x14cfd, /*  93 OB_SHADOWED( */
	x14cfd, /*  94 OB_WHITEBAK( */
	NULL,   /*  95  */
	x14cfd, /*  96 OB_SELECTABLE( */
	x14cfd, /*  97 OB_DEFAULT( */
	x14cfd, /*  98 OB_EXIT( */
	x14cfd, /*  99 OB_EDITABLE( */
	x14cfd, /* 100 OB_RBUTTON( */
	x14cfd, /* 101 OB_LASTOB( */
	x14cfd, /* 102 OB_TOUCHEXIT( */
	x14cfd, /* 103 OB_HIDETREE( */
	x14cfd, /* 104 OB_INDIRECT( */
	x14cfd, /* 105 OB_FL3DIND( */
	x14cfd, /* 106 OB_FL3DACT( */
	x14cfd, /* 107 OB_SUBMENU( */
	NULL,   /* 108  */
	x14cfd, /* 109 OB_FL3DBAK( */
	x14cfd, /* 110 BF_OBSPEC( */
	x14cfd, /* 111 BF_CHARACTER( */
	x14cfd, /* 112 BF_FRAMESIZE( */
	x14cfd, /* 113 BF_FRAMECOL( */
	x14cfd, /* 114 BF_TEXTCOL( */
	x14cfd, /* 115 BF_TEXTMODE( */
	x14cfd, /* 116 BF_FILLPATTERN( */
	x14cfd, /* 117 BF_INTERIORCOL( */
	x14cfd, /* 118 BI_PDATA( */
	x14cfd, /* 119 BI_WB( */
	x14cfd, /* 120 BI_HL( */
	x14cfd, /* 121 BI_X( */
	x14cfd, /* 122 BI_Y( */
	x14cfd, /* 123 BI_COLOR( */
	x14cfd, /* 124 UB_CODE( */
	x14cfd, /* 125 UB_PARM( */
	x14cfd, /* 126 TE_PTEXT( */
	x14cfd, /* 127 TE_PTMPLT( */
	x14cfd, /* 128 TE_PVALID( */
	x14cfd, /* 129 TE_FONT( */
	x14cfd, /* 130 TE_FONTID( */
	x14cfd, /* 131 TE_JUST( */
	x14cfd, /* 132 TE_COLOR( */
	x14cfd, /* 133 TE_FONTSIZE( */
	x14cfd, /* 134 TE_THICKNESS( */
	x14cfd, /* 135 TE_TXTLEN( */
	x14cfd, /* 136 TE_TMPLEN( */
	x14cfd, /* 137 TE_FRAMECOL( */
	x14cfd, /* 138 TE_TEXTCOL( */
	x14cfd, /* 139 TE_TEXTMODE( */
	x14cfd, /* 140 TE_FILLPATTERN( */
	x14cfd, /* 141 TE_INTERIORCOL( */
	x14cfd, /* 142 IB_PMASK( */
	x14cfd, /* 143 IB_PDATA( */
	x14cfd, /* 144 IB_PTEXT( */
	x14cfd, /* 145 IB_CHAR( */
	x14cfd, /* 146 IB_XCHAR( */
	x14cfd, /* 147 IB_YCHAR( */
	x14cfd, /* 148 IB_XICON( */
	x14cfd, /* 149 IB_YICON( */
	x14cfd, /* 150 IB_WICON( */
	x14cfd, /* 151 IB_HICON( */
	x14cfd, /* 152 IB_XTEXT( */
	x14cfd, /* 153 IB_YTEXT( */
	x14cfd, /* 154 IB_WTEXT( */
	x14cfd, /* 155 IB_HTEXT( */
	x14cfd, /* 156 IB_FCOLOR( */
	x14cfd, /* 157 IB_BCOLOR( */
	x14cfd, /* 158 IB_LETTER( */
	x14cfd, /* 159 CI_MAINLIST( */
	x14cfd, /* 160 CI_NUM_PLANES( */
	x14cfd, /* 161 CI_COL_DATA( */
	x14cfd, /* 162 CI_COL_MASK( */
	x14cfd, /* 163 CI_SEL_DATA( */
	x14cfd, /* 164 CI_SEL_MASK( */
	x14cfd, /* 165 CI_NEXT_RES( */
	x14d00, /* 166 V_CTAB_IDX2VDI( */
	x14d03, /* 167 VQ_CTAB_ID() */
	x584a3, /* 168 VQ_CTAB_ENTRY( */
	x14cfd, /* 169 VQ_CTAB( */
	x14d03, /* 170 VS_DFLT_CTAB() */
	x14cf1, /* 171 VS_CTAB_ENTRY( */
	x14d00, /* 172 VS_CTAB( */
	x14d03, /* 173 VR_CLIP_RECTS_BY_DST() */
	x14d03, /* 174 VR_CLIP_RECTS_BY_SRC() */
	x14f4a, /* 175 VQT_FONTHEADER( */
	x14f8a, /* 176 VST_WIDTH( */
	x14d03, /* 177 V_CLEAR_DISP_LIST() */
	x58d35, /* 178 VEX_TIMV( */
	x58d4a, /* 179 VEX_BUTV( */
	x58d4a, /* 180 VEX_MOTV( */
	x58d4a, /* 181 VEX_CURV( */
	x14cfa, /* 182 INITMOUS( */
	x58df3, /* 183 FREADLINK( */
	x58e60, /* 184 INPUTRADIO( */
	x59d80, /* 185 PIXEL24( */
	x14f55, /* 186 CWRITE( */
	x14f4a, /* 187 CREAD( */
	x14d03, /* 188 SUPER? */
	x59d80, /* 189 PIXEL32( */
	x59d80, /* 190 PIXEL16( */
	x14d03, /* 191 V_BEZ_ON() */
	x14d03, /* 192 V_BEZ_OFF() */
	x59be7, /* 193 VQ_CHCELLS( */
	x14ceb, /* 194 RC_EQUAL( */
	x14f87, /* 195 OB_XYWH( */
	x59d80, /* 196 PIXEL15( */
	x14d00, /* 197 PUMASK( */
	x58edd, /* 198 FLINK( */
	x58edd, /* 199 FSYMLINK( */
	x14d03, /* 200 _BOOTDEV */
	x14cfd, /* 201 STRUCT!( */
	x14cfd, /* 202 STRUCT|( */
	x14cfd, /* 203 STRUCT&( */
	x14cfd, /* 204 STRUCT%( */
	x14cfd, /* 205 STRUCT( */
	x14cf7, /* 206 PIXEL8C( */
	x14cf7, /* 207 PIXEL1M( */
	x14cf7, /* 208 PIXEL8P( */
	x14cf7, /* 209 PIXEL4P( */
	x14cf7, /* 210 PIXEL2P( */
	x14d00, /* 211 MDPEEK( */
	x14d00, /* 212 MLPEEK( */
	x14d03, /* 213 _GLOBAL */
	x14d03, /* 214 MULTITASK? */
	x14d00, /* 215 USERDEF|( */
	x14d03, /* 216 USERDEFBYT */
	x14d00, /* 217 USERDEF&( */
	x14d03, /* 218 USERDEFWRD */
	x14d00, /* 219 USERDEF%( */
	x14d03, /* 220 USERDEFLNG */
	x14d00, /* 221 USERDEF!( */
	x14d03, /* 222 USERDEFBIT */
	x14d03, /* 223 _BMPSIZE */
	x14d00, /* 224 PSIGBLOCK( */
	x14d00, /* 225 PSIGSETMASK( */
	x14d00, /* 226 TALARM( */
	x14d00, /* 227 TMALARM( */
	x14d03, /* 228 PAUSE() */
	x14d03, /* 229 PSIGPENDING() */
	x14d00, /* 230 PSIGPAUSE( */
	x14cfa, /* 231 PSIGACTION( */
	x14cf7, /* 232 PTRACE( */
	x14d03, /* 233 SYNC() */
	x14d00, /* 234 FSYNC( */
	x14d00, /* 235 SREALLOC( */
	x14cfa, /* 236 PMSG( */
	x14d03, /* 237 PFORK() */
	x14d03, /* 238 PVFORK() */
	x14d03, /* 239 PWAIT() */
	x14cfd, /* 240 PWAIT3( */
	x14cfa, /* 241 PWAITPID( */
	x14d03, /* 242 PGETGID() */
	x14d00, /* 243 PSETGID( */
	x14d03, /* 244 PGETUID() */
	x14d00, /* 245 PSETUID( */
	x14cfd, /* 246 ARRAY!( */
	x14cfd, /* 247 ARRAY|( */
	x14cfd, /* 248 ARRAY&( */
	x14cfd, /* 249 ARRAY%( */
	x14cfd, /* 250 ARRAY( */
	x14d03, /* 251 _A3 */
	x14d03, /* 252 _A4 */
	x14d03, /* 253 _A5 */
	x14d03, /* 254 _A6 */
	x14d03, /* 255 _A7 */

	/* secondary function table #212 */
	x14d00, /*   0 GETMPB( */
	x14cfd, /*   1 MADDALT( */
	x14cfd, /*   2 MFPINT( */
	x14cf7, /*   3 XBTIMER( */
	x14d03, /*   4 PUNTAES() */
	x14d00, /*   5 SSBRK( */
	x14f52, /*   6 DBMSG( */
	x14cfd, /*   7 FFCHMOD( */
	x14cfa, /*   8 FFCHOWN( */
	x14d03, /*   9 SVERSION() */
	x587b6, /*  10 DCNTL( */
	x14d03, /*  11 CCONIN() */
	x14d00, /*  12 CCONOUT( */
	x14d03, /*  13 CAUXIN() */
	x14d00, /*  14 CAUXOUT( */
	x14d00, /*  15 CPRNOUT( */
	x14d00, /*  16 CRAWIO( */
	x14d03, /*  17 CRAWCIN() */
	x14d03, /*  18 CNECIN() */
	x14d03, /*  19 CCONIS() */
	x14d03, /*  20 CCONOS() */
	x14d03, /*  21 CAUXIS() */
	x14d03, /*  22 CAUXOS() */
	x14d03, /*  23 CPRNOS() */
	x14f4d, /*  24 CCONRS( */
	x14d03, /*  25 PGETPGRP() */
	x14cfd, /*  26 PSETPGRP( */
	x14cfd, /*  27 PGETGROUPS( */
	x14cfd, /*  28 PSETGROUPS( */
	x14d03, /*  29 PGETAUID() */
	x14d00, /*  30 PSETAUID( */
	x14d03, /*  31 PGETEUID() */
	x14d00, /*  32 PSETEUID( */
	x14d03, /*  33 PGETEGID() */
	x14d00, /*  34 PSETEGID( */
	x14cfd, /*  35 PSETREUID( */
	x14cfd, /*  36 PSETREGID( */
	x14cfa, /*  37 PSEMAPHORE( */
	x59c1f, /*  38 TSETITIMER( */
	x14cfd, /*  39 TADJTIME( */
	x14cfd, /*  40 TGETTIMEOFDAY( */
	x14cfd, /*  41 TSETTIMEOFDAY( */
	x14d03, /*  42 PTERM0() */
	x14d00, /*  43 PTERM( */
	x14cfa, /*  44 FREADV( */
	x14cfa, /*  45 FWRITEV( */
	x14d09, /*  46 DCHROOT( */
	x587b6, /*  47 FSTAT64( */
	x14cfd, /*  48 FFSTAT64( */
	y132  , /*  49 FCHOWN16( */
	x14d00, /*  50 FCHDIR( */
	x14d00, /*  51 FFDOPENDIR( */
	x14d00, /*  52 FDIRFD( */
	x14cfa, /*  53 REALLOC( */
	x59be7, /*  54 VQ_CURADDRESS( */
	x14cfd, /*  55 V_CURADDRESS( */
	x14d03, /*  56 V_RVON() */
	x14d03, /*  57 V_RVOFF() */
	x14d03, /*  58 V_EXIT_CUR() */
	x14d03, /*  59 V_ENTER_CUR() */
	x14d03, /*  60 V_CURUP() */
	x14d03, /*  61 V_CURDOWN() */
	x14d03, /*  62 V_CURRIGHT() */
	x14d03, /*  63 V_CURLEFT() */
	x14d03, /*  64 V_CURHOME() */
	x14d03, /*  65 VQ_TABSTATUS() */
	x14d03, /*  66 V_EEOL() */
	x14d03, /*  67 V_EEOS() */
	x14d03, /*  68 V_RMCUR() */
	x14cfd, /*  69 V_DSPCUR( */
	NULL,   /*  70 */
	NULL,   /*  71 */
	NULL,   /*  72 */
	NULL,   /*  73 */
	NULL,   /*  74 */
	NULL,   /*  75 */
	NULL,   /*  76 */
	NULL,   /*  77 */
	NULL,   /*  78 */
	NULL,   /*  79 */
	NULL,   /*  80 */
	NULL,   /*  81 */
	NULL,   /*  82 */
	NULL,   /*  83 */
	NULL,   /*  84 */
	NULL,   /*  85 */
	NULL,   /*  86 */
	NULL,   /*  87 */
	NULL,   /*  88 */
	NULL,   /*  89 */
	NULL,   /*  90 */
	NULL,   /*  91 */
	NULL,   /*  92 */
	NULL,   /*  93 */
	NULL,   /*  94 */
	NULL,   /*  95 */
	NULL,   /*  96 */
	NULL,   /*  97 */
	NULL,   /*  98 */
	NULL,   /*  99 */
	NULL,   /* 100 */
	NULL,   /* 101 */
	NULL,   /* 102 */
	NULL,   /* 103 */
	NULL,   /* 104 */
	NULL,   /* 105 */
	NULL,   /* 106 */
	NULL,   /* 107 */
	NULL,   /* 108 */
	NULL,   /* 109 */
	NULL,   /* 110 */
	NULL,   /* 111 */
	NULL,   /* 112 */
	NULL,   /* 113 */
	NULL,   /* 114 */
	NULL,   /* 115 */
	NULL,   /* 116 */
	NULL,   /* 117 */
	NULL,   /* 118 */
	NULL,   /* 119 */
	NULL,   /* 120 */
	NULL,   /* 121 */
	NULL,   /* 122 */
	NULL,   /* 123 */
	NULL,   /* 124 */
	NULL,   /* 125 */
	NULL,   /* 126 */
	NULL,   /* 127 */
	NULL,   /* 128 */
	NULL,   /* 129 */
	NULL,   /* 130 */
	NULL,   /* 131 */
	NULL,   /* 132 */
	NULL,   /* 133 */
	NULL,   /* 134 */
	NULL,   /* 135 */
	NULL,   /* 136 */
	NULL,   /* 137 */
	NULL,   /* 138 */
	NULL,   /* 139 */
	NULL,   /* 140 */
	NULL,   /* 141 */
	NULL,   /* 142 */
	NULL,   /* 143 */
	NULL,   /* 144 */
	NULL,   /* 145 */
	NULL,   /* 146 */
	NULL,   /* 147 */
	NULL,   /* 148 */
	NULL,   /* 149 */
	NULL,   /* 150 */
	NULL,   /* 151 */
	NULL,   /* 152 */
	NULL,   /* 153 */
	NULL,   /* 154 */
	NULL,   /* 155 */
	NULL,   /* 156 */
	NULL,   /* 157 */
	NULL,   /* 158 */
	NULL,   /* 159 */
	NULL,   /* 160 */
	NULL,   /* 161 */
	NULL,   /* 162 */
	NULL,   /* 163 */
	NULL,   /* 164 */
	NULL,   /* 165 */
	NULL,   /* 166 */
	NULL,   /* 167 */
	NULL,   /* 168 */
	NULL,   /* 169 */
	NULL,   /* 170 */
	NULL,   /* 171 */
	NULL,   /* 172 */
	NULL,   /* 173 */
	NULL,   /* 174 */
	NULL,   /* 175 */
	NULL,   /* 176 */
	NULL,   /* 177 */
	NULL,   /* 178 */
	NULL,   /* 179 */
	NULL,   /* 180 */
	NULL,   /* 181 */
	NULL,   /* 182 */
	NULL,   /* 183 */
	NULL,   /* 184 */
	NULL,   /* 185 */
	NULL,   /* 186 */
	NULL,   /* 187 */
	NULL,   /* 188 */
	NULL,   /* 189 */
	NULL,   /* 190 */
	NULL,   /* 191 */
	NULL,   /* 192 */
	NULL,   /* 193 */
	NULL,   /* 194 */
	NULL,   /* 195 */
	NULL,   /* 196 */
	NULL,   /* 197 */
	NULL,   /* 198 */
	NULL,   /* 199 */
	NULL,   /* 200 */
	NULL,   /* 201 */
	NULL,   /* 202 */
	NULL,   /* 203 */
	NULL,   /* 204 */
	NULL,   /* 205 */
	NULL,   /* 206 */
	NULL,   /* 207 */
	NULL,   /* 208 */
	NULL,   /* 209 */
	NULL,   /* 210 */
	NULL,   /* 211 */
	NULL,   /* 212 */
	NULL,   /* 213 */
	NULL,   /* 214 */
	NULL,   /* 215 */
	NULL,   /* 216 */
	NULL,   /* 217 */
	NULL,   /* 218 */
	NULL,   /* 219 */
	NULL,   /* 220 */
	NULL,   /* 221 */
	NULL,   /* 222 */
	NULL,   /* 223 */
	NULL,   /* 224 */
	NULL,   /* 225 */
	NULL,   /* 226 */
	NULL,   /* 227 */
	NULL,   /* 228 */
	NULL,   /* 229 */
	NULL,   /* 230 */
	NULL,   /* 231 */
	NULL,   /* 232 */
	NULL,   /* 233 */
	NULL,   /* 234 */
	NULL,   /* 235 */
	NULL,   /* 236 */
	NULL,   /* 237 */
	NULL,   /* 238 */
	NULL,   /* 239 */
	NULL,   /* 240 */
	NULL,   /* 241 */
	NULL,   /* 242 */
	NULL,   /* 243 */
	NULL,   /* 244 */
	NULL,   /* 245 */
	NULL,   /* 246 */
	NULL,   /* 247 */
	NULL,   /* 248 */
	NULL,   /* 249 */
	NULL,   /* 250 */
	NULL,   /* 251 */
	NULL,   /* 252 */
	NULL,   /* 253 */
	NULL,   /* 254 */
	NULL,   /* 255 */

	/* secondary function table #213 */
	NULL,   /*   0 */
	NULL,   /*   1 */
	NULL,   /*   2 */
	NULL,   /*   3 */
	NULL,   /*   4 */
	NULL,   /*   5 */
	NULL,   /*   6 */
	NULL,   /*   7 */
	NULL,   /*   8 */
	NULL,   /*   9 */
	NULL,   /*  10 */
	NULL,   /*  11 */
	NULL,   /*  12 */
	NULL,   /*  13 */
	NULL,   /*  14 */
	NULL,   /*  15 */
	NULL,   /*  16 */
	NULL,   /*  17 */
	NULL,   /*  18 */
	NULL,   /*  19 */
	NULL,   /*  20 */
	NULL,   /*  21 */
	NULL,   /*  22 */
	NULL,   /*  23 */
	NULL,   /*  24 */
	NULL,   /*  25 */
	NULL,   /*  26 */
	NULL,   /*  27 */
	NULL,   /*  28 */
	NULL,   /*  29 */
	NULL,   /*  30 */
	NULL,   /*  31 */
	NULL,   /*  32 */
	NULL,   /*  33 */
	NULL,   /*  34 */
	NULL,   /*  35 */
	NULL,   /*  36 */
	NULL,   /*  37 */
	NULL,   /*  38 */
	NULL,   /*  39 */
	NULL,   /*  40 */
	NULL,   /*  41 */
	NULL,   /*  42 */
	NULL,   /*  43 */
	NULL,   /*  44 */
	NULL,   /*  45 */
	NULL,   /*  46 */
	NULL,   /*  47 */
	NULL,   /*  48 */
	NULL,   /*  49 */
	NULL,   /*  50 */
	NULL,   /*  51 */
	NULL,   /*  52 */
	NULL,   /*  53 */
	NULL,   /*  54 */
	NULL,   /*  55 */
	NULL,   /*  56 */
	NULL,   /*  57 */
	NULL,   /*  58 */
	NULL,   /*  59 */
	NULL,   /*  60 */
	NULL,   /*  61 */
	NULL,   /*  62 */
	NULL,   /*  63 */
	NULL,   /*  64 */
	NULL,   /*  65 */
	NULL,   /*  66 */
	NULL,   /*  67 */
	NULL,   /*  68 */
	NULL,   /*  69 */
	NULL,   /*  70 */
	NULL,   /*  71 */
	NULL,   /*  72 */
	NULL,   /*  73 */
	NULL,   /*  74 */
	NULL,   /*  75 */
	NULL,   /*  76 */
	NULL,   /*  77 */
	NULL,   /*  78 */
	NULL,   /*  79 */
	NULL,   /*  80 */
	NULL,   /*  81 */
	NULL,   /*  82 */
	NULL,   /*  83 */
	NULL,   /*  84 */
	NULL,   /*  85 */
	NULL,   /*  86 */
	NULL,   /*  87 */
	NULL,   /*  88 */
	NULL,   /*  89 */
	NULL,   /*  90 */
	NULL,   /*  91 */
	NULL,   /*  92 */
	NULL,   /*  93 */
	NULL,   /*  94 */
	NULL,   /*  95 */
	NULL,   /*  96 */
	NULL,   /*  97 */
	NULL,   /*  98 */
	NULL,   /*  99 */
	NULL,   /* 100 */
	NULL,   /* 101 */
	NULL,   /* 102 */
	NULL,   /* 103 */
	NULL,   /* 104 */
	NULL,   /* 105 */
	NULL,   /* 106 */
	NULL,   /* 107 */
	NULL,   /* 108 */
	NULL,   /* 109 */
	NULL,   /* 110 */
	NULL,   /* 111 */
	NULL,   /* 112 */
	NULL,   /* 113 */
	NULL,   /* 114 */
	NULL,   /* 115 */
	NULL,   /* 116 */
	NULL,   /* 117 */
	NULL,   /* 118 */
	NULL,   /* 119 */
	NULL,   /* 120 */
	NULL,   /* 121 */
	NULL,   /* 122 */
	NULL,   /* 123 */
	NULL,   /* 124 */
	NULL,   /* 125 */
	NULL,   /* 126 */
	NULL,   /* 127 */
	NULL,   /* 128 */
	NULL,   /* 129 */
	NULL,   /* 130 */
	NULL,   /* 131 */
	NULL,   /* 132 */
	NULL,   /* 133 */
	NULL,   /* 134 */
	NULL,   /* 135 */
	NULL,   /* 136 */
	NULL,   /* 137 */
	NULL,   /* 138 */
	NULL,   /* 139 */
	NULL,   /* 140 */
	NULL,   /* 141 */
	NULL,   /* 142 */
	NULL,   /* 143 */
	NULL,   /* 144 */
	NULL,   /* 145 */
	NULL,   /* 146 */
	NULL,   /* 147 */
	NULL,   /* 148 */
	NULL,   /* 149 */
	NULL,   /* 150 */
	NULL,   /* 151 */
	NULL,   /* 152 */
	NULL,   /* 153 */
	NULL,   /* 154 */
	NULL,   /* 155 */
	NULL,   /* 156 */
	NULL,   /* 157 */
	NULL,   /* 158 */
	NULL,   /* 159 */
	NULL,   /* 160 */
	NULL,   /* 161 */
	NULL,   /* 162 */
	NULL,   /* 163 */
	NULL,   /* 164 */
	NULL,   /* 165 */
	NULL,   /* 166 */
	NULL,   /* 167 */
	NULL,   /* 168 */
	NULL,   /* 169 */
	NULL,   /* 170 */
	NULL,   /* 171 */
	NULL,   /* 172 */
	NULL,   /* 173 */
	NULL,   /* 174 */
	NULL,   /* 175 */
	NULL,   /* 176 */
	NULL,   /* 177 */
	NULL,   /* 178 */
	NULL,   /* 179 */
	NULL,   /* 180 */
	NULL,   /* 181 */
	NULL,   /* 182 */
	NULL,   /* 183 */
	NULL,   /* 184 */
	NULL,   /* 185 */
	NULL,   /* 186 */
	NULL,   /* 187 */
	NULL,   /* 188 */
	NULL,   /* 189 */
	NULL,   /* 190 */
	NULL,   /* 191 */
	NULL,   /* 192 */
	NULL,   /* 193 */
	NULL,   /* 194 */
	NULL,   /* 195 */
	NULL,   /* 196 */
	NULL,   /* 197 */
	NULL,   /* 198 */
	NULL,   /* 199 */
	NULL,   /* 200 */
	NULL,   /* 201 */
	NULL,   /* 202 */
	NULL,   /* 203 */
	NULL,   /* 204 */
	NULL,   /* 205 */
	NULL,   /* 206 */
	NULL,   /* 207 */
	NULL,   /* 208 */
	NULL,   /* 209 */
	NULL,   /* 210 */
	NULL,   /* 211 */
	NULL,   /* 212 */
	NULL,   /* 213 */
	NULL,   /* 214 */
	NULL,   /* 215 */
	NULL,   /* 216 */
	NULL,   /* 217 */
	NULL,   /* 218 */
	NULL,   /* 219 */
	NULL,   /* 220 */
	NULL,   /* 221 */
	NULL,   /* 222 */
	NULL,   /* 223 */
	NULL,   /* 224 */
	NULL,   /* 225 */
	NULL,   /* 226 */
	NULL,   /* 227 */
	NULL,   /* 228 */
	NULL,   /* 229 */
	NULL,   /* 230 */
	NULL,   /* 231 */
	NULL,   /* 232 */
	NULL,   /* 233 */
	NULL,   /* 234 */
	NULL,   /* 235 */
	NULL,   /* 236 */
	NULL,   /* 237 */
	NULL,   /* 238 */
	NULL,   /* 239 */
	NULL,   /* 240 */
	NULL,   /* 241 */
	NULL,   /* 242 */
	NULL,   /* 243 */
	NULL,   /* 244 */
	NULL,   /* 245 */
	NULL,   /* 246 */
	NULL,   /* 247 */
	NULL,   /* 248 */
	NULL,   /* 249 */
	NULL,   /* 250 */
	NULL,   /* 251 */
	NULL,   /* 252 */
	NULL,   /* 253 */
	NULL,   /* 254 */
	NULL,   /* 255 */

	/* secondary function table #214 */
	NULL,   /*   0 */
	NULL,   /*   1 */
	NULL,   /*   2 */
	NULL,   /*   3 */
	NULL,   /*   4 */
	NULL,   /*   5 */
	NULL,   /*   6 */
	NULL,   /*   7 */
	NULL,   /*   8 */
	NULL,   /*   9 */
	NULL,   /*  10 */
	NULL,   /*  11 */
	NULL,   /*  12 */
	NULL,   /*  13 */
	NULL,   /*  14 */
	NULL,   /*  15 */
	NULL,   /*  16 */
	NULL,   /*  17 */
	NULL,   /*  18 */
	NULL,   /*  19 */
	NULL,   /*  20 */
	NULL,   /*  21 */
	NULL,   /*  22 */
	NULL,   /*  23 */
	NULL,   /*  24 */
	NULL,   /*  25 */
	NULL,   /*  26 */
	NULL,   /*  27 */
	NULL,   /*  28 */
	NULL,   /*  29 */
	NULL,   /*  30 */
	NULL,   /*  31 */
	NULL,   /*  32 */
	NULL,   /*  33 */
	NULL,   /*  34 */
	NULL,   /*  35 */
	NULL,   /*  36 */
	NULL,   /*  37 */
	NULL,   /*  38 */
	NULL,   /*  39 */
	NULL,   /*  40 */
	NULL,   /*  41 */
	NULL,   /*  42 */
	NULL,   /*  43 */
	NULL,   /*  44 */
	NULL,   /*  45 */
	NULL,   /*  46 */
	NULL,   /*  47 */
	NULL,   /*  48 */
	NULL,   /*  49 */
	NULL,   /*  50 */
	NULL,   /*  51 */
	NULL,   /*  52 */
	NULL,   /*  53 */
	NULL,   /*  54 */
	NULL,   /*  55 */
	NULL,   /*  56 */
	NULL,   /*  57 */
	NULL,   /*  58 */
	NULL,   /*  59 */
	NULL,   /*  60 */
	NULL,   /*  61 */
	NULL,   /*  62 */
	NULL,   /*  63 */
	NULL,   /*  64 */
	NULL,   /*  65 */
	NULL,   /*  66 */
	NULL,   /*  67 */
	NULL,   /*  68 */
	NULL,   /*  69 */
	NULL,   /*  70 */
	NULL,   /*  71 */
	NULL,   /*  72 */
	NULL,   /*  73 */
	NULL,   /*  74 */
	NULL,   /*  75 */
	NULL,   /*  76 */
	NULL,   /*  77 */
	NULL,   /*  78 */
	NULL,   /*  79 */
	NULL,   /*  80 */
	NULL,   /*  81 */
	NULL,   /*  82 */
	NULL,   /*  83 */
	NULL,   /*  84 */
	NULL,   /*  85 */
	NULL,   /*  86 */
	NULL,   /*  87 */
	NULL,   /*  88 */
	NULL,   /*  89 */
	NULL,   /*  90 */
	NULL,   /*  91 */
	NULL,   /*  92 */
	NULL,   /*  93 */
	NULL,   /*  94 */
	NULL,   /*  95 */
	NULL,   /*  96 */
	NULL,   /*  97 */
	NULL,   /*  98 */
	NULL,   /*  99 */
	NULL,   /* 100 */
	NULL,   /* 101 */
	NULL,   /* 102 */
	NULL,   /* 103 */
	NULL,   /* 104 */
	NULL,   /* 105 */
	NULL,   /* 106 */
	NULL,   /* 107 */
	NULL,   /* 108 */
	NULL,   /* 109 */
	NULL,   /* 110 */
	NULL,   /* 111 */
	NULL,   /* 112 */
	NULL,   /* 113 */
	NULL,   /* 114 */
	NULL,   /* 115 */
	NULL,   /* 116 */
	NULL,   /* 117 */
	NULL,   /* 118 */
	NULL,   /* 119 */
	NULL,   /* 120 */
	NULL,   /* 121 */
	NULL,   /* 122 */
	NULL,   /* 123 */
	NULL,   /* 124 */
	NULL,   /* 125 */
	NULL,   /* 126 */
	NULL,   /* 127 */
	NULL,   /* 128 */
	NULL,   /* 129 */
	NULL,   /* 130 */
	NULL,   /* 131 */
	NULL,   /* 132 */
	NULL,   /* 133 */
	NULL,   /* 134 */
	NULL,   /* 135 */
	NULL,   /* 136 */
	NULL,   /* 137 */
	NULL,   /* 138 */
	NULL,   /* 139 */
	NULL,   /* 140 */
	NULL,   /* 141 */
	NULL,   /* 142 */
	NULL,   /* 143 */
	NULL,   /* 144 */
	NULL,   /* 145 */
	NULL,   /* 146 */
	NULL,   /* 147 */
	NULL,   /* 148 */
	NULL,   /* 149 */
	NULL,   /* 150 */
	NULL,   /* 151 */
	NULL,   /* 152 */
	NULL,   /* 153 */
	NULL,   /* 154 */
	NULL,   /* 155 */
	NULL,   /* 156 */
	NULL,   /* 157 */
	NULL,   /* 158 */
	NULL,   /* 159 */
	NULL,   /* 160 */
	NULL,   /* 161 */
	NULL,   /* 162 */
	NULL,   /* 163 */
	NULL,   /* 164 */
	NULL,   /* 165 */
	NULL,   /* 166 */
	NULL,   /* 167 */
	NULL,   /* 168 */
	NULL,   /* 169 */
	NULL,   /* 170 */
	NULL,   /* 171 */
	NULL,   /* 172 */
	NULL,   /* 173 */
	NULL,   /* 174 */
	NULL,   /* 175 */
	NULL,   /* 176 */
	NULL,   /* 177 */
	NULL,   /* 178 */
	NULL,   /* 179 */
	NULL,   /* 180 */
	NULL,   /* 181 */
	NULL,   /* 182 */
	NULL,   /* 183 */
	NULL,   /* 184 */
	NULL,   /* 185 */
	NULL,   /* 186 */
	NULL,   /* 187 */
	NULL,   /* 188 */
	NULL,   /* 189 */
	NULL,   /* 190 */
	NULL,   /* 191 */
	NULL,   /* 192 */
	NULL,   /* 193 */
	NULL,   /* 194 */
	NULL,   /* 195 */
	NULL,   /* 196 */
	NULL,   /* 197 */
	NULL,   /* 198 */
	NULL,   /* 199 */
	NULL,   /* 200 */
	NULL,   /* 201 */
	NULL,   /* 202 */
	NULL,   /* 203 */
	NULL,   /* 204 */
	NULL,   /* 205 */
	NULL,   /* 206 */
	NULL,   /* 207 */
	NULL,   /* 208 */
	NULL,   /* 209 */
	NULL,   /* 210 */
	NULL,   /* 211 */
	NULL,   /* 212 */
	NULL,   /* 213 */
	NULL,   /* 214 */
	NULL,   /* 215 */
	NULL,   /* 216 */
	NULL,   /* 217 */
	NULL,   /* 218 */
	NULL,   /* 219 */
	NULL,   /* 220 */
	NULL,   /* 221 */
	NULL,   /* 222 */
	NULL,   /* 223 */
	NULL,   /* 224 */
	NULL,   /* 225 */
	NULL,   /* 226 */
	NULL,   /* 227 */
	NULL,   /* 228 */
	NULL,   /* 229 */
	NULL,   /* 230 */
	NULL,   /* 231 */
	NULL,   /* 232 */
	NULL,   /* 233 */
	NULL,   /* 234 */
	NULL,   /* 235 */
	NULL,   /* 236 */
	NULL,   /* 237 */
	NULL,   /* 238 */
	NULL,   /* 239 */
	NULL,   /* 240 */
	NULL,   /* 241 */
	NULL,   /* 242 */
	NULL,   /* 243 */
	NULL,   /* 244 */
	NULL,   /* 245 */
	NULL,   /* 246 */
	NULL,   /* 247 */
	NULL,   /* 248 */
	NULL,   /* 249 */
	NULL,   /* 250 */
	NULL,   /* 251 */
	NULL,   /* 252 */
	NULL,   /* 253 */
	NULL,   /* 254 */
	NULL    /* 255 */
};

/******************************************************************************/
/*** ---------------------------------------------------------------------- ***/
/******************************************************************************/

static unsigned short find_function(struct globals *G, const char **src)
{
	unsigned short token = 0;
	unsigned char first_c;
	const char *srcstart;
	const struct funcname *func;
	const char *name;
	unsigned char len;
	
	if (*src == G->function_find_start)
	{
		*src = G->function_find_last;
		return G->function_find_token;
	}
	G->function_find_start = *src;
	skip_spaces(src);
	first_c = **src;
	if (first_c < 'A')
	{
		func = func_table;
		if (first_c != '/')
		{
			first_c = '@';
		} else
		{
			if ((*src)[1] == '/' || (*src)[1] == '*')
			{
				G->function_find_last = *src;
				G->function_find_token = -1;
				return -1;
			}
			token = TOK_DIVIDE;
			(*src)++;
			goto cont;
		}
	} else if (first_c > 'Z')
	{
		func = func_other_table;
		first_c = 127;
	} else
	{
		func = func_index_table[first_c - 'A'];
	}
	
	srcstart = *src;
	for (;;)
	{
		if (func >= &func_table[ARRAY_SIZE(func_table)] || func->name[0] > first_c)
		{
			G->function_find_last = *src;
			G->function_find_token = -1;
			return -1;
		}
		len = func->len + 1;
		name = func->name;
		for (;;)
		{
			if (*name++ != *(*src)++)
				break;
			if (--len == 0)
				break;
		}
		if (len == 0)
			break;
		func++;
		*src = srcstart;
	}
	/* _6 */
	token = func->token;
	
cont:
	/* _7 */
	G->function_find_last = *src;
	if ((*src)[-1] >= 'A' && (*src)[-1] <= 'Z' && token > TOK_GE2_STR)
	{
		unsigned char c = **src;
		if (c == '_' || c == '.' || (c >= '0' && c <= '9') || (c >= 'A' && c <= 'Z'))
			token = -1;
	}
	G->function_find_token = token;
	return token;
}

/*** ---------------------------------------------------------------------- ***/

static void handle_function(struct globals *G, struct funcparse *parse, unsigned short expected)
{
	unsigned short token;
	
	token = find_function(G, &parse->current.src);
	for (;;)
	{
		parse->d7 = token != expected ? -1 : 0;
		if (parse->d7 != 0)
		{
			if (expected == TOK_LINE_COMMENT)
			{
				if ((parse->current.src[0] == '/' &&
					 (parse->current.src[1] == '/' || parse->current.src[1] == '*')) ||
					 parse->current.src[0] == '!')
				{
					if (G->token_buffer.cmd == TOK_CMD_INLINE)
					{
						break;
					}
					token = expected;
					x137b4 = parse->current.src;
					continue;
				} else
				{
					break;
				}
			}
			break;
		}
		if (token >= 256)
			*parse->current.dst++ = token >> 8;
		*parse->current.dst++ = token;
		break;
	}
	if (parse->current.src >= longest_match)
		longest_match = parse->current.src;
}

/*** ---------------------------------------------------------------------- ***/

static uint8_t *parse_cmd_args0(struct globals *G, struct funcparse *parse)
{
	unsigned short token;

	for (;;)
	{
		/* _1 */
		parse->d7 = 0;
		token = (parse->current.table++)->type;
		if (token > 240)
		{
			/* _5 */
			switch (token)
			{
			case ARG_PUSH:
				/* _8 */
				assert(parse->stackptr < PARSE_STACK_DEPTH);
				parse->stack[parse->stackptr] = parse->current;
				parse->stackptr++;
				parse->current.table = parse->current.table[-1].u.table;
				continue;
			
			case ARG_CALL_FUNC:
				/* _9 */
				assert(parse->stackptr < PARSE_STACK_DEPTH);
				parse->stack[parse->stackptr] = parse->current;
				parse->stackptr++;
				parse->parse_cmd_continue_search = FALSE;
				parse->current.table[-1].u.func(G, parse);
				/* does not come back here in call to func_call */
				if (parse->parse_cmd_continue_search)
					continue;
				if (parse->d7 == 0)
					goto pop;
			error:
				/* _10 */
				assert(parse->stackptr > 0);
				parse->stackptr--;
				parse->current.table = parse->stack[parse->stackptr].table;
				if (parse->current.table == NULL)
					return NULL;
				break;
			
			case ARG_POP:
			case ARG_END:
			pop:
				/* _3 */
				assert(parse->stackptr > 0);
				parse->stackptr--;
				parse->current.table = parse->stack[parse->stackptr].table;
				if (parse->current.table != NULL)
					continue;
				return parse->current.dst;
			
			case ARG_REPLACE:
				/* _7 */
				if (parse->current.dst == G->token_buffer.buffer)
					G->token_buffer.cmd = parse->current.table[-1].u.value;
				else
					parse->current.dst[-1] = parse->current.table[-1].u.value;
				continue;
			
			case ARG_BACK:
				/* _6 */
				parse->current.dst--;
				continue;
			
			case ARG_INSERT:
				*parse->current.dst++ = parse->current.table[-1].u.value;
				continue;

			default:
				assert(0);
				break;
			}
		} else
		{
			if (token >= TOK_SUBFUNC_208 && token <= TOK_SUBFUNC_214)
			{
				token = (token << 8) + parse->current.table[-1].u.value;
			}
			handle_function(G, parse, token);
			if (parse->d7 == 0)
				continue;
		}
		/* _11 */
		for (;;)
		{
			token = (parse->current.table++)->type;
			if (token == ARG_INSERT)
				continue;
			if (token == ARG_END)
				goto error;
			if (token == ARG_POP)
				break;
		}
		/* _13 */
		assert(parse->stackptr > 0);
		parse->current.src = parse->stack[parse->stackptr - 1].src;
		parse->current.dst = parse->stack[parse->stackptr - 1].dst;
	}
}

/*** ---------------------------------------------------------------------- ***/

uint8_t *parse_cmd_args(struct globals *G, const char **src, uint8_t *dst, const struct argdesc *table)
{
	struct funcparse _parse;
	struct funcparse *parse = &_parse;
	
	x137b4 = NULL;
	parse->current.table = NULL;
	parse->current.src = *src;
	parse->current.dst = dst;
	G->function_find_start = NULL;
	parse->stack[0] = parse->current;
	parse->stackptr = 1;
	parse->current.table = table;
	dst = parse_cmd_args0(G, parse);
	*src = parse->current.src;
	return dst;
}

/*** ---------------------------------------------------------------------- ***/

static uint8_t *parse_cmd(struct globals *G, const char **src, unsigned short cmd, const struct argdesc *table)
{
	G->token_buffer.cmd = cmd;
	return parse_cmd_args(G, src, G->token_buffer.buffer, table);
}

/*** ---------------------------------------------------------------------- ***/

/*
 * copy input line to general_buffer,
 * making everything uppercase, and terminate it with EOL
 */
static void copy_input(struct globals *G)
{
	const char *src = G->input_buffer;
	char *dst = G->general_buffer;
	char c;
	
	for (;;)
	{
		c = *src++;
		if (c == CR || c == NL || c == '\0')
			break;
		if (c >= 'a' && c <= 'z')
			c -= 'a' - 'A';
		*dst++ = c;
	}
	*dst = EOL;
}

/*** ---------------------------------------------------------------------- ***/

static const struct argdesc *find_cmd(struct globals *G, const char **src)
{
	return 0;
}

/*** ---------------------------------------------------------------------- ***/

static void check_line_comment(struct globals *G)
{
}

static void x15982(struct globals *G)
{
}

int parse_line(struct globals *G, const char *src)
{
	const struct argdesc *table;
	uint8_t *dst;
	const char *srcstart;
	
	longest_match = src;
	G->token_buffer.cmd = 0;
	G->token_buffer.buffer[0] = 0;
	G->token_buffer.buffer[1] = 0;
	x137b2 = 0;
	copy_input(G);
	src = G->general_buffer;
	skip_spaces(&src);
	srcstart = src;
	table = find_cmd(G, &src);
	dst = parse_cmd_args(G, &src, G->token_buffer.buffer, table);
	if (dst == NULL)
	{
		src = srcstart;
		dst = parse_cmd(G, &src, TOK_CMD_ASSIGN_FLOAT, yLET_args);
		if (dst == NULL)
		{
			src = srcstart;
			parse_cmd(G, &src, TOK_CMD_LABEL, LABEL_args);
			if (dst == NULL)
			{
				src = srcstart;
				dst = parse_cmd(G, &src, TOK_CMD_GOSUB_IMP, yGOSUB_args);
				if (dst == NULL)
				{
					G->error_pos = (int)(longest_match - G->general_buffer);
					return FALSE;
				}
			}
		}
	}
	check_line_comment(G);
	x15982(G);
	
	if (x137b4 != NULL)
	{
		int offset = (int)(x137b4 - G->general_buffer);
		const char *scan;
		const char *end;
		int spaces;
		
		scan = G->input_buffer + offset;
		if (dst != NULL)
		{
			/* pad to even address */
			if ((intptr_t)dst & 1)
				*dst++ = 0;
			spaces = -1;
			end = scan;
			do
			{
				spaces++;
			} while (end > G->input_buffer && *--end == ' ');
			*dst++ = spaces;
			if (*scan++ != '!')
				scan++;
			for (;;)
			{
				char c = *scan++;
				if (c == CR || c == NL || c == '\0')
					break;
				*dst++ = c;
			}
			*dst++ = EOL;
		}
	}
	if (dst == NULL)
	{
		G->token_buffer_len = 0;
		return FALSE;
	}
	/* pad to even address */
	if ((intptr_t)dst & 1)
		*dst++ = 0;
	G->token_buffer_len = dst - G->token_buffer.buffer + 2;
	/* token value now index * 4 */
	G->token_buffer.cmd <<= 2;
	return TRUE;
}

/******************************************************************************/
/*** ---------------------------------------------------------------------- ***/
/******************************************************************************/

void parse_init(struct globals *G)
{
	int curr;
	const struct cmdname *cmd;
	const struct funcname *func;
	uint16_t token;
	
	/*
	 * build command table indexed by token,
	 * and index table for first character for faster lookup
	 */
	curr = 0;
	for (cmd = cmd_table; cmd < &cmd_table[ARRAY_SIZE(cmd_table)]; cmd++)
	{
		token = cmd->token;
		if (token >= MAX_CMDS)
		{
			fprintf(stderr, "invalid token #%d in %s\n", cmd->token, cmd->name);
			abort();
		}
		G->cmd_table[token] = cmd;
		switch (token)
		{
		case TOK_CMD_ADDRIN:
			cmd_addrin = cmd;
			break;
		case TOK_CMD_ADDROUT:
			cmd_addrout = cmd;
			break;
		case TOK_CMD_CONTRL:
			cmd_contrl = cmd;
			break;
		case TOK_CMD_DOUBLE_REF:
			cmd_double_ref = cmd;
			break;
		case TOK_CMD_FILES:
			cmd_files = cmd;
			break;
		case TOK_CMD_FILESELECT:
			cmd_fileselect = cmd;
			break;
		}
		if (cmd->name[0] >= 'A' && cmd->name[0] <= 'Z')
		{
			if (curr >= 0 && curr != cmd->name[0])
			{
				if (curr > 0)
				{
					while ((curr + 1) < cmd->name[0])
					{
						curr++;
						cmd_index_table[curr - 'A'] = cmd;
					}
				}
				if (curr >= 0)
				{
					curr = cmd->name[0];
					cmd_index_table[curr - 'A'] = cmd;
				}
			}
		} else if (curr > 0)
		{
			while (curr < 'Z')
			{
				curr++;
				cmd_index_table[curr - 'A'] = cmd;
			}
			cmd_other_table = cmd;
			curr = -1;
		}
	}
	assert(cmd_fileselect != NULL);
	assert(cmd_files != NULL);
	assert(cmd_double_ref != NULL);
	assert(cmd_addrin != NULL);
	assert(cmd_addrout != NULL);
	assert(cmd_contrl != NULL);
	
	for (curr = 1; curr < MAX_CMDS; curr++)
		if (G->cmd_table[curr] == NULL)
			G->cmd_table[curr] = G->cmd_table[curr - 1];
	G->cmd_table[TOK_CMD_LABEL] = NULL;
	G->cmd_table[TOK_CMD_GOSUB_IMP] = NULL;
	for (curr = TOK_CMD_ASSIGN_FLOAT; curr <= TOK_CMD_ASSIGN_BYTE_ARR; curr++)
		G->cmd_table[curr] = NULL;
	
	/*
	 * build function table indexed by token,
	 * and index table for first character for faster lookup
	 */
	curr = 0;
	for (func = func_table; func < &func_table[ARRAY_SIZE(func_table)]; func++)
	{
		token = func->token;
		if (token >= TOK_SUBFUNC_208 * 256)
		{
			/* map secondary table # & token into index */
			token = (token - TOK_SUBFUNC_208 * 256) + 256;
		} else
		{
			/* otherwise primary function */
			if (token >= 256)
			{
				fprintf(stderr, "invalid token #%d in %s\n", func->token, func->name);
				abort();
			}
		}
		if (token >= MAX_FUNCS)
		{
			fprintf(stderr, "invalid token #$%04x in %s\n", func->token, func->name);
			abort();
		}
		G->func_table[token] = func;
		if (func->name[0] >= 'A' && func->name[0] <= 'Z')
		{
			if (curr >= 0 && curr != func->name[0])
			{
				if (curr > 0)
				{
					while ((curr + 1) < func->name[0])
					{
						curr++;
						func_index_table[curr - 'A'] = func;
					}
				}
				if (curr >= 0)
				{
					curr = func->name[0];
					func_index_table[curr - 'A'] = func;
				}
			}
		} else if (curr > 0)
		{
			while (curr < 'Z')
			{
				curr++;
				func_index_table[curr - 'A'] = func;
			}
			func_other_table = func;
			curr = -1;
		}
	}
	for (curr = 1; curr < MAX_FUNCS; curr++)
		if (G->func_table[curr] == NULL)
			G->func_table[curr] = G->func_table[curr - 1];

#if 0
	for (curr = 0; curr < 26; curr++)
		printf("%c: %s\n", curr + 'A', cmd_index_table[curr]->name ? cmd_index_table[curr]->name : "(nil)");
	printf("_: %s\n", cmd_other_table->name);
	printf("\n");
	
	for (curr = 0; curr < 26; curr++)
		printf("%c: %s\n", curr + 'A', func_index_table[curr] ? func_index_table[curr]->name : "(nil)");
	printf("_: %s\n", func_other_table->name);
#endif
}
