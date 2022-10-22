require_relative "PhanSo"

class BieuThuc < PhanSo
  def initialize

  end

  # def timUSCLN(a, b)
  #   while a != b
  #     if a > b
  #       a = a - b
  #     else
  #       b = b - a
  #     end
  #   end

  #   return a
  # end

  # def toiGianPhanSo(phanSo)
  #   i = timUSCLN(phanSo.tuSo, phanSo.mauSo)
  #   phanSo.tuSo(phanSo.tuSo / i)
  #   phanSo.mauSo(phanSo.mauSo / i)
  #   return phanSo
  # end

  def congPhanSo(phanSo1, phanSo2)
    tuSo = phanSo1.tuSo * phanSo2.mauSo + phanSo2.tuSo * phanSo1.mauSo
    mauSo = phanSo1.mauSo * phanSo2.mauSo
    phanSoTong = PhanSo.new(tuSo, mauSo)
    puts "Tong hai phan so: #{phanSo.tuSo} / #{phanSo.mauSo}"

  end

  def truPhanSo(phanSo1, phanSo2)
    tuSo = phanSo1.tuSo * phanSo2.mauSo - phanSo2.tuSo * phanSo1.mauSo
    mauSo = phanSo1.mauSo * phanSo2.mauSo
    phanSoHieu = PhanSo.new(tuSo, mauSo)
    puts "Hieu hai phan so: #{phanSoHieu.tuSo} / #{phanSoHieu.mauSo}"
  end

  def nhanPhanSo(phanSo1, phanSo2)
    tuSo = phanSo1.tuSo * phanSo2.tuSo
    mauSo = phanSo1.mauSo * phanSo2.mauSo
    phanSoTich = PhanSo.new(tuSo, mauSo)
    puts "Tich hai phan so: #{phanSoTich.tuSo} / #{phanSoTich.mauSo}"
  end

  def chiaPhanSo(phanSo1, phanSo2)
    tuSo = phanSo1.tuSo * phanSo2.mauSo
    mauSo = phanSo1.mauSo * phanSo2.tuSo
    phanSoThuong = PhanSo.new(tuSo, mauSo)
    puts "Thuong hai phan so: #{phanSoThuong.tuSo} / #{phanSoThuong.mauSo}"
  end
end