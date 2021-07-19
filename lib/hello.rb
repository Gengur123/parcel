class Parcel
  attr_reader :weight, :length, :height, :width, :id
  @@package = {}
  @@package_number = 0

  def initialize(weight, length, height, width, id)
    @weight = weight
    @length = length
    @height = height
    @width = width
    @id = id || @@package_number += 1
  end

  def save
    @@package[self.id] = Parcel.new(self.weight, self.length, self.height, self.width, self.id)
  end

  def self.all 
    @@package.values()
  end

  def ==(parcel_to_compare)
    self.weight() == parcel_to_compare.weight
    self.height() == parcel_to_compare.height
    self.length() == parcel_to_compare.length
    self.width() == parcel_to_compare.width
  end
end