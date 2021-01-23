#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void setarray(int *map1,int x,int y,int z,int xx,int yy,int value);
int getarray(int *map1,int x,int y,int z,int xx,int yy);
void startmap(int *map1,int xx,int yy,int zz);
void reportmap(int *map1,int xx,int yy,int zz);

void setarray(int *map1,int x,int y,int z,int xx,int yy,int value){
	map1[z*(xx*yy)+y*xx+x]=value;
}

int getarray(int *map1,int x,int y,int z,int xx,int yy){
	return map1[z*(xx*yy)+y*xx+x];
}



void startmap(int *map1,int xx,int yy,int zz){
	int x=0;
	int y=0;
	int z=0;
	for(z=0;z<zz;z++){	
		for(y=0;y<yy;y++){
			for(x=0;x<xx;x++){
				setarray(map1,x,y,z,xx,yy,z*(xx*yy)+y*xx+x);
			}
		}
	}
}

void reportmap(int *map1,int xx,int yy,int zz){
	int x=0;
	int y=0;
	int z=0;
	printf("\n");
	for(z=0;z<zz;z++){
		for(y=0;y<yy;y++){
			for(x=0;x<xx;x++){
				printf("%d,%d,%d=%d\n",z,y,x,getarray(map1,x,y,z,xx,yy));
			}
			printf("\n");
		}
	}
		printf("\n");
}
