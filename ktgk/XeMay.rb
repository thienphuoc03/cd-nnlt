require_relative "PhuongTien"

class XeMay < PhuongTien
  attr_accessor :congSuat, :dungTichBinhXang

  def initialize(id, hangSX, namSX, dongXe, giaBan, bienSo, mauXe, congSuat, dungTichBinhXang)
    super(id, hangSX, namSX, dongXe, giaBan, bienSo, mauXe)
    @congSuat = congSuat
    @dungTichBinhXang = dungTichBinhXang
  end

  def show()
    puts "Id: #{@id}, hang san xuat: #{@hangSX}, nam san xuat: #{@namSX}, dong xe: #{@dongXe}, gia ban: #{@giaBan}, bien so: #{@bienSo}, mau xe: #{@mauXe}, cong suat: #{@congSuat}, dung tich binh xang: #{@dungTichBinhXang}"
  end
end