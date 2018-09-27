#include "typeopen.h"

int main (int argc, char ** argv)
{
 int fd1, fd2;
 ssize_t write_b;
 ssize_t read_b;
 ssize_t new_b;
 char *s;
 char buffer[BUFFER_SIZE];
 if (argc < 2)
 {
  fprintf (stderr, "Too few arguments\n");
  exit (1);
 }

 fd1 = open (argv[1], O_RDWR);
 fd2 = open (argv[2], O_RDWR | O_CREAT, S_IRUSR | S_IWUSR);

 if ( (fd1 < 0) || (fd2 < 0) )
 {
  fprintf (stderr, "Cannot open file\n");
  exit (1);
 }
 
 if (write_b < 0)
 {
  fprintf (stderr, "Cannot write file\n");
  exit (1);
 } 
 
 while ((read_b = read (fd1, buffer, BUFFER_SIZE)) > 0)
 {  
  new_b = write (fd2, buffer, read_b);
  if (new_b != read_b)
  {
   fprintf (stderr, "Cannot write\n");
   exit (1);
  }
 }

 if (read_b < 0)
 {
  fprintf (stderr, "Cannot read file\n");
  exit (1);
 }
 printf(" mode new file: %s\n", s = typeOfOpen(fd2));

 close (fd1);
 close (fd2);
 exit (0);
}