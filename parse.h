#include <stdint.h>

#ifndef UNUSED
#define UNUSED(x) ((void)(x))
#endif

struct argstack {
	const char *src;
	uint8_t *dst;
	const struct argdesc *table;
};

#define PARSE_STACK_DEPTH 100

struct funcparse {
	struct argstack current;
	struct argstack stack[PARSE_STACK_DEPTH];
	int stackptr;
	int d7;
};

struct globals;

struct argdesc {
	enum {
		ARG_PUSH = 255,
		ARG_CALL_FUNC = 254,
		ARG_POP = 253,
		ARG_END = 252,
		ARG_REPLACE = 251,
		ARG_BACK = 250
	} type;
	union {
		const struct argdesc *table;
		void (*func)(struct globals *G, struct funcparse *parse);
		intptr_t value; /* actually only unsigned short, but need to cast to void * in initializations */
	} u;
};

struct cmdname {
	unsigned char len; /* length of name - 1 */
	const char *name;
	uint16_t token;
	const struct argdesc *table;
	int min_ver;
	int max_ver;
};

struct matcmdname {
	const char *name;
	const struct argdesc *table;
};

struct funcname {
	unsigned char len; /* length of name - 1 */
	const char *name;
	uint16_t token;
	int min_ver;
	int max_ver;
};

void parse_init(struct globals *G);
uint8_t *parse_cmd_args(struct globals *G, const char *src, uint8_t *dst, const struct argdesc *table);
