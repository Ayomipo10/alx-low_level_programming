#include <stdio.h>

int main()
{
    int age;
    printf("Enter your Age = ");    
    scanf( "%d", &age );
    
     if (age <= 50){
         printf("You are qualified for the job");
     }
     else if (age < 51); {
         printf("You are too old for the post");
     }
     else; (age > 20) {
          printf("Try again when you are twenty-five");
     }
    
     return(0);
}
