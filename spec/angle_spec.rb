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

  it "is equal to an integer with the same number of degrees" do
    angle = Angle.new(90)
    expect(angle == 90).to be_true
  end

  it "is equal to another angle with the same number of degrees" do
    angle1 = Angle.new(90)
    angle2 = Angle.new(90)
    expect(angle1 == angle2).to be_true
  end

end