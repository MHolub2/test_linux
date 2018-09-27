#include "adler.h"

int main (int argc, char ** argv)
{
 	int j, i;
 	int fd[31];
 	ssize_t read_b;
 	unsigned char buffer[BUFFER_SIZE];
 	unsigned long adler = 1L;
 	//struct stat stat_buf;
 	//FILE *pFile;
 	get_dscr(fd);
 	//pFile = fopen (argv[1],"w");
	struct timespec time_now, time_after;
	for (j=0; j<30; j++){ 
 		int a = j;
 		clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &time_now);
  		while ((read_b = read (fd[a], buffer, BUFFER_SIZE)) > 0){  
     			adler = update_adler32(adler, buffer, read_b);  
   		}
 		clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &time_after);
 		printf(" %d files \n", j);
 		printf(" Hash %zu \n", adler);
 		printf(" Hash took %g ms\n", timespec_diff(&time_after, &time_now));
 		//fstat(fd[j], &stat_buf);
 		//fprintf (pFile, " %g \n", timespec_diff(&time_after, &time_now));
	}

	for (i=0; i<30; i++){
  		close(fd[i]);
 	}
	//close(pFile);
}

