from sys import argv, exit
import csv
import cs50


def main():

    if len(argv) != 2:
        print('enter one csv file')
        exit(1)

    db = cs50.SQL("sqlite:///students.db")
    
    database = csv.DictReader(open(argv[1]))
    for row in database:
        full = row['name'].split()
        first = full[0]
        if len(full) > 2:
            last = full[2]
            middle = full[1]
        else:
            last = full[1]
            middle = None

        db.execute("INSERT INTO students (first, middle, last, house, birth) VALUES(?, ?, ?, ?, ?)", first, middle, last, row["house"], row["birth"])


main()