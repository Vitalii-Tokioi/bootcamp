print('-- 1 --')

my_motorbike = {
    'brand': 'Honda',
    'price': 10000,
    'engine_vol': 1.2,
}
my_motorbike['price'] = 7000
print(my_motorbike['price']) # 7000
print(len(my_motorbike))
################

print('\n-- 2 --')

my_motorbike['is_new'] = True
print(my_motorbike)

del my_motorbike['engine_vol']
print(my_motorbike)
################

print('\n-- 3 --')

key_name = 'brand'
my_motorbike[key_name] = 'BMW'
print(my_motorbike)
################

print('\n-- 4 --')

print(my_motorbike.get('model')) # None
print(my_motorbike.get('model', 'No model')) # No model
################

print('\n-- 5 --')

print(my_motorbike.items()) # dict_items([('brand', 'BMW'), ('price', 7000), ('is_new', True)])
print(my_motorbike.keys()) # dict_keys(['brand', 'price', 'is_new'])
################

print('\n-- 6 --')

new_motorbike = my_motorbike.copy()
new_motorbike['speed'] = 250
print(my_motorbike)
print(new_motorbike)
################

print('\n-- 7 --')

my_list = [['first', 0], ('second', True)]
my_dict = dict(my_list)
print(my_dict)

################

print('\n-- HW --')


k1 = 'a'
v1 = 'A'
k2 = 'second'
v2 = 2
k3 = 3
v3 = False
my_dict = {}
my_dict[k1] = v1
my_dict[k2] = v2
my_dict[k3] = v3
print(my_dict)

my_dict['add'] = 'ADD'
print(my_dict)

del my_dict[k2]
print(my_dict)
