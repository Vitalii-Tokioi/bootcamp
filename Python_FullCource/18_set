print('-- 1 --')

posts_ids = {5, 10, 200, 0, 10,  5}  # {200, 0, 10, 5}
print(posts_ids)
##################################

print('\n-- 2 --')

empty_set = set()
print(type(empty_set))  # <class 'set'>

##################################

print('\n-- 3 --')

my_set = {'abc', 'd', 'f', 'y'}
other_set = {'a', 'f', 'd'}

print(my_set.intersection(other_set))  # {'d', 'f'}
print(my_set & other_set)  # {'d', 'f'}
print(my_set.intersection('abcd'))  # {'d'}
##################################

print('\n-- 4 --')

print(my_set.union(other_set))  # {'y', 'a', 'f', 'abc', 'd'}
print(my_set | other_set)  # {'y', 'a', 'f', 'abc', 'd'}
##################################

print('\n-- 5 --')

print({'f', 'd'}.issubset(my_set))  # True

print(my_set.issuperset({'f', 'd'}))  # True
##################################

print('\n-- 6 --')

print(my_set.difference(other_set))  # {'y', 'abc'}
print(my_set - other_set)  # {'y', 'abc'}

##################################

print('\n-- 7 --')

my_set.discard('d')
print(my_set)  # {'abc', 'f', 'y'}
##################################

print('\n-- 8 --')

copied_set = my_set.copy()
my_set.add('t')
copied_set.add('l')
print(my_set.symmetric_difference(copied_set))  # {'t', 'l'}

################

print('\n-- HW --')

hw_set = {2, 45, 23, 8}
hw_set.add(888)
print(hw_set)

hw_set_2 = {45, 5, 888, 7}

hw_intersect = hw_set.intersection(hw_set_2)
list_intersect = list(hw_intersect)
print(list_intersect)


