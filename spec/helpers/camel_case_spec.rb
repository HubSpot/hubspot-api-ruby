require 'spec_helper'

describe "Hubspot::Helpers::CamelCase" do
  subject( :camel_case) { Hubspot::Helpers::CamelCase.new }

    it "Method 'format' should convert all snake_case strings to CamelCase strings" do
      result = camel_case.format("some_test_text_in_snake_case")
      expect(result).to eql "SomeTestTextInSnakeCase"
    end

  end