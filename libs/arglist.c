#include <stdio.h>
#include <stdlib.h>
#include <string.h>


struct arglist{
	int size;
	char separator;
	char s[2052];
	char *args[2048];
};

void startarglist(struct arglist *arglists){
	char *s1=NULL;
	char *p1=NULL;
	char *p2=NULL;
	arglists->size=0;
	s1=arglists->s;
	s1[2047]=0;
	p1=s1;
	arglists->args[arglists->size]=s1;
	arglists->size++;
	while(p1!=NULL){
		p2=strchr(p1,arglists->separator);
		if(p2!=NULL){
			arglists->args[arglists->size]=p2+1;
			p1=arglists->args[arglists->size];
			p2[0]=0;
			arglists->size++;
		}else{
			p1=p2;
		}
		

	}
}
void report(struct arglist *arglists){
	int i=0;
	for(i=0;i<arglists->size;i++){
		printf("%s\n",arglists->args[i]);
	}
}

