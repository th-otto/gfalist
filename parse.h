#include <stdint.h>

#ifndef UNUSED
#define UNUSED(x) ((void)(x))
#endif

struct argstack {
	const char *src;
	uint8_t *dst;
	const struct argdesc *table;
};

struct funcparse {
	struct argstack current;
	struct argstack stack[100];
	int stackdepth;
};

struct globals;

struct argdesc {
	enum {
		ARG_PUSH = -1,
		ARG_CALL_FUNC = -2,
		ARG_POP = -3,
		ARG_END = -4,
		ARG_REPLACE = -5,
		ARG_BACK = -6
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

