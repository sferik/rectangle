class Rectangle < Object

end

require 'rspec'

describe Rectangle do

  it "starts off with a width and height" do
    rect = Rectangle.new(5, 7)
    expect(rect.width).to eq 5
    expect(rect.height).to eq 7
  end

end