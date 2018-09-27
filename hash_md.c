#include <stdio.h>
#include <stdlib.h>
#include <openssl/md5.h>
#include <unistd.h> 
#include <fcntl.h> 
#include <sys/stat.h> 
#include <sys/types.h> 
#include <time.h>

#define BUFFER_SIZE 8
double timespec_diff(struct timespec *stop, struct timespec *start)
{
	double diff = difftime(stop->tv_sec, start->tv_sec);
	diff *= 1000;
	diff += (stop->tv_nsec - start->tv_nsec) / 1e6;
	return diff;
}

int main (int argc, char ** argv)
{
 int fd1;
 ssize_t read_b;
 unsigned char buffer_md[MD5_DIGEST_LENGTH];
 MD5_CTX mdContext;
 char buffer[BUFFER_SIZE];
 
 fd1 = open (argv[1], O_RDWR);
 MD5_Init (&mdContext);
 while ((read_b = read (fd1, buffer, BUFFER_SIZE)) > 0)
 {  
   MD5_Update (&mdContext, buffer, read_b);

 }
struct timespec time_now, time_after;

clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &time_now);
MD5_Final (buffer_md,&mdContext);
clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &time_after);
for(int i = 0; i < MD5_DIGEST_LENGTH; i++) 
{
	printf("%02x", buffer_md[i]);
}
printf(" Hash took %g ms\n", 
	        timespec_diff(&time_after, &time_now));
close(fd1);

}