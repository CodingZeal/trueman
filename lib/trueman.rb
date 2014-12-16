require "trueman/version"

module Trueman
  TRUE_VALUES  = [true, 1, '1', 't', 'T', 'true', 'TRUE']
  FALSE_VALUES = [false, 0, '0', 'f', 'F', 'false', 'FALSE']

  def self.truthy?(value)
    true_values.include? value
  end

  def self.falsy?(value)
    false_values.include? value
  end

  def self.true_values
    @@true_values ||= TRUE_VALUES
  end

  def self.false_values
    @@false_values ||= FALSE_VALUES
  end
end
