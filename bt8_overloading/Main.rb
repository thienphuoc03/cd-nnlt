require_relative "PhanSo"
require_relative "BieuThuc"

bieuThuc = BieuThuc.new

def nhapPhanSo()
  puts "\nNhap Phan so:"
  puts "Nhap tu so:"
  tuSo = gets.to_i
  puts "Nhap mau so:"
  mauSo = gets.to_i
  phanSo = PhanSo.new(tuSo, mauSo)

  return phanSo
end

while true
  puts "\n\n-----Chuc nang-----"
  puts "1: Cong 2 phan so"
  puts "2: Tru 2 phan so"
  puts "3: Nhan 2 phan so"
  puts "4: Chia 2 phan so"
  puts "5: Thoat"

  puts "\nNhap lua chon:"
  choice = gets.to_i

  case choice
  when 1
    phanSo1 = nhapPhanSo()
    phanSo2 = nhapPhanSo()
    bieuThuc.congPhanSo(phanSo1, phanSo2)
  when 2
    phanSo1 = nhapPhanSo()
    phanSo2 = nhapPhanSo()
    bieuThuc.truPhanSo(phanSo1, phanSo2)
  when 3
    phanSo1 = nhapPhanSo()
    phanSo2 = nhapPhanSo()
    bieuThuc.nhanPhanSo(phanSo1, phanSo2)
  when 4
    phanSo1 = nhapPhanSo()
    phanSo2 = nhapPhanSo()
    bieuThuc.chiaPhanSo(phanSo1, phanSo2)
  when 5
    return
  else
    puts "Invalid"
  end
end

