print('-- 1 --')

fruits = ['apple', 'banana', 'lime', 'lemon']
quantities = [100, 70, 50, 20]
availability = (True, False, True, False)

fruit_qtys_zip = zip(fruits, quantities, availability)
print(fruit_qtys_zip)  # <zip object at 0x7f72514d2640>

fruit_qtys_list = list(fruit_qtys_zip)
print(fruit_qtys_list)  # [('apple', 100, True), ('banana', 70, False), ('lime', 50, True), ('lemon', 20, False)]
##################################

print('\n-- 2 --')

fruit_qtys_dict = dict(fruit_qtys_zip)
print(fruit_qtys_dict)  # {}

fruit_qtys_zip_2 = zip(fruits, quantities)
fruit_qtys_dict = dict(fruit_qtys_zip_2)
print(fruit_qtys_dict)  # {'apple': 100, 'banana': 70, 'lime': 50, 'lemon': 20}

