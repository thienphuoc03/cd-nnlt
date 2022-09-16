puts "Nhap so phan tu cua mang: "
n = gets
total = 0

arr = []
for i in (0..n.length) do
    puts "Nhap phan tu thu #{i}: "
    num = gets
    arr.push(num.to_i)
    total += num.to_i
end
puts "array = #{arr}"
