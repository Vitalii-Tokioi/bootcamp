int_num = 5
float_num = 4.5
print(int_num + float_num)
#9.5

print(int_num.__add__(float_num))
#NotImplemented

print(float_num.__radd__(int_num))
#9.5


bool_val = True
print(bool_val + int_num)
#6

print(5 * 'abc_')
#abc_abc_abc_abc_abc_

print(bool)
#<class 'bool'>

print(dir(bool))

print(bool.__doc__)

print()
print(help(bool.__add__))