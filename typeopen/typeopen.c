#include "typeopen.h"
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h> 
#include <fcntl.h> 
#include <sys/stat.h> 
#include <sys/types.h> 

char *typeOfOpen(int fd){
      int flags;
      if((flags=fcntl (fd, F_GETFL, NULL)) < 0 )
        return NULL;  
      flags &= O_RDONLY | O_WRONLY | O_RDWR;
      switch(flags){
      case O_RDONLY:  return "r";
      case O_WRONLY:  return "w";
      case O_RDWR:    return "r+w";
      default:        return NULL;
 }
}