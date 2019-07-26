require 'active_model'

module ValidatesPhoneFormatOf
  Regexp = /\A\+?[1-9]\d{1,14}\z/
end

module ActiveModel
  module Validations
    class PhoneFormatValidator < EachValidator
      def validate_each(record, attribute, value)
        record.errors.add(attribute, :invalid_phone, options.merge({:value => value})) if value.to_s !~ ValidatesPhoneFormatOf::Regexp
      end
    end

    module HelperMethods
      def validates_phone_format_of(*attr_names)
        validates_with PhoneFormatValidator, _merge_attributes(attr_names)
      end
    end
  end
end
