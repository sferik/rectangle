# coding: utf-8

class Rectangle < Object
  attr_accessor :width, :height, :angles

  def initialize(width, height)
    @width = width
    @height = height
    @angles = [90, 90, 90, 90]
  end

  def sides
    4
  end

  def area
    @width * @height
  end

end

require 'rspec'

describe Rectangle do

  let(:rect) do
    Rectangle.new(5, 7)
  end

  it "starts off with a width and height" do
    expect(rect.width).to eq 5
    expect(rect.height).to eq 7
  end

  it "is a polygon" do
    expect(rect.sides).to be > 2
  end

  it "has an area" do
    expect(rect.area).to eq 35
  end

  it "has four 90° angles" do
    expect(rect.angles.length).to eq 4
    rect.angles.each do |angle|
      expect(angle).to eq 90
    end
  end

end