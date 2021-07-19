require 'rspec'
require 'hello'


describe('#Parcel') do
  it("returns the values of an instance of Parcel") do
      parcel1 = Parcel.new(20, 5, 5, 5, nil)
      expect(parcel1.weight).to(eq(20))
      expect(parcel1.length).to(eq(5))
      expect(parcel1.id).to(eq(1))
    end
    
  it("should compare parcel1 and parcel2 to itself and it should equal true") do
    parcel1 = Parcel.new(20, 5, 5, 5, nil)
    parcel1.save
    parcel2 = Parcel.new(20, 5, 10, 10, nil)
    parcel2.save
    expect(Parcel.all).to(eq([parcel1, parcel2]))
  end


end