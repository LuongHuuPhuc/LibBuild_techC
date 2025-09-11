/**
 * @brief Quan ly diem 
 * @file grade.cpp
 */

#include "iostream"
#include "numeric"
#include "grade.hpp"

void Grade::addSubject(const std::string &name, double score){
    subject[name] = score;
}

double Grade::calcGPA(void) const {
    if(subject.empty()) return 0.0;
    double sum = 0;
    for(auto &kv : subject) sum += kv.second;
    return sum / subject.size();
}

void Grade::printGrades(void) const {
    for(auto &kv : subject) {
        std::cout << kv.first << ": " << kv.second << std::endl;
    }
    std::cout << "GPA: " << calcGPA() << std::endl;
}