require 'rails_helper'

RSpec.describe Users::Inspect do
  it "intercepta com webmock" do
    stub_request(:get, "https://www.swapi.tech/api/people/1")
      .to_return(status: 200, body: { name: "PADAWAN" }.to_json)

    response = Api::StarWars.new.people(1)
    response_body = JSON.parse(response.body)

    expect(response.code).to eq("200")
    expect(response_body["name"]).to eq("PADAWAN")

    expect(WebMock).to have_requested(:get, "https://www.swapi.tech/api/people/1")
  end

  it "acessa API real", :vcr do
    swapi_response = Api::StarWars.new.people(1)

    response_body = JSON.parse(swapi_response.body)

    expect(response_body["message"]).to eq("ok")
    expect(response_body["result"]["properties"]["name"]).to eq("Luke Skywalker")
  end
end
