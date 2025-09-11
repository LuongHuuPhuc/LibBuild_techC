/**
 * @brief Quan ly diem 
 * @file grade.hpp
 */

#ifndef __GRADE__HPP
#define __GRADE__HPP

#pragma once 

#ifdef _WIN32
    #ifdef BUILD_DLL
        #define API __declspec(dllexport)
    #else
        #define API __declspec(dllimport)
    #endif
#else 
    #define API 
#endif //_WIN32

#include "iostream"
#include "string"
#include "map"

class API Grade {
    private: 
        std::map<std::string, double> subject;

    public: 
        void addSubject(const std::string &name, double score);
        double calcGPA(void) const;
        void printGrades(void) const;
};

#endif //__GRADE__HPP