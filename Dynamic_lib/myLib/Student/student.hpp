/**
 * @brief Quan ly sinh vien
 * @file student.hpp
 */

#ifndef __STUDENT_HPP
#define __STUDENT_HPP

#pragma once 

#include "iostream"
#include "bits/c++io.h"
#include "string"
#include "vector"

#ifdef _WIN32 
    #ifdef BUILD_DLL
        #define API __declspec(dllexport)
    #else 
        #define API __declspec(dllimport)
    #endif
#else 
    #define API
#endif //_WIN32

class API Student {
    private:
        std::string name;
        int id;
        int age;
    
    public:
        Student(std::string name, int id, int age);
        void PrintInfo(void) const;
        int GetID(void) const;
        std::string GetName(void) const;
        int GetAge(void) const;
    
};

class API StudentManager {
    private: 
        std::vector<Student> students;

    public:
        void addStudent(const Student &s);
        void removeStudent(int id);
        void printAll(void) const;
};

#endif //__STUDENT_HPP