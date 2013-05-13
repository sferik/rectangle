class Rectangle < Object
  attr_accessor :width, :height

  def initialize(width, height)
    @width = width
    @height = height
  end

  def sides
    4
  end

end

require 'rspec'

describe Rectangle do

  it "starts off with a width and height" do
    rect = Rectangle.new(5, 7)
    expect(rect.width).to eq 5
    expect(rect.height).to eq 7
  end

  it "is a polygon" do
    rect = Rectangle.new(5, 7)
    expect(rect.sides).to be > 2
  end

end