require "validates_phone_format_of"

describe ValidatesPhoneFormatOf do

  before(:each) do
    @user_class = Class.new do

      include ActiveModel::Validations

      attr_reader :phone

      def initialize(phone)
        @phone = phone.freeze
      end

      def self.model_name
        ActiveModel::Name.new(self, nil, "user")
      end
      
      validates_phone_format_of :phone
    end
  end

  ['+12223335555', '+33123456789', '+13125551212'].each do |phone|
    it "#{phone} is valid" do
      user = @user_class.new(phone)
      expect(user.valid?).to be_truthy
    end
  end

  ['test', '0000', '(312) 555-1212'].each do |phone|
    it "#{phone} is not valid" do
      user = @user_class.new(phone)
      expect(user.valid?).to_not be_truthy
    end
  end

end

