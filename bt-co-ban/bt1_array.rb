puts "Nhập số phần tử mảng: "
n = gets.to_i
len = n - 1
total = 0

arr = []
(0..n-1).each do |i|
    puts "Nhập phần tử thứ #{i}: "
    num = gets.to_i
    arr.push(num)
    total += num
end
average = total/(arr.length)

puts "Array = #{arr}"
puts "Số lớn nhất: #{arr.max}"
puts "Số nhỏ nhất: #{arr.min}"
puts "Giá trị trung bình: #{average}"
