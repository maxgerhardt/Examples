#ifndef GATE_H
#define GATE_H

#include "luos.h"

#define DEFAULT_REFRESH_MS 0.01f

void gate_init(void);
void gate_loop(void);
#ifdef USE_SERIAL
int serial_write(char *data, int len);
#endif
#endif /* GATE_H */
