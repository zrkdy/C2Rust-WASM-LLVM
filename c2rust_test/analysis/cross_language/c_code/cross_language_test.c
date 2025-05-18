#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// 模拟Rust函数声明（实际上是C函数，但命名为Rust风格）
void rust_print_string(const char* s);
char* rust_create_string(const char* s);
void rust_free_string(char* s);

// C函数
void c_process_data(int* data, int size) {
    printf("C函数处理数据: ");
    for (int i = 0; i < size; i++) {
        printf("%d ", data[i]);
    }
    printf("\n");
}

// 调用Rust函数的C函数
void c_call_rust() {
    printf("C函数调用Rust函数\n");
    
    // 跨语言调用1: C -> Rust
    rust_print_string("从C调用Rust函数");
    
    // 跨语言调用2: C -> Rust（涉及内存所有权）
    char* rust_str = rust_create_string("Rust创建的字符串");
    printf("C函数收到: %s\n", rust_str);
    
    // 跨语言调用3: C -> Rust（释放内存）
    rust_free_string(rust_str);
}

// 模拟的Rust函数实现
void rust_print_string(const char* s) {
    printf("Rust函数打印: %s\n", s);
}

char* rust_create_string(const char* s) {
    char* result = (char*)malloc(strlen(s) + 1);
    strcpy(result, s);
    return result;
}

void rust_free_string(char* s) {
    free(s);
}

// 模拟Rust调用C函数
void rust_call_c() {
    printf("Rust函数调用C函数\n");
    
    // 创建测试数据
    int data[] = {1, 2, 3, 4, 5};
    
    // 跨语言调用4: Rust -> C
    c_process_data(data, 5);
}

int main() {
    printf("=== 跨语言调用测试开始 ===\n");
    
    // C调用Rust
    c_call_rust();
    
    // Rust调用C
    rust_call_c();
    
    printf("=== 跨语言调用测试结束 ===\n");
    return 0;
}