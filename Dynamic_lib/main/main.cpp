/**
 * @file main.c 
 */

#include "iostream"
#include "student.hpp"
#include "grade.hpp"

int main(void) {
    StudentManager sm; 
    Grade g;

    sm.addStudent(Student("Alice", 1, 20));
    sm.addStudent(Student("Bob", 2, 21));
    sm.printAll();

    g.addSubject("Math", 9.0);
    g.addSubject("Physics", 8.5);
    g.printGrades();

    return 0;
}