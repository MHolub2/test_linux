#include <stdio.h>
#include <stdlib.h>
#include <unistd.h> 
#include <fcntl.h> 
#include <sys/stat.h> 
#include <sys/types.h> 
#include <sys/sendfile.h>
#include <time.h>

#define BUFFER_SIZE 32
#define BASE 65521

double timespec_diff(struct timespec *stop, struct timespec *start);
unsigned long update_adler32(unsigned long adler,
                             unsigned char *buf, int len);
void get_dscr(int *fd);