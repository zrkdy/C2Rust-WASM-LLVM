#include <stdio.h>
#include <stdlib.h>

int main() {
    // 测试空指针解引用
    int *null_ptr = NULL;
    printf("Value: %d\n", *null_ptr);  // 空指针解引用
    
    // 测试Use-after-free
    int *dynamic_arr = (int*)malloc(sizeof(int) * 5);
    dynamic_arr[0] = 10;
    free(dynamic_arr);
    printf("Value after free: %d\n", dynamic_arr[0]);  // Use-after-free
    
    // 测试Double-free
    free(dynamic_arr);  // Double-free
    
    // 测试缓冲区负索引
    int buffer[5] = {1, 2, 3, 4, 5};
    int negative_index = buffer[-1];  // 负索引
    
    return 0;
}