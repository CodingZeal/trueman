require "trueman/version"

module Trueman
  TRUE_VALUES  = [true, 1, '1', 't', 'T', 'true', 'TRUE']
  FALSE_VALUES = [false, 0, '0', 'f', 'F', 'false', 'FALSE']

  def self.truthy?(value)
    TRUE_VALUES.include? value
  end

  def self.falsy?(value)
    FALSE_VALUES.include? value
  end
end
