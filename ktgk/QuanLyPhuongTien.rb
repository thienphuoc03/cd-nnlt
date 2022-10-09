require_relative "PhuongTien"
require_relative "Oto"
require_relative "XeMay"
require_relative "XeTai"

class QuanLyPhuongTien
  def initialize
    @dsPhuongTien = []
  end

  def themPhuongTien(phuongTien)
    @dsPhuongTien << phuongTien
    puts "Them thanh cong"
  end

  def xoaPhuongTien(id)
    @dsPhuongTien.each do |phuongTien|
     if phuongTien.id == id
      @dsPhuongTien.delete(phuongTien)
      puts "Xoa thanh cong"
     elsif
      puts "Khong tim thay phuong tien"
     end
    end
  end

  def timPhuongTienTheoHangSX(hangSX)
    @dsPhuongTien.each do |phuongTien|
     if phuongTien.hangSX.include? hangSX
      phuongTien.show()
     elsif
      puts "Khong tim thay phuong tien"
     end
    end
  end

  def timPhuongTienTheoMauXe(mauXe)
    @dsPhuongTien.each do |phuongTien|
     if phuongTien.mauXe.include? mauXe
      phuongTien.show()
     elsif
      puts "Khong tim thay phuong tien"
     end
    end
  end

  def timPhuongTienTheoBienSo(bienSo)
    @dsPhuongTien.each do |phuongTien|
     if phuongTien.bienSo.include? bienSo
      phuongTien.show()
     elsif
      puts "Khong tim thay phuong tien"
     end
    end
  end

  def show()
    @dsPhuongTien.each do |phuongTien|
      phuongTien.show()
    end
  end

end