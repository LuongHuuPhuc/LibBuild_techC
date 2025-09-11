/**
 * @file main.c
 */

#include "stdio.h"
#include "sales.h"

int main(void){
    Product_t items[2] = {
        {"Milk", 2, 1.5},
        {"Bread", 3, 2.0}
    };

    print_bill(items, 2);
    return 0;
}