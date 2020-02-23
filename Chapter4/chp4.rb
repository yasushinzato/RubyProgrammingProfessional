numbers = [1,2,3,4]
sum = 0
numbers.each do |n|
  # 偶数のみ１０倍して加算する。
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
puts sum
