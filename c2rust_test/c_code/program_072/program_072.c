/*
    Circular Doubly Linked List implementation by C programming Language
    Operations: create list, insert item to tail, insert item to first, insert item to middle (any position),
        delete any item according to position, print full list in RORWARD order and REVERSE order
    Programmed by: Hasan Abdullah
    Contact: http://hellohasan.com/
*/


#include<stdio.h>
#include<stdlib.h>

struct linked_list{
    int number;
    struct linked_list *next;
    struct linked_list *previous;
};

typedef struct linked_list node;
node *head = NULL, *tail = NULL;

void insert_at_head(int number);
void insert_at_tail(int number);
void insert_at_middle(int number, int position);
void delete_head();
void delete_tail();
void delete_middle(int posision);
void print_forward_order();
void print_reverse_order();
void print_list();
int getListLength();

int main()
{
    int a = 5, b = 15, c = 43, d = 23, e = 12, f = 66, g = 99, h =65, i = 20, j = 8;
    int pos = 2, insertMidValue = 500, deletePos = 5;

    printf("Insert at head: %d\n", a);
    insert_at_head(a);
    print_list();

    printf("Insert at tail: %d, %d, %d\n", b, c, d);
    insert_at_tail(b);
    insert_at_tail(c);
    insert_at_tail(d);
    print_list();

    printf("Delete HEAD\n");
    delete_head();
    print_list();

    printf("Insert at head: %d\n", e);
    insert_at_head(e);
    print_list();

    printf("Insert at POSITION: %d, VALUE: %d\n", pos, insertMidValue);
    insert_at_middle(insertMidValue, pos);
    print_list();

    printf("Delete TAIL\n");
    delete_tail();
    print_list();

    printf("Insert at tail: %d, %d, %d\n", f, g, h);
    insert_at_tail(f);
    insert_at_tail(g);
    insert_at_tail(h);
    print_list();

    printf("Delete from POSITION: %d\n", deletePos);
    delete_middle(deletePos);
    print_list();

    return 0;
}

// Insert a node at front of a circular doubly linked list
void insert_at_head(int number)
{
    node *newNode = (node *) malloc(sizeof(node));

    newNode->number = number;
    newNode->next = newNode;
    newNode->previous = newNode;

    if(head==NULL)
    {
        head = newNode;
        tail = newNode;
    }
    else
    {
        newNode->next = head;
        newNode->previous = tail;
        head->previous = newNode;
        tail->next = newNode;
        head = newNode;
    }

}

// Insert a node at tail of a circular doubly linked list
void insert_at_tail(int number)
{
    node *newNode = (node *) malloc(sizeof(node));

    newNode->number = number;
    newNode->next = newNode;
    newNode->previous = newNode;

    if(head==NULL)
    {
        head = newNode;
        tail = newNode;
    }
    else
    {
        tail->next = newNode;
        newNode->next = head;
        newNode->previous = tail;
        tail = newNode;
        head->previous = tail;
    }
}

// Insert a node at middle of a circular doubly linked list
void insert_at_middle(int number, int position)
{
    if(position==1)
    {
        insert_at_head(number);
        return;
    }
    else if(position>1 && head!=NULL)
    {
        node *current = head;
        node *temp = (node *) malloc(sizeof(node));
        int count = 0;

        do
        {
            count++;
            temp = current;
            current = current->next;
        }   while(current->next != head && count<position-1);

        if(count==position-1)
        {
            if(temp==tail)
                insert_at_tail(number);
            else
            {
                node *newNode = (node *) malloc(sizeof(node));
                newNode->number = number;

                temp->next = newNode;
                newNode->next = current;
                newNode->previous = temp;
                current->previous = newNode;

            }
            return;
        }

    }

    printf("Position does not exist!\n");
}

// Delete HEAD node of a circular doubly linked list
void delete_head()
{
    if(head==NULL)  return;

    node *temp = head;

    tail->next = head->next;
    head = head->next;
    head->previous = tail;

    free(temp);
}

// Delete TAIL node of a circular doubly linked list
void delete_tail()
{
    if(head==NULL)  return;

    node *temp = head;
    node *current = head;

    while(current->next != head)
    {
        temp = current;
        current = current->next;
    }
    // now, `current` node is the TAIL. `temp` is the previous node of TAIL.
    // `current->next` is HEAD

    temp->next = head; //also can write temp->next = current->next;
    tail = temp;
    head->previous = tail;
    free(current);
}

// Delete a node middle in the circular doubly linked list
void delete_middle(int position)
{
    if(head==NULL)  return;

    if(position==1)
    {
        delete_head();
        return;
    }

    node *current = head;
    node *temp;
    int count = 0;

    do
    {
        count++;
        temp = current;
        current = current->next;
    }   while(current->next != head && count<position-1);

    if(count==position-1)
    {
        if(current==tail)
        {
            delete_tail();
            return;
        }

        temp->next = current->next;
        current->next->previous = temp;
        free(current);
        return;
    }

    printf("Position (%d) does not exist!\n", position);
}

// Print the list in FORWARD order and REVERSE order
void print_list()
{
    printf("FORWARD order print:\n");
    print_forward_order();

    printf("REVERSE order print:\n");
    print_reverse_order();
}

// Print FORWARD ORDER all node's data of a circular doubly linked list
void print_forward_order()
{
    if(head==NULL)  return;

    node *current = head;

    do
    {
        printf("%d ", current->number);
        current = current->next;
    }   while(current != head);

    printf("\nList Length: %d\n", getListLength());
}

// Print REVERSE ORDER all node's data of a circular doubly linked list
void print_reverse_order()
{
    if(head==NULL)  return; // also can check `tail==NULL`. both are same

    node *current = tail;

    do
    {
        printf("%d ", current->number);
        current = current->previous;
    }   while(current != tail);

    printf("\nList Length: %d\n", getListLength());
    puts("\n");
}

//Determine the number of nodes in circular doubly linked list
int getListLength()
{
    if(head==NULL) return 0;

    int count = 0;
    node *current = head;

    do
    {
        count++;
        current = current->next;
    }   while(current != head);

    return count;
}
