from sys import argv, exit
import csv
import cs50

def main():

    if len(argv) != 2:
        print('enter one csv file')
        exit(1)

    db = cs50.SQL("sqlite:///students.db")
    house = argv[1]

    students = db.execute("SELECT first, middle, last, birth FROM students WHERE house = ? ORDER BY last, first", house)
    for student in students:
        if student['middle'] == None:
            print(f"{student['first']} {student['last']}, born {student['birth']}")
        else:
            print(f"{student['first']} {student['middle']} {student['last']}, born {student['birth']}")

main()
