require_relative "PhuongTien"
require_relative "Oto"
require_relative "XeMay"
require_relative "XeTai"
require_relative "QuanLyPhuongTien"

quanLyPhuongTien = QuanLyPhuongTien.new
while true
  puts "\n\nHo Thien Phuoc - 1911505310143\n"
  puts "\n-----Danh sach chuc nang-----"
  puts "Nhan 1: Them phuong tien."
  puts "Nhan 2: Xoa phuong tien."
  puts "Nhan 3: Tim kiem phuong tien."
  puts "Nhan 4: Danh sach phuong tien."
  puts "Nhan 5: Thoat."

  puts "\nNhap lua chon:"
  line = gets.to_i

  case line
  when 1
    puts "\n-----Chon loai phuong tien-----"
    puts "Nhan 1: Oto"
    puts "Nhan 2: Xe may"
    puts "Nhan 3: Xe tai"

    puts "\nNhap lua chon:"
    choice = gets.to_i
    case choice
    when 1
      puts "\n-----Oto-----"
      puts "Nhap ID:"
      id = gets.chomp
      puts "Nhap hang san xuat:"
      hangSX = gets.chomp
      puts "Nhap nam san xuat:"
      namSX = gets.chomp
      puts "Nhap dong xe:"
      dongXe = gets.chomp
      puts "Nhap gia ban:"
      giaBan = gets.to_i
      puts "Nhap bien so:"
      bienSo = gets.chomp
      puts "Nhap mau xe:"
      mauXe = gets.chomp
      puts "Nhap so cho ngoi:"
      soChoNgoi =gets.to_i
      puts "Nhap kieu dong co:"
      kieuDongCo = gets.chomp
      puts "Nhap nhien lieu (xang/dau):"
      nhienLieu = gets.chomp
      puts "Nhap so tui khi:"
      soTuiKhi = gets.to_i
      puts "Nhap ngay dang kiem:"
      ngayDangKiem = gets.chomp

      oto = Oto.new(id, hangSX, namSX, dongXe, giaBan, bienSo, mauXe, soChoNgoi, kieuDongCo, nhienLieu, soTuiKhi, ngayDangKiem)

      quanLyPhuongTien.themPhuongTien(oto)
    when 2
      puts "\n-----Xe May-----"
      puts "Nhap ID:"
      id = gets.chomp
      puts "Nhap hang san xuat:"
      hangSX = gets.chomp
      puts "Nhap nam san xuat:"
      namSX = gets.chomp
      puts "Nhap dong xe:"
      dongXe = gets.chomp
      puts "Nhap gia ban:"
      giaBan = gets.to_i
      puts "Nhap bien so:"
      bienSo = gets.chomp
      puts "Nhap mau xe:"
      mauXe = gets.chomp
      puts "Nhap cong suat:"
      congSuat = gets.chomp
      puts "Nhap dung tich binh xang:"
      dungTichBinhXang = gets.chomp

      xeMay = XeMay.new(id, hangSX, namSX, dongXe, giaBan, bienSo, mauXe, congSuat, dungTichBinhXang)

      quanLyPhuongTien.themPhuongTien(xeMay)
    when 3
      puts "\n-----Xe Tai-----"
      puts "Nhap ID:"
      id = gets.chomp
      puts "Nhap hang san xuat:"
      hangSX = gets.chomp
      puts "Nhap nam san xuat:"
      namSX = gets.chomp
      puts "Nhap dong xe:"
      dongXe = gets.chomp
      puts "Nhap gia ban:"
      giaBan = gets.to_i
      puts "Nhap bien so:"
      bienSo = gets.chomp
      puts "Nhap mau xe:"
      mauXe = gets.chomp
      puts "Nhap trong tai:"
      trongTai = gets.chomp

      xeTai = XeTai.new(id, hangSX, namSX, dongXe, giaBan, bienSo, mauXe, trongTai)

      quanLyPhuongTien.themPhuongTien(xeTai)
    else
      puts "Invalid"
    end
  when 2
    puts "\n-----Xoa phuong tien-----"
    puts "Nhap ID phuong tien:"
    id = gets.chomp
    quanLyPhuongTien.xoaPhuongTien(id)
  when 3
    puts "\n-----Tim kiem theo-----"
    puts "Nhan 1: Hang san xuat."
    puts "Nhan 2: Mau xe."
    puts "Nhan 3: Bien so."

    puts "\nNhap lua chon:"
    choice = gets.to_i
    case choice
    when 1
      puts "\nNhap Hang san xuat:"
      hangSX = gets.chomp
      quanLyPhuongTien.timPhuongTienTheoHangSX(hangSX)
    when 2
      puts "\nNhap Mau xe:"
      mauXe = gets.chomp
      quanLyPhuongTien.timPhuongTienTheoMauXe(mauXe)
    when 3
      puts "\nNhap Bien so:"
      bienSo = gets.chomp
      quanLyPhuongTien.timPhuongTienTheoBienSo(bienSo)
    else
      puts "Invalid"
    end
  when 4
    puts "\n-----Danh sach phuong tien-----"
    quanLyPhuongTien.show()
  when 5
    puts "Exits"
    return
  else
    puts "Invalid"
  end
end