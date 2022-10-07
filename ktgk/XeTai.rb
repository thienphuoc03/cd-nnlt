require_relative "PhuongTien"

class XeTai < PhuongTien
  attr_accessor :trongTai

  def initialize(id, hangSX, namSX, dongXe, giaBan, bienSo, mauXe, trongTai)
    super(id, hangSX, namSX, dongXe, giaBan, bienSo, mauXe)
    @trongTai = trongTai
  end

  def show()
    puts "Id: #{@id}, hang san xuat: #{@hangSX}, nam san xuat: #{@namSX}, dong xe: #{@dongXe}, gia ban: #{@giaBan}, bien so: #{@bienSo}, mau xe: #{@mauXe}, trong tai: #{@trongTai}"
  end
end