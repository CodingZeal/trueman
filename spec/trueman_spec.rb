require 'spec_helper'

describe Trueman do
  it 'has a version number' do
    expect(Trueman::VERSION).not_to be nil
  end

  describe 'determine a falsy value' do
    it 'returns true with the false object' do
      expect(Trueman.falsy?(false)).to eq true
    end

    it 'returns true with the integer 0' do
      expect(Trueman.falsy?(0)).to eq true
    end

    it 'returns true with the string "0"' do
      expect(Trueman.falsy?("0")).to eq true
    end

    it 'returns true with the string "false"' do
      expect(Trueman.falsy?("false")).to eq true
    end

    it 'returns true with the string "FALSE"' do
        expect(Trueman.falsy?("FALSE")).to eq true
    end

    it 'returns true with the string "f"' do
      expect(Trueman.falsy?("f")).to eq true
    end

    it 'returns true with the string "F"' do
      expect(Trueman.falsy?("F")).to eq true
    end
  end

  describe 'determine a truthy value' do
    it 'returns true with the true object' do
      expect(Trueman.truthy?(true)).to eq true
    end

    it 'returns true with the integer 1' do
      expect(Trueman.truthy?(1)).to eq true
    end

    it 'returns true with the string "1"' do
      expect(Trueman.truthy?("1")).to eq true
    end

    it 'returns true with the string "true"' do
      expect(Trueman.truthy?("true")).to eq true
    end

    it 'returns true with the string "TRUE"' do
      expect(Trueman.truthy?("TRUE")).to eq true
    end

    it 'returns true with the string "t"' do
      expect(Trueman.truthy?("t")).to eq true
    end

    it 'returns true with the string "T"' do
      expect(Trueman.truthy?("T")).to eq true
    end

    it 'returns false with a false value' do
      expect(Trueman.truthy?(false)).to eq false
    end
  end
end
