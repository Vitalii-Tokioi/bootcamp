
print('-- 1 --')

my_nums = (5, 10, 200, 0, 5)
print(my_nums)
##################################

print('\n-- 2 --')

print(my_nums.count(5)) # 2
##################################

print('\n-- 3 Tuple methods --')

print(my_nums.index(200)) # 2
print(my_nums.index(5)) # 0 (index of the first element)
##################################

print('\n-- 4 - How Change Tuple --')

print(my_nums)
my_nums_list = list(my_nums)
my_nums_list.append(888)
print(my_nums_list) # [5, 10, 200, 0, 5, 888]

my_nums = tuple(my_nums_list)
print(my_nums) # (5, 10, 200, 0, 5, 888)
##################################

print('\n-- 5 - Concatenate Tuple --')

my_letters = tuple('abcd')
my_full_tuple = my_nums + my_letters
print(my_full_tuple) # (5, 10, 200, 0, 5, 888, 'a', 'b', 'c', 'd')


