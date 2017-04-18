#include <stdio.h>
#include "deposit.h"

void check (int cash,int day){
	if (cash<10000 || day <0 || day>365){
	printf ("error ");
	}
	
}

float task (float day,float cash){
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
printf("Cash: %f \n",cash);
    system ("pause");
    return 0;
	
}

