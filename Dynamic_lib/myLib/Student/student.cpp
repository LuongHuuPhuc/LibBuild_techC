/**
 * @brief Quan ly sinh vien
 * @file student.cpp
 */

#include "iostream"
#include "algorithm"
#include "student.hpp"

Student::Student(std::string name, int id, int age)
    : name(name), id(id), age(age) {}

void Student::PrintInfo(void) const {
    std::cout << "ID" << id
              << ", Name: " << name
              << ", Age: " << age << std::endl;
}

int Student::GetID(void) const {
    return id;
}

std::string Student::GetName(void) const {
    return name;
}

int Student::GetAge(void) const {
    return age;
}

void StudentManager::addStudent(const Student &s){
    students.push_back(s);
}

void StudentManager::removeStudent(int id){
    students.erase(std::remove_if(students.begin(), students.end(),
                   [id](const Student &s){
                    return s.GetID() == id;
                   }), students.end());
}

void StudentManager::printAll(void) const {
    for(const auto &s : students){
        s.PrintInfo();
    }
}