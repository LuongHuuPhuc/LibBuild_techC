/**
 * @file sales.c
 * @note static lib
 */

#include "stdio.h" 
#include "sales.h"

/** FUCNTION DEFINITION **/

EXTERN_C float calc_total(Product_t *p, int n){
    float sum = 0; 
    for(int i = 0; i < n; i++){
        sum += p[i].price * p[i].quantity;
    }
    return sum;
}

EXTERN_C void print_bill(Product_t *p, int n){
    printf("===== BILL ===== \r\n");
    for(int i = 0; i < n; i++){
        printf("%s x %d = %.3f\r\n", p[i].name, p[i].quantity, p[i].price);
    }
    printf("TOTAL: %.2f\r\n", calc_total(p, n));
}