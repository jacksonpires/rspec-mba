require 'rails_helper'

RSpec.describe User, type: :model do
  context '#full_name' do
    it 'returns the full name of the user' do
      # # Setup
      # user = User.new

      # # Exercise
      # user.first_name = 'John'
      # user.last_name = 'Doe'

      # Setup + Exercise
      user = User.new(first_name: 'John', last_name: 'Doe')

      # Verify
      expect(user.full_name).to match(/John Doe/)

      # Teardown - implicit
    end

    it 'checks if full_name attribute exists' do
      user = User.new(first_name: 'John', last_name: 'Doe')

      expect(user).to respond_to(:full_name)
      expect(user).to have_attributes(full_name: 'John Doe')
      expect(user[:full_name]).to eq('John Doe')
    end
  end
end
