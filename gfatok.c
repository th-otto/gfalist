#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <stdlib.h>
#include "tables.h"
#include "globals.h"
#include "parse.h"

struct globals _G;


int main(void)
{
	struct globals *G = &_G;
	
	parse_init(G);
	return 0;
}
