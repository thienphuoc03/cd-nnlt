# Viết chương trình cho phép nhập vào một số nguyên dương n, tính tổng tất cả số lẻ trong khoảng từ 0 - n.

puts 'Nhập n:'
n_143 = gets.to_i
sum_143 = 0

(0..n_143).each do |i_143|
  if i_143 % 2 == 1
    sum_143 = sum_143 + i_143
  end
end

puts ("Tổng các số lẻ là: #{sum_143}")
