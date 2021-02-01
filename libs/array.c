#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct arrayInt{
	int size;
	int arrayint[1024];
};

void arraystart(struct arrayInt *array1);
void arrayreport(struct arrayInt *array1);
int addint(struct arrayInt *array1,int value);
void arrayreverse(struct arrayInt *array2,struct arrayInt *array1);


void arraystart(struct arrayInt *array1){
	array1->size=0;	
}

void arrayreport(struct arrayInt *array1){
	int i=0;
	printf("\n");
	for(i=0;i<array1->size;i++){
		printf("%d",array1->arrayint[i]);
		if(i!=array1->size-1){
			printf(",");
		}else{
			printf("\n");
		}
	}

}

int addint(struct arrayInt *array1,int value){
	int i=0;
	array1->arrayint[array1->size]=value;
	i=array1->size;
	array1->size++;
	return i;
}

void arrayreverse(struct arrayInt *array2,struct arrayInt *array1){
	int i=0;
	int ii=0;
	array2->size=array1->size;
	for(i=0;i<array1->size;i++){
		ii=array1->size-i-1;
		array2->arrayint[ii]=array1->arrayint[i];
	}

}
