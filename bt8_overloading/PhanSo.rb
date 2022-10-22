class PhanSo
  attr_accessor :tuSo, :mauSo
  def initialize(tuSo, mauSo)
    @tuSo = tuSo
    @mauSo = mauSo
  end

  def +(obj)
    puts "#{(self.tuSo * obj.mauSo + self.mauSo * obj.tuSo)} / #{(self.mauSo * obj.mauSo)}"
  end

  def -(obj)
    puts "#{(self.tuSo * obj.mauSo - self.mauSo * obj.tuSo)} / #{(self.mauSo * obj.mauSo)}"
  end

  def *(obj)
    puts "#{(self.tuSo * obj.tuSo)} / #{(self.mauSo * obj.mauSo)}"
  end

  def /(obj)
    puts "#{(self.tuSo * obj.mauSo)} / #{(self.mauSo * obj.tuSo)}"
  end
end