class SinhVien
    attr_accessor :id, :name, :toan, :ly, :hoa

    def initialize(id, name)
        @id = id
        @name = name
    end

    # Getter, Setter
    def get_id
        @id
    end

    def set_id=(id)
        @id = id
    end

    def get_name
        @name
    end

    def set_name=(name)
        @name = name
    end

    def set_toan(toan)
        @toan = toan
    end

    def set_ly(ly)
        @ly = ly
    end

    def set_hoa(hoa)
        @hoa = hoa
    end

    #Tinh diem trung binh
    def average
        (toan + ly + hoa) / 3.0
    end

    def show
        puts "Mã sinh viên: #{@id}"
        puts "Tên sinh viên: #{@name}"
        puts "Điểm trung bình: #{average().round(2)}"
    end
end

puts "Nhập mã sinh viên: "
id = gets.chomp
puts "Nhập tên sinh viên: "
name = gets.chomp

std = SinhVien.new(id, name)

puts "Nhập vào điểm toán: "
std.set_toan(gets.chomp.to_i)
puts "Nhập vào điểm lý: "
std.set_ly(gets.chomp.to_i)
puts "Nhập vào điểm hóa: "
std.set_hoa(gets.chomp.to_i)

puts "\n\n***THÔNG TIN SINH VIÊN***"
std.show