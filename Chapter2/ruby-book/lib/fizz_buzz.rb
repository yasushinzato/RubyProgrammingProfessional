def fizz_buzz(n)
  if n % 15 == 0
    'Fizz_Buzz'
  elsif n % 3 == 0
    'Fizz'
  elsif n % 5 == 0
    'Buzz'
  else
    n.to_s
  end
end

# for i in 1..15 do
#   puts fizz_buzz(i)
# end
