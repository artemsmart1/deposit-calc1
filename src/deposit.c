#include <stdio.h>
#include <stdlib.h>
#include "deposit.h"

int check (int day,int cash){
	if (cash<10000 || day <0 || day>365)return 1;
        return 0;    
	
	
}

void  task (int  day,int  cash){
	if(cash<=100000 && cash>=10000 ) {
    if(day>0 && day<=30) {
      cash=cash-(cash*0.1);
    }  if(day>=31 && day<=120) {
        cash=cash+(cash*0.02);
    }  if(day>=121 && day<=240) {
        cash=cash+(cash*0.06);
    }  if(day>=241 && day<=365) {
        cash=cash+(cash*0.12);
    }
} 
 if(cash>100000) {
    if(day>0 && day<=30) {
      cash=cash-(cash*0.1);
    }  if(day>=31 && day<=120) {
      cash=cash+(cash*0.03);
    }  if(day>=121 && day<=240) {
      cash=cash+(cash*0.08);
    }  if(day>=241 && day<=365) {
      cash=cash+(cash*0.15);
    }
}
printf("Cash: %d \n",cash);
 	
}

