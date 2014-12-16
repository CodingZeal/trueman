require 'spec_helper'

describe Trueman do
  it 'has a version number' do
    expect(Trueman::VERSION).not_to be nil
  end

  describe 'updating truthy values' do
    before { Trueman.true_values << 'foo' }

    it "allows a new value" do
      expect(Trueman.truthy?('foo')).to eq true
    end
  end

  describe 'updating falsy values' do
    before { Trueman.false_values << 'bar' }

    it "allows a new value" do
      expect(Trueman.truthy?('bar')).to eq false
    end
  end

  describe 'determine a falsy value' do
    [0, false, "false", "FALSE", "0", "f", "F"].each do |value|
      it "returns true for the value #{value}" do
        expect(Trueman.falsy?(value)).to eq true
      end
    end
  end

  describe 'determine a truthy value' do
    [1, true, "true", "TRUE", "1", "t", "T"].each do |value|
      it "returns true for the value #{value}" do
        expect(Trueman.truthy?(value)).to eq true
      end
    end
  end
end
