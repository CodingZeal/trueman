# Trueman

![Be true](https://media.giphy.com/media/LzqWdQhY4NmxO/giphy.gif)

[![Build Status](https://travis-ci.org/CodingZeal/trueman.svg)](https://travis-ci.org/CodingZeal/trueman) [![Code Climate](https://codeclimate.com/github/CodingZeal/trueman/badges/gpa.svg)](https://codeclimate.com/github/CodingZeal/trueman) [![Gem Version](https://badge.fury.io/rb/trueman.svg)](http://badge.fury.io/rb/trueman)

*Introducing: The World's Smallest RubyGem... (almost)*

Assert if a value matches one of the common forms of true or false with
this little gem.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'trueman'
```

And then execute:

    $ bundle

## Usage

Trueman is designed to assert if a value is true.  It does not test for
`presence` of a value, just that it matches one of the following items:

```ruby
Trueman.truthy? 1      # => true
Trueman.truthy? "1"    # => true
Trueman.truthy? "t"    # => true
Trueman.truthy? "T"    # => true
Trueman.truthy? true   # => true
Trueman.truthy? "true" # => true
Trueman.truthy? "TRUE" # => true

Trueman.falsy? 0       # => true
Trueman.falsy? "0"     # => true
Trueman.falsy? "f"     # => true
Trueman.falsy? "F"     # => true
Trueman.falsy? false   # => true
Trueman.falsy? "false" # => true
Trueman.falsy? "FALSE" # => true
```

If this list is not enough, you can easily add to the list:
```ruby
Trueman.true_values  << "foo"
Trueman.false_values << "bar"

Trueman.truthy? "foo" # => true
Trueman.falsy?  "bar" # => true
```

Both `true_values` and `false_values` exposes a class level array.  That
means you can remove values, expose values or do anything else you can
do on an enumerable array.

```ruby
Trueman.true_values # => [1, "1", 't', 'T', true, 'true', 'TRUE']
```

Although it's discouraged, you can patch `Object`:
```ruby
Trueman.patch_object!

"true".truthy? # => true
 1.truthy?     # => true
 0.falsy?      # => true
 
 # ...
```

## Credits

Authored by Sean Culver (@seanculver) and Adam Cuppy (@acuppy) of Coding ZEAL (http://codingzeal.com)

![Coding ZEAL](https://googledrive.com/host/0B3TWa6M1MsWeWmxRZWhscllwTzA/ZEAL-logo-final-150.png)

## Contributing

1. Fork it ( https://github.com/[my-github-username]/trueman/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
