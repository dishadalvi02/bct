// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentData {
    // Structure to represent a student
    struct Student {
        string name;
        uint256 rollNumber;
        uint256 age;
    }

    // Array to store student records
    Student[] public students;

    // Add a new student record
    function addStudent(string memory name, uint256 rollNumber, uint256 age) public {
        Student memory newStudent = Student(name, rollNumber, age);
        students.push(newStudent);
    }

    // Get the total number of students
    function getStudentCount() public view returns (uint256) {
        return students.length;
    }

    // Get student details by index
    function getStudent(uint256 index) public view returns (string memory, uint256, uint256) {
        require(index < students.length, "Student index out of range");
        Student memory student = students[index];
        return (student.name, student.rollNumber, student.age);
    }

    // Fallback function
    receive() external payable {
        // Fallback function to receive Ether
    }
}
