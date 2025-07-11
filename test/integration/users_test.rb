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
  test "/users.json" do
    params = {
    "user" => {
      "first_name" => "ABC",
      "last_name" => "DEF",
      "email" => "abc@def.com"
      }
    }

    post(users_url, params:, as: :json)

    response_body = JSON.parse(response.body)

    assert_equal 201, response.status
    assert_equal "ABC", response_body["first_name"]
    assert_equal "DEF", response_body["last_name"]
    assert_equal "abc@def.com", response_body["email"]
  end
end
