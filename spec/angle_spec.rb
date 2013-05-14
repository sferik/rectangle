# coding: utf-8

require_relative 'spec_helper'

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

  it "correctly converts to radians" do
    angle = Angle.new(90)
    expect(angle.to_rad).to eq 1.5707963267948966
  end

  it "is equal to a number with the same number of degrees" do
    angle = Angle.new(90)
    expect(angle == 90).to be_true
  end

  it "is equal to another angle with the same number of degrees" do
    angle1 = Angle.new(90)
    angle2 = Angle.new(90)
    expect(angle1 == angle2).to be_true
  end

  it "is less than a number if its degrees are less than that number" do
    angle = Angle.new(90)
    expect(angle < 91).to be_true
  end

  it "is less than another angle if it has fewer degrees" do
    angle1 = Angle.new(45)
    angle2 = Angle.new(90)
    expect(angle1 < angle2).to be_true
  end

  it "is less than or equal to a number if its degrees are less than or equal to that number" do
    angle = Angle.new(90)
    expect(angle <= 90).to be_true
    expect(angle <= 100).to be_true
  end

  it "is less than or equal to another angle if it has fewer or an equal number of degrees" do
    angle1 = Angle.new(90)
    angle2 = Angle.new(90)
    angle3 = Angle.new(45)
    expect(angle1 <= angle2).to be_true
    expect(angle3 <= angle1).to be_true
  end

  it "is greater than a number if its degrees are greater than that number" do
    angle = Angle.new(90)
    expect(angle > 89).to be_true
  end

  it "is greater than another angle if it has more degrees" do
    angle1 = Angle.new(90)
    angle2 = Angle.new(45)
    expect(angle1 > angle2).to be_true
  end

  it "is greater than or equal to a number if its degrees are greater than or equal to that number" do
    angle = Angle.new(90)
    expect(angle >= 90).to be_true
    expect(angle >= 80).to be_true
  end

  it "is greater than or equal to another angle if it has more or an equal number of degrees" do
    angle1 = Angle.new(90)
    angle2 = Angle.new(90)
    angle3 = Angle.new(135)
    expect(angle1 >= angle2).to be_true
    expect(angle3 >= angle1).to be_true
  end

  it "is between one angle and another angle if it is greater than or equal to the first angle and less than or equal to the second angle" do
    angle1 = Angle.new(45)
    angle2 = Angle.new(90)
    angle3 = Angle.new(135)
    expect(angle2.between?(angle1, angle3)).to be_true
    expect(angle1.between?(angle2, angle3)).to be_false
  end

  it "can be sorted in an array" do
    angle1 = Angle.new(45)
    angle2 = Angle.new(90)
    angle3 = Angle.new(135)
    arr = [angle2, angle3, angle1]
    expect(arr.sort).to eq [angle1, angle2, angle3]
  end

end