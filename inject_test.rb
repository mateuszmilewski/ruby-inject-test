arr= [1,2,3,4,5]


# all the same
arr.inject(0) { |sum,e| sum + e } # 15
arr.reduce(0) { |sum,e| sum + e } # 15
arr.inject() { |sum,e| sum + e } # 15
arr.reduce() { |sum,e| sum + e } # 15

# and now interesting:
arr.inject(:+) # 15 -> this is a shortcut
arr.reduce(:+) # 15 -> same thing

# but starting from 10
arr.inject(10) { |sum,e| sum + e } # 25


# now same thing with multiplication
# all the same
arr.inject(0) { |sum,e| sum * e } # 120
arr.reduce(0) { |sum,e| sum * e } # 120
arr.inject() { |sum,e| sum * e } # 120
arr.reduce() { |sum,e| sum * e } # 120

# and now interesting:
arr.inject(:*) # 120 -> this is a shortcut
arr.reduce(:*) # 120 -> same thing


# some kind of explanation
arr.reduce() { |x, y| p x, y }
# output:
# 1
# 2
# [1, 2]
# 3
# [[1, 2], 3]
# 4
# [[[1,2],3],4]
# 5
# [[[[1,2],3],4], 5]
