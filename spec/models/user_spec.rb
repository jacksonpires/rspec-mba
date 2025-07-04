require 'rails_helper'

RSpec.describe User, type: :model do
  context '#full_name' do
    it 'returns the full name of the user' do
      user = User.new(first_name: 'John', last_name: 'Doe')

      expect(user).to be_a(User)
      expect(user.full_name).to be_a(String)
      expect(user.full_name).to_not be_empty
      expect(user.full_name).to match(/John Doe/)
    end
  end
end
