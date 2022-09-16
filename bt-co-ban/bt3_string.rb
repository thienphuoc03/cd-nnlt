loop do
    puts "Nhập tên của bạn:"
    name = gets.chomp
    if name != ""
        puts "Tên của bạn là: #{name}"
        break
    end
end
