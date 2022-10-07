class PhuongTien
  attr_accessor :id, :hangSX, :namSX, :dongXe, :giaBan, :bienSo, :mauXe
  def initialize(id, hangSX, namSX, dongXe, giaBan, bienSo, mauXe)
    @id = id
    @hangSX = hangSX
    @namSX = namSX
    @dongXe = dongXe
    @giaBan = giaBan
    @bienSo = bienSo
    @mauXe = mauXe
  end
end