# coding: utf-8

class Angle < Object

  def initialize(deg)
    raise ArgumentError.new("Degrees must be positive") if deg <= 0
    @deg = deg
  end

  def to_deg
    @deg
  end

  def right?
    @deg == 90
  end

  def acute?
    @deg < 90
  end

end

class Rectangle < Object
  attr_accessor :width, :height, :angles, :sides

  def initialize(width, height)
    @width = width
    @height = height
    @angles = [90, 90, 90, 90]
    @sides = 4
  end

  def area
    @width * @height
  end

end

require 'rspec'

describe Angle do

  it "starts off with a measure in degrees" do
    angle = Angle.new(90)
    expect(angle.to_deg).to eq 90
  end

  it "must be positive" do
    expect {
      Angle.new(0)
    }.to raise_error(ArgumentError)
  end

  it "is a right angle if it's 90°" do
    angle = Angle.new(90)
    expect(angle.right?).to be_true
  end

  it "is acute if it's less than 90°" do
    angle = Angle.new(89.9)
    expect(angle.acute?).to be_true
  end

  it "is obtuse if it's greater than 90°" do
    angle = Angle.new(90.1)
    expect(angle.obtuse?).to be_true
  end


end

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
    expect(rect.angles.all?{|angle| angle == 90}).to be_true
  end

end