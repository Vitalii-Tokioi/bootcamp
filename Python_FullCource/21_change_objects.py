print('-- 1 --')

info = {
    'name': 'Vitalii',
    'is_master': True,
    'reviews': []
}

info_copy = info.copy()

info_copy['reviews'].append('Great cource!')
info_copy['reviews'].append('Super')

print(info)  # {'name': 'Vitalii', 'is_master': True, 'reviews': ['Great cource!', 'Super']}

print(info_copy)  # {'name': 'Vitalii', 'is_master': True, 'reviews': ['Great cource!', 'Super']}
##################################

print('\n-- 2 --')

from copy import deepcopy

info = {
    'name': 'Vitalii',
    'is_master': True,
    'reviews': []
}

info_deepcopy = deepcopy(info)

info_deepcopy['reviews'].append('Great cource!')
info_deepcopy['reviews'].append('Super')

print(info)  # {'name': 'Vitalii', 'is_master': True, 'reviews': []}

print(info_deepcopy)  # {'name': 'Vitalii', 'is_master': True, 'reviews': ['Great cource!', 'Super']}


