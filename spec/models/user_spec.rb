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
      # Teardown - implicit
    end

    it 'checks if full_name attribute exists with the exact names Jackson Pires' do
      user = build(:user, first_name: 'Jackson', last_name: 'Pires')

      expect(user).to respond_to(:full_name)
      expect(user).to have_attributes(full_name: user.full_name)
      expect(user[:full_name]).to eq(user.full_name)
    end

    it "just a double example" do
      my_user = double("MyUser", name: "Jackson", admin?: true)

      expect(my_user.name).to eq("Jackson")
      expect(my_user.admin?).to be(true)
    end

    it "just a stub example using a model" do
      user = User.new(first_name: "Jackson", last_name: "Pires")
      allow(user).to receive(:full_name).and_return("O QUE EU QUISER") # stub

      expect(user.first_name).to eq("Jackson")
      expect(user.full_name).to eq("O QUE EU QUISER")
    end

    it "just a stub example using a double" do
      user = double("User")
      allow(user).to receive(:full_name).and_return("O QUE EU QUISER") # stub

      expect(user.full_name).to eq("O QUE EU QUISER")
    end

    it "just a mock example" do
      user = double("User")
      expect(user).to receive(:notify).with("Hello!")

      user.notify("Hello!")
    end

    it "just a instance double example" do
      user = instance_double("User")
      allow(user).to receive(:full_name).and_return("O QUE EU QUISER") # stub

      expect(user.full_name).to eq("O QUE EU QUISER")
      expect(user).to have_received(:full_name).once
    end
  end
end
