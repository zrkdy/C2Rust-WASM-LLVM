#include <stdio.h>
const int x = 1;
int main() {
    printf("Value of x: %d\n", x);
    const int y=10;
    // x=5; // this is compile error in C
    return 0;
}