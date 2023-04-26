sudoku = '''295743861
431865927
876192543
387459216
612387495
549216738
763524189
928671354
154938672'''
row_array = sudoku.split()
col_array = ['' for i in range(9)]
print(col_array)
for i in range(len(col_array)):
    for j in range(9):
        col_array[i] += list(row_array[j])[i]
# print(row_array)
# print(col_array)
box_array = [] 
#here we collect the nine 3x3 "tiles"
#We consider the whole table as  3 sub square of 3 rows then each sub-square contains 
# 3 sub squares of 3 columns * 3 rows
for i in range(0,9,3): #consider the rows
    for k in range(0,9,3):#consider the columns
        box =''
        for j in range(i, i+3):
            box += row_array[j][k:k+3]
        box_array.append(box)
# print(box_array)
# a=list(box_array[1])
# a.sort()
# print(''.join(a))
# def arrange(str):
#     temp = list(str)
#     temp.sort()
#     str = ''.join(temp)
#     # return str
# print(arrange(row_array[0]))
for i in range (len(row_array)):
    temp = list(row_array[i])
    temp.sort()
    row_array[i] = ''.join(temp)
    temp = list(col_array[i])
    temp.sort()
    col_array[i] = ''.join(temp)
    temp = list(box_array)
    temp.sort()
    box_array[i] = ''.join(temp)

# print(row_array)
# print(col_array)
# print(row_array)
def isSudoku():
    good = 'Yes'
    for i in range (len(row_array)):
        good_str ='123456789'
        if row_array[i] != good_str or col_array[i] != good_str or box_array[i] != good_str:
            good_str = 'No'
            break
    return good 
print(isSudoku())
