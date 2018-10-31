arr= [1,2,3,4,5]


# all the same
arr.inject(0) { |sum,e| sum + e } # 15
arr.reduce(0) { |sum,e| sum + e } # 15
arr.inject() { |sum,e| sum + e } # 15
arr.reduce() { |sum,e| sum + e } # 15

# but starting from 10
arr.inject(10) { |sum,e| sum + e } # 25


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
