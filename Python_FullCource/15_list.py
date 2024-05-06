user_inputs = [True, 'hi!', '♀', 10.5]
print(len(user_inputs))  # 4

del user_inputs[1]
print(user_inputs)  # [True, '♀', 10.5]

############
users = [
    {
        'user_id' : 134,
        'user_name' : 'Alice'
    },
    {
        'user_id' : 831,
        'user_name' : 'Bob'
    }
]
print(len(users))   # 2
print(users[1]['user_name'])  # Bob

################
symbols = []
symbols.append('µ')
symbols.append('τ')
print(symbols)  # ['µ', 'τ']

#################
inputs = [True, 'hi!', '♀', 10.5]
inputs.pop()  # removed 10.5
inputs.pop(0)  #removed True
removed_element = inputs.pop()  #removed '♀'
print(removed_element)  # '♀'

#############
posts_ids = [123, 456, 789, 428]
posts_ids.sort()
print(posts_ids)  # [123, 428, 456, 789]

posts_ids.sort(reverse=True)
print(posts_ids)  # [789, 456, 428, 123]

###############
my_dict = {'a':10, 'b':20}
my_dict_keys = list(my_dict)
print(my_dict_keys)  # ['a', 'b']

################
posts_ids = [123, 456, 789, 428]
copied_ids = posts_ids[:]  # copy by elemnts
copied_ids2 = posts_ids.copy()
print(id(posts_ids) == id(copied_ids))  # False
print(id(posts_ids) == id(copied_ids2))  # False
