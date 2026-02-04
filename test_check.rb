def test_check(n)    
  words = ''
  words << 'Fizz' if n % 3 == 0
  words << 'Buzz' if n % 5 == 0
  words.empty? ? n : words
end