#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void setarray(int *map1,int x,int y,int xx,int value);
int getarray(int *map1,int x,int y,int xx);
void startmap(int *map1,int xx,int yy);
void reportmap(int *map1,int xx,int yy);

void setarray(int *map1,int x,int y,int xx,int value){
	map1[y*xx+x]=value;
}

int getarray(int *map1,int x,int y,int xx){
	return map1[y*xx+x];
}



void startmap(int *map1,int xx,int yy){
	int x=0;
	int y=0;
	for(y=0;y<yy;y++){
		for(x=0;x<xx;x++){
			setarray(map1,x,y,xx,y*xx+x);
		}
	}
}

void reportmap(int *map1,int xx,int yy){
	int x=0;
	int y=0;
	printf("\n");
	for(y=0;y<yy;y++){
		for(x=0;x<xx;x++){
			if(x!=0)printf(",");
			printf("%2d",getarray(map1,x,y,xx));
		}
		printf("\n");
	}
	printf("\n");
}
