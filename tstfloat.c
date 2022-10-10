#include <stdio.h>
#include <stdint.h>

extern char *gfa_format(uint32_t hi, uint32_t lo);
extern uint32_t mantlo, manthi;

int main(void)
{
	printf("%s\n", gfa_format(0x90000000UL, 0x00000402UL));
	printf("%08x %08x\n", manthi, mantlo);
	return 0;
}
