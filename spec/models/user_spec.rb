require 'rails_helper'

RSpec.describe User, type: :model do
  before(:context) { puts "before context runs" }
  before(:example) { puts "before example runs" }
  after(:example) { puts "after example runs" }
  after(:context) { puts "after context runs" }

  let(:user) { create(:user) }

  context '#full_name' do
    it 'returns the full name of the user' do
      # # Setup
      # user = User.new

      # # Exercise
      # user.first_name = 'John'
      # user.last_name = 'Doe'

      # Setup + Exercise
      first_name = Faker::Name.first_name
      last_name = Faker::Name.last_name

      user = User.new(first_name:, last_name:)

      # Verify
      expect(user.full_name).to match(/^#{first_name} #{last_name}$/)

      # Teardown - implicit
    end

    it 'checks if full_name attribute exists' do
      expect(user).to respond_to(:full_name)
      expect(user).to have_attributes(full_name: user.full_name)
      expect(user[:full_name]).to eq(user.full_name)
    end

    it 'checks if full_name attribute exists with the exact names Jackson Pires' do
      user = build(:user, first_name: 'Jackson', last_name: 'Pires')

      expect(user).to respond_to(:full_name)
      expect(user).to have_attributes(full_name: user.full_name)
      expect(user[:full_name]).to eq(user.full_name)
    end
  end
end
