#include "adler.h"

double timespec_diff(struct timespec *stop, struct timespec *start)
{
	double diff = difftime(stop->tv_sec, start->tv_sec);
	diff *= 1000;
	diff += (stop->tv_nsec - start->tv_nsec) / 1e6;
	return diff;
}
unsigned long update_adler32(unsigned long adler,
                             unsigned char *buf, int len)
{
    unsigned long s1 = adler & 0xffff;
    unsigned long s2 = (adler >> 16) & 0xffff;
    int n;

    for (n = 0; n < len; n++) {
        s1 = (s1 + buf[n]) % BASE;
        s2 = (s2 + s1)     % BASE;
    }
    return (s2 << 16) + s1;
}

void get_dscr(int *fd)
{
 struct stat stat_buf;
 fd[0] = open ("file1", O_RDWR);
 fstat(fd[0], &stat_buf);
 fd[1]=open("File_10000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[1], fd[0], 0, 10000);
 lseek (fd[0], 0, SEEK_SET);

fd[2]=open("File_20000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[2], fd[0], 0, 20000);
 lseek (fd[0], 0, SEEK_SET);

fd[3]=open("File_30000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[3], fd[0], 0, 30000);
 lseek (fd[0], 0, SEEK_SET);

fd[4]=open("File_40000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[4], fd[0], 0, 40000);
 lseek (fd[0], 0, SEEK_SET);

fd[5]=open("File_50000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[5], fd[0], 0, 50000);
 lseek (fd[0], 0, SEEK_SET);

fd[6]=open("File_60000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[6], fd[0], 0, 60000);
 lseek (fd[0], 0, SEEK_SET);

fd[7]=open("File_70000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[7], fd[0], 0, 70000);
 lseek (fd[0], 0, SEEK_SET);

fd[8]=open("File_80000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[8], fd[0], 0, 80000);
 lseek (fd[0], 0, SEEK_SET);

fd[9]=open("File_90000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[9], fd[0], 0, 90000);
 lseek (fd[0], 0, SEEK_SET);

fd[10]=open("File_100000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[10], fd[0], 0, 100000);
 lseek (fd[0], 0, SEEK_SET);

fd[11]=open("File_110000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[11], fd[0], 0, 110000);
 lseek (fd[0], 0, SEEK_SET);

fd[12]=open("File_120000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[12], fd[0], 0, 120000);
 lseek (fd[0], 0, SEEK_SET);

fd[13]=open("File_130000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[13], fd[0], 0, 130000);
 lseek (fd[0], 0, SEEK_SET); 

fd[14]=open("File_140000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[14], fd[0], 0, 140000);
 lseek (fd[0], 0, SEEK_SET);

fd[15]=open("File_150000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[15], fd[0], 0, 150000);
 lseek (fd[0], 0, SEEK_SET);

fd[16]=open("File_160000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[16], fd[0], 0, 160000);
 lseek (fd[0], 0, SEEK_SET);

fd[17]=open("File_170000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[17], fd[0], 0, 170000);
 lseek (fd[0], 0, SEEK_SET);

fd[18]=open("File_180000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[18], fd[0], 0, 180000);
 lseek (fd[0], 0, SEEK_SET);

fd[19]=open("File_190000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[19], fd[0], 0, 190000);
 lseek (fd[0], 0, SEEK_SET);

fd[20]=open("File_200000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[20], fd[0], 0, 200000);
 lseek (fd[0], 0, SEEK_SET);

fd[21]=open("File_210000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[21], fd[0], 0, 210000);
 lseek (fd[0], 0, SEEK_SET);

fd[22]=open("File_220000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[22], fd[0], 0, 220000);
 lseek (fd[0], 0, SEEK_SET);

fd[23]=open("File_230000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[23], fd[0], 0, 230000);
 lseek (fd[0], 0, SEEK_SET);

fd[24]=open("File_240000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[24], fd[0], 0, 240000);
 lseek (fd[0], 0, SEEK_SET);

fd[25]=open("File_250000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[25], fd[0], 0, 250000);
 lseek (fd[0], 0, SEEK_SET);

fd[26]=open("File_260000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[26], fd[0], 0, 260000);
 lseek (fd[0], 0, SEEK_SET);

fd[27]=open("File_270000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[27], fd[0], 0, 270000);
 lseek (fd[0], 0, SEEK_SET);

fd[28]=open("File_280000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[28], fd[0], 0, 280000);
 lseek (fd[0], 0, SEEK_SET);

fd[29]=open("File_290000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[29], fd[0], 0, 290000);
 lseek (fd[0], 0, SEEK_SET);

fd[30]=open("File_300000", O_WRONLY|O_CREAT, stat_buf.st_mode);
 sendfile (fd[30], fd[0], 0, 300000);
 lseek (fd[0], 0, SEEK_SET);

for (int i=0; i<31; i++)
 {
  close(fd[i]);
 }
 fd[0] = open ("File_10000", O_RDWR);
 fd[1] = open ("File_20000", O_RDWR);
 fd[2] = open ("File_30000", O_RDWR);
 fd[3] = open ("File_40000", O_RDWR);
 fd[4] = open ("File_50000", O_RDWR);
 fd[5] = open ("File_60000", O_RDWR);
 fd[6] = open ("File_70000", O_RDWR);
 fd[7] = open ("File_80000", O_RDWR);
 fd[8] = open ("File_90000", O_RDWR);
 fd[9] = open ("File_100000", O_RDWR);
 fd[10] = open ("File_110000", O_RDWR);
 fd[11] = open ("File_120000", O_RDWR);
 fd[12] = open ("File_130000", O_RDWR);
 fd[13] = open ("File_140000", O_RDWR);
 fd[14] = open ("File_150000", O_RDWR);
 fd[15] = open ("File_160000", O_RDWR);
 fd[16] = open ("File_170000", O_RDWR);
 fd[17] = open ("File_180000", O_RDWR);
 fd[18] = open ("File_190000", O_RDWR);
 fd[19] = open ("File_200000", O_RDWR);
 fd[20] = open ("File_210000", O_RDWR);
 fd[21] = open ("File_220000", O_RDWR);
 fd[22] = open ("File_230000", O_RDWR);
 fd[23] = open ("File_240000", O_RDWR);
 fd[24] = open ("File_250000", O_RDWR);
 fd[25] = open ("File_260000", O_RDWR);
 fd[26] = open ("File_270000", O_RDWR);
 fd[27] = open ("File_280000", O_RDWR);
 fd[28] = open ("File_290000", O_RDWR);
 fd[29] = open ("File_300000", O_RDWR);
}