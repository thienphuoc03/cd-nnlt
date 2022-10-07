require_relative "PhuongTien"

class Oto < PhuongTien
  attr_accessor :soChoNgoi, :kieuDongCo, :nhienLieu, :soTuiKhi, :ngayDangKiem

  def initialize(id, hangSX, namSX, dongXe, giaBan, bienSo, mauXe, soChoNgoi, kieuDongCo, nhienLieu, soTuiKhi, ngayDangKiem)
    super(id, hangSX, namSX, dongXe, giaBan, bienSo, mauXe)
    @soChoNgoi = soChoNgoi
    @kieuDongCo = kieuDongCo
    @nhienLieu = nhienLieu
    @soTuiKhi = soTuiKhi
    @ngayDangKiem = ngayDangKiem
  end

  def show
    puts "Id: #{@id}, hang san xuat: #{@hangSX}, nam san xuat: #{@namSX}, dong xe: #{@dongXe}, gia ban: #{@giaBan}, bien so: #{@bienSo}, mau xe: #{@mauXe}, so cho ngoi: #{@soChoNgoi}, kieu dong co: #{@kieuDongCo}, nhien lieu: #{@nhienLieu}, so tui khi: #{@soTuiKhi}, ngay dang kiem: #{@ngayDangKiem}"
  end
end