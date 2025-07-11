require "test_helper"

class UsersTest < ActionDispatch::IntegrationTest
  test "/users" do
    params = {
    "user" => {
      "first_name" => "ABC",
      "last_name" => "DEF",
      "email" => "abc@def.com"
      }
    }

    assert_difference "User.count", 1 do
      post(users_url, params:, as: :turbo_stream)
    end
  end
end
