# This problem is known as the “Unique Paths” problem: Let’s say you have
# a grid of rows and columns. Write a function that accepts a number of rows
# and a number of columns, and calculates the number of possible “shortest”
# paths from the upper-leftmost square to the lower-rightmost square.

def unique_paths(rows, columns)
    return 1 if rows == 1 || columns == 1
    return unique_paths(rows - 1, columns) + unique_paths(rows, columns - 1)
end

p unique_paths(7, 3)
