# validates_phone_format_of

[![CI Status](http://img.shields.io/travis/jonathantribouharet/validates_phone_format_of.svg)](https://travis-ci.org/jonathantribouharet/validates_phone_format_of)
[![Gem Version](https://badge.fury.io/rb/validates_phone_format_of.svg)](http://badge.fury.io/rb/validates_phone_format_of)

Validate phone numbers against E.164 format.

## Installation

validates_phone_format_of is distributed as a gem, which is how it should be used in your app.

Include the gem in your Gemfile:

    gem 'validates_phone_format_of', '~> 2.0'

## Usage

In your model

```ruby
class User < ActiveRecord::Base

	validates :phone, phone_format: true
	# Or
	validates_phone_format_of :phone

	# Same thing as
	validates_format_of :phone, with: ValidatesPhoneFormatOf::Regexp
	# Or
	validates_format_of :phone, with: /\A\+\d{1,15}\z/

end
```

## Others libraries useful

- [intl-tel-input](https://github.com/jackocnr/intl-tel-input) Javascript library forcing users to set the region
- [global_phone](https://github.com/sstephenson/global_phone)

## Author

- [Jonathan VUKOVICH-TRIBOUHARET](https://github.com/jonathantribouharet) ([@johnvuko](https://twitter.com/johnvuko))

## License

This project is released under the MIT license. See the LICENSE file for more info.
