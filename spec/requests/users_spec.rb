require 'rails_helper'

RSpec.describe "/users", type: :request do
  context "with valid parameters" do
    it "creates a new User" do
      params = {
        "user" => {
          "first_name" => "ABC",
          "last_name" => "DEF",
          "email" => "abc@def.com"
          }
        }

      # post("/users", params:)

      # expect(response).to have_http_status(:found)
      # expect(User.last.first_name).to eq("ABC")

      expect { post(users_url, params:, as: :turbo_stream) }.to change(User, :count).by(1)
    end
  end
end
