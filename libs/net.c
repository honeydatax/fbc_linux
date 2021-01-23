#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include<sys/socket.h>
#include<arpa/inet.h>
#include <netdb.h>
void nets(char *address ,int port ,int buff,char *s);

void nets(char *address ,int port ,int buff,char *s)
{
	int buffersize=buff;
	char stringg[1000];
	char *p1;
	char *p2;
	char *p3;
	char *p4;
	char *p5;
	char *p6;
	int sct;
	int pos=0;
	struct hostent *hosts;
	ssize_t sizes;
	struct sockaddr_in srv;
	char *buffer , srv_reply[buffersize];
	sct = socket(AF_INET , SOCK_STREAM , 0);
	if (sct == -1)
	{
		strcpy(s,"Could not create socket");
		goto exitss;
	}
	
	p1=address;
	p4=strstr(p1,"http://");
	if (p4!=NULL){
		p1=p4+7;
	}
	p4=strstr(p1,"HTTP://");
	if (p4!=NULL){
		p1=p4+7;
	}

	p2=strstr(p1,":");
	if(p2!=NULL){
		p3=p2+1;
		port=atoi(p3);
		p2[0]=0;
	}else{
		p3=p1;
	}
	p2=strstr(p3,"/");
	if(p2!=NULL){
		p3=p2+1;
		p2[0]=0;
	}else{
		p3="";
	}
	
	hosts=gethostbyname(p1);
	bcopy((char *)hosts->h_addr,&srv.sin_addr.s_addr,hosts->h_length);
	//srv.sin_addr.s_addr = inet_addr("127.0.0.1");
	srv.sin_family = AF_INET;
	srv.sin_port = htons( port );

	if (connect(sct , (struct sockaddr *)&srv , sizeof(srv)) < 0)
	{
		strcpy(s,"connect error");
		goto exitss;
	}
	
	if( send(sct , s , strlen(s) , 0) < 0)
	{
		strcpy(s,"Send failed");
		close(sct);
		goto exitss;
	}
	pos=0;
	strcpy(s,"\0\0");	
	do{
		sizes=read(sct, srv_reply , buff) ;
		s[pos]=0;
		strcat(s,srv_reply);
		pos=pos+sizes;
		s[pos]=0;
	}while(sizes>1);
	close(sct);
 exitss:
	if(s==NULL)strcpy(s,"");
}
