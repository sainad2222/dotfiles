# # making pairs in python
# s = [1,3,0,5,8,5]
# f = [2,6,9,7,4,9]
# unsorted = list(zip(s,f))
# sortedd = sorted(unsorted,key = lambda x:x[1])
# print(sortedd)

# # sorting dictionaries in python
# unsorted = {1:5,2:8,8:7,4:10,5:11}
# sortedd = {k:v for k,v in sorted(unsorted.items(),key = lambda x:x[1])}
# print(sortedd)

# # zipping and unzipping
# one = [1,2,3,4,5,6]
# two = [6,5,4,3,2,1]
# zipped = list(zip(one,two))
# one,two = zip(*zipped)
# one,two = list(one),list(two)
# print(one,two)

# # if loop doesn't break
# for i in range(3):
#     if i==3:
#         break
# else:
#     print("loop didn't broke")

# C++ upper bound and lower bound equivalent in python
# using bisect module
# https://docs.python.org/3/library/bisect.html
# bisect_left returns i such that all(val < x for val in a[lo:i]) for left side and all(val >= x for val in a[i:hi]) for right side
# bisect_right just reverse
# bisect similar to bisectleft but val<=x instead of val<x
# insort functions are just insert(returned i from above functions,x)

# Ceil with math.ceil
# add den-1 to num
# eg: ceil(a/b) = (num+den-1)//den

# int(log2(n)) gives length of binary number for n

# s = s.replace("10","") ## python
# s1 = regex_replace(s, regex("01"), ""); ## CPP

# BIT trick-I
# a+b = a/b + a&b
# a^b = a/b - a&b
## Proofs:
### consider    a = 10001
###             b = 01110
###            a|b considers all same bits AND a&b considers all non same bits
