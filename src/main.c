#include <stdio.h>
#include <stdlib.h>
#include "deposit.h"


int main (){

int  cash=0; int day=0;
printf ("Vvedite summu vklada :");
scanf ("%d",&cash);
printf ("Vvedite kol-vo dney:");
scanf ("%d",&day);
check (day,cash);
task ( day, cash);





return 0;
}
