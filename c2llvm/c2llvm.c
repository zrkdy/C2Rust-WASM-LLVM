#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// 宏定义
#define MAX_SIZE 100

// 结构体定义
typedef struct {
    int id;
    char name[MAX_SIZE];
} Person;

// 函数声明
// void print_person(Person *p);
// Person* create_person(int id, const char* name);
// void free_person(Person *p);

// 主函数
int main() {
    // 变量声明
    int numbers[] = {1, 2, 3, 4, 5};
    int *ptr = numbers;
    int sum = 0;

    // 控制流：for 循环
    for (int i = 0; i < 5; i++) {
        sum += *(ptr + i);
    }
    printf("Sum of array: %d\n", sum);

    // 动态内存分配
    Person *p = create_person(1, "Alice");
    if (p == NULL) {
        fprintf(stderr, "Failed to create person\n");
        return 1;
    }

    // 函数调用
    print_person(p);

    // 释放内存
    free_person(p);

    return 0;
}

// 函数定义：打印 Person 信息
void print_person(Person *p) {
    printf("Person ID: %d\n", p->id);
    printf("Person Name: %s\n", p->name);
}

// 函数定义：创建 Person 对象
Person* create_person(int id, const char* name) {
    Person *p = (Person*)malloc(sizeof(Person));
    if (p == NULL) {
        return NULL;
    }
    p->id = id;
    strncpy(p->name, name, MAX_SIZE - 1);
    p->name[MAX_SIZE - 1] = '\0'; // 确保字符串以 null 结尾
    return p;
}

// 函数定义：释放 Person 对象
void free_person(Person *p) {
    if (p != NULL) {
        free(p);
    }
}