#include <stdio.h>
#include <stdlib.h>

int calculate(int a, int b) {
    int result = a + b;
    if (result > 10) {
        return result * 2;
    } else {
        return result;
    }
}

int main() {
    int x = 5;
    int y = 7;
    int z = calculate(x, y);
    
    printf("结果: %d\n", z);
    
    int *arr = (int*)malloc(sizeof(int) * 10);
    for (int i = 0; i < 10; i++) {
        arr[i] = i * z;
    }
    
    int sum = 0;
    for (int i = 0; i < 10; i++) {
        sum += arr[i];
    }
    
    printf("数组和: %d\n", sum);
    free(arr);
    
    return 0;
}