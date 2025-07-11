require 'rails_helper'

RSpec.describe "/www.swapi.tech/api", type: :request do
  context "with valid parameters" do
    it "returns a people" do
      uri = URI("https://www.swapi.tech/api/people/1/")
      req = Net::HTTP::Get.new(uri)
      req["Accept"] = "application/json"

      res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
        http.request(req)
      end

      response_body = JSON.parse(res.body)

      expect(response_body["message"]).to eq("ok")
      expect(response_body["result"]["properties"]["name"]).to eq("Luke Skywalker")
      expect(response_body["result"]["properties"]["height"]).to eq("172")
      expect(response_body["result"]["properties"]["mass"]).to eq("77")
      expect(response_body["result"]["properties"]["hair_color"]).to eq("blond")
    end
  end
end
