#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <errno.h>
#include <time.h> 
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include<sys/socket.h>
#include<arpa/inet.h>
#include <netdb.h>

void servers (char *buff,int buffersize,void (*funt1)())
{
    int fd = 0, cfd = 0;
    struct sockaddr_in address; 
	int exitss =0;
	int size=0;
	int size2=0;
    ssize_t t;
    fd = socket(AF_INET, SOCK_STREAM, 0);
    memset(&address, '0', sizeof(address));
    memset(buff, '0', sizeof(buff)); 

    address.sin_family = AF_INET;
    address.sin_addr.s_addr = htonl(INADDR_ANY);
    address.sin_port = htons(8080); 

    bind(fd, (struct sockaddr*)&address, sizeof(address)); 

    listen(fd, 10); 

    while(1)
    {
        cfd = accept(fd, (struct sockaddr*)NULL, NULL); 
		size=read(cfd,buff,buffersize);
		size2=size;
		buff[size]=0;
		funt1();
		size=strlen(buff);
        write(cfd,buff,size);
        close(cfd);
     }
}
