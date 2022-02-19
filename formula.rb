# トリボナッチ数列

# puts "求めたい数字を入力してください"
# puts "1つ目の数字"
# a = gets.to_i
# puts "２つ目の数字"
# b = gets.to_i
# puts "３つ目の数字"
# c = gets.to_i
# puts "何番目の数字を求めますか？"
# t = gets.to_i

# n = 0
# while n < (t - 3)
#   d = a + b + c
#   a = b
#   b = c
#   c = d
#   n += 1
# end

# puts "#{t}番目の数字は#{c}です"


# フィボナッチ数列

class Fib
  def fibonacci n
    send "fibonacci_#{n}"
  end

  def method_missing name, *args
    return super if name !~ /fibonacci_(\d+)/
    num = $1.to_i
    result = if num <= 1
      num
    else
      fibonacci(num - 2) + fibonacci(num - 1)
    end
    define_singleton_method(name) { result }
    result
  end
end

fib = Fib.new
p (0..50).map { |n| fib.fibonacci(n) }


# 約数の出力

# def divisor(num)
#   count = 1
#   while count <= num
#     divisible = num % count == 0
#     if divisible
#       puts count
#     end
#     count += 1
#   end
# end

# puts "整数を入力してください"
# num = gets.to_i
# divisor(num)


# 約数の合計を出力

# def divisor(num)
#   divisible = []
#   count = 1
#   while count <= num
#     divisible_or = num % count
#     if divisible_or == 0
#       divisible << count
#     end
#     count += 1
#   end
#   puts divisible.sum
# end

# puts "整数を入力してください"
# num = gets.to_i
# divisor(num)


# 輪を出したい約数の範囲を指定できるようにする

# def divisor(num, range)
#   divisible = []
#   divisible_range = []
#   count = 1
#   while count <= num
#     divisible_or = num % count
#     if divisible_or == 0
#       divisible << count
#       if count <= range
#         divisible_range << count
#       end
#     end
#     count += 1
#   end
#   puts "約数の総和は#{divisible.sum}です"
#   puts "#{range}以下の約数の和は#{divisible_range.sum}です"
# end

# puts "約数の総和を出したい整数を入力してください"
# num = gets.to_i
# puts "和を出したい約数の範囲を指定してください"
# range = gets.to_i
# divisor(num, range)

