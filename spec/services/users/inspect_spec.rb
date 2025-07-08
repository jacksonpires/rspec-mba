require 'rails_helper'

RSpec.describe Users::Inspect do
  describe '.call' do
    it 'returns a formatted string with user details' do
      user = User.new(first_name: 'John', last_name: 'Doe', email: 'john@doe.com')

      result = Users::Inspect.call(user)

      expect(result).to match(/User Full Name: John Doe/)
      expect(result).to match(/Full Name Length: 8/)
      expect(result).to match(/Email Length: 12/)
    end
  end
end
