require "trueman/version"

module Trueman
  TRUE_VALUES  = [true,  1, '1', 't', 'T', 'true',  'TRUE']
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

  def self.patch_object!
    Object.class_eval do
      def truthy?
        Trueman.truthy? self
      end unless self.class.respond_to?(:truthy?)

      def falsy?
        Trueman.falsy? self
      end unless self.class.respond_to?(:falsy?)
    end
  end
end
