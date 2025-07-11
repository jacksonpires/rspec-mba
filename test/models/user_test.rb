require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @first_name = Faker::Name.first_name
    @last_name = Faker::Name.last_name

    @user = User.new(first_name: @first_name, last_name: @last_name)
  end

  test "returns the full name of the user com @user" do
    assert_equal "#{@first_name} #{@last_name}", @user.full_name

    assert_equal true, @user.respond_to?(:full_name)
    assert @user.respond_to?(:full_name)
  end

  test "returns the full name of the user com @XYZ" do
    assert_equal "#{@first_name} #{@last_name}", @user.full_name

    assert_equal true, @user.respond_to?(:full_name)
    assert @user.respond_to?(:full_name)
  end

  test "returns the full name of the user" do
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name

    user = User.new(first_name:, last_name:)

    assert_equal "#{first_name} #{last_name}", user.full_name

    assert_equal true, user.respond_to?(:full_name)
    assert user.respond_to?(:full_name)
  end
end
