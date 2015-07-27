require_relative "../lib/uberscore"

describe Uberscore do
  it "chains method calls" do
    expect(%w[0x 0d ea].map(&_.hex.divmod(13)[1] == 0)).to eq(%w[0x 0d ea].map { |element| element.hex.divmod(13)[1] == 0 })
  end

  it "can call ::new" do
    expect([Array, Hash].map(&_.new(4))).to eq([Array, Hash].map { |a_class| a_class.new(4) })
  end

  it "can be nested" do
    expect([[2, 3]].map(&_.map(&_ * 2))).to eq([[2, 3]].map { |array| array.map { |element| element * 2 } })
  end
end