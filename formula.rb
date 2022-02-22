### 最大公約数
# puts 4.gcd(6)

### 最小公倍数
# puts 4.lcm(6)

### 3つの整数の場合
# puts a.gcd(b).gcd(c)

# puts a.lcm(b).lcm(c)

### 整数の組みが配列で与えられていたら
# numbers = [30,20,15]

# puts numbers.inject(:gcd)

# puts numbers.inject(:lcm)


### トリボナッチ数列

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


### フィボナッチ数列

# class Fib
#   def fibonacci n
#     send "fibonacci_#{n}"
#   end

#   def method_missing name, *args
#     return super if name !~ /fibonacci_(\d+)/
#     num = $1.to_i
#     result = if num <= 1
#       num
#     else
#       fibonacci(num - 2) + fibonacci(num - 1)
#     end
#     define_singleton_method(name) { result }
#     result
#   end
# end

# fib = Fib.new
# p (0..50).map { |n| fib.fibonacci(n) }


### 約数の出力

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


### 約数の合計を出力

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


### 輪を出したい約数の範囲を指定できるようにする

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


### 整数 a,b,cと、文字列 s が与えられます。
### a+b+c の計算結果と、文字列 s を並べて表示しなさい。

# 整数の入力
# a = gets.to_i
# スペース区切りの整数の入力
# a,b,c = gets.chomp.split(" ").map(&:to_i);
# 文字列の入力
# s = gets.chomp
# 出力
# puts("#{a+b+c} #{s}\n")


# 整数を２つ入力
# a,b = gets.split(" ").map(&:to_i);

# a×b
# c = a * b

# cが奇数か偶数か
# if c % 2 == 0
#   puts "Even"
# else
#   puts "Odd"
# end


### 配列の値が奇数になるまで2で
# 整数を入力
# n = gets.to_i

# puts("#{n}個数字を入力してください")
# lists = gets.split(" ").map(&:to_i)
# cnt = 0
# while lists.all?(&:even?) do  #全てが偶数かどうか　.all?(&:even?)
#   cnt += 1
#   lists = lists.map{|a| a/2}
# end

# puts cnt


### 500 円玉をA枚、100 円玉をB枚、50 円玉をC枚持っています。
### これらの硬貨の中から何枚かを選び、合計金額をちょうど XX 円にする方法は何通りあるでしょうか？

# a,b,c = gets.split(" ").map(&:to_i)
# x = gets.to_i

# cnt = 0
# (0..a).each do |i|
#   (0..b).each do |j|
#     (0..c).each do |k|
#       cnt += 1 if i*500 + j*100 + k*50 == x
#     end
#   end
# end

# puts cnt


### 1以上N以下の整数のうち、10 進法で各桁の和が A 以上 B 以下であるものについて、
### 総和を求めてください。

# n,a,b = gets.split(" ").map(&:to_i)
# result = 0

# (1..n).each do |i|
#   j = i
#   sum = 0
#   while j > 0
#     sum += j % 10 #jを10で割った余をsumに入れていく
#     j = j / 10    #jを10で割った値をjに入れる
#   end
#   if sum >= a && sum <= b
#     result += i
#   end
# end

# puts result

###配列から大きい順に二人(aliceとbob)でカードを取った時、何点多く獲得できるか。
n = gets.to_i
card = gets.split.map(&:to_i).sort.reverse #数字の大きい順に並び替える（sortのみで小さい順）

alice = 0
bob = 0

until card.empty? do
    alice += card.shift #配列の先頭から要素を取り出す
    break if card.empty? #break ifを使うことでfalceだった場合繰り返し処理を終了する。
    bob += card.shift
end

puts (alice - bob)