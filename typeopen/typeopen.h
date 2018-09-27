#ifndef TYPEOPEN_H
#define TYPEOPEN_H


#include <stdlib.h>
#include <stdio.h>
#include <unistd.h> 
#include <fcntl.h> 
#include <sys/stat.h> 
#include <sys/types.h> 

#define BUFFER_SIZE 64

char *typeOfOpen(int fd);

#endif