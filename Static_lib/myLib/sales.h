/**
 * @file sales.h
 * @note static lib
 */

/** PREPROCESSING  */

#ifndef SALES_H_
#define SALES_H_

#ifdef __cplusplus
    #define EXTERN_C extern "C"
    #define EXTERN_C_BEGIN extern "C" { 
    #define EXTERN_C_END }
#else 
    #define EXTERN_C 
    #define EXTERN_C_BEGIN
    #define EXTERN_C_END
#endif //__cplusplus

#include "stdio.h" 

typedef struct {
    char name[100];
    int quantity;
    float price;
} Product_t;

/** FUCNTION PROTOTYPES **/

EXTERN_C float calc_total(Product_t *p, int n);

EXTERN_C void print_bill(Product_t *p, int n);

#endif //SALES_H_