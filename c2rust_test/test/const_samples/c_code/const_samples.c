// 全局变量翻译测试样例

// 简单字面量 - 应该翻译为 const
const int SIMPLE_INT = 42;
const float SIMPLE_FLOAT = 3.14;
const char SIMPLE_CHAR = 'A';

// 字符串字面量 - 应该翻译为 static
const char* STRING_LITERAL = "Hello, world!";

// 函数指针 - 应该翻译为 const
//void sample_function() {}
//const void (*FUNCTION_POINTER)() = sample_function;

// 指向常量的指针 - 应该翻译为 static
const int ANOTHER_CONST = 100;
const int* POINTER_TO_CONST = &ANOTHER_CONST;

// 指向非常量的指针 - 应该翻译为 static mut
int mutable_var = 200;
const int* POINTER_TO_MUTABLE = &mutable_var;

// 整数到指针的转换 - 应该翻译为 static mut
const void* INTTOPTR_EXAMPLE = (void*)0xDEADBEEF;

// 简单结构体 - 应该翻译为 const
typedef struct {
    int x;
    int y;
} Point;
const Point SIMPLE_STRUCT = {10, 20};

// 包含指针的结构体 - 应该翻译为 static
typedef struct {
    int id;
    const char* name;
} Person;
const Person STRUCT_WITH_CONST_PTR = {1, "John"};

// 包含指向可变数据的指针的结构体 - 应该翻译为 static mut
typedef struct {
    int id;
    int* data;
} Record;
const Record STRUCT_WITH_MUTABLE_PTR = {2, &mutable_var};

// 数组 - 应该翻译为 const
const int INT_ARRAY[3] = {1, 2, 3};

// 包含指针的数组 - 应该翻译为 static
const char* STRING_ARRAY[2] = {"First", "Second"};

// 包含指向可变数据的指针的数组 - 应该翻译为 static mut
const int* MUTABLE_PTR_ARRAY[2] = {&mutable_var, &mutable_var};

// 非常量全局变量 - 应该翻译为 static mut
int NON_CONST_VAR = 300;

// 复杂嵌套结构 - 应该翻译为 static mut
typedef struct {
    Point point;
    void* ptr;
} Complex;
const Complex COMPLEX_STRUCT = {{30, 40}, (void*)0x1000};

// 主函数
int main() {
    
    return 0;
}