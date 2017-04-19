#include <stdio.h>
#include "deposit.h"


int main (){

float cash=0; float day=0;
printf ("Vvedite summu vklada :");
scanf ("%f",&cash);
printf ("Vvedite kol-vo dney:");
scanf ("%f",&day);
check (day,cash);
task ( day, cash);
return 0;
}
