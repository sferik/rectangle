class Rectangle < Object
  attr_accessor :width, :height

  def initialize(width, height)
    @width = width
    @height = height
  end

end

require 'rspec'

describe Rectangle do

  it "starts off with a width and height" do
    rect = Rectangle.new(5, 7)
    expect(rect.width).to eq 5
    expect(rect.height).to eq 7
  end

end