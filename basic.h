typedef struct {
	union {
		char *strptr;
		intptr_t stroff;
	} u;
	unsigned short len;
} basic_string;
