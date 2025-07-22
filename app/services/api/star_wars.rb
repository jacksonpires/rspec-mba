require "net/http"

module Api
  class StarWars
    def people(id)
      uri = URI("https://www.swapi.tech/api/people/#{id}")
      req = Net::HTTP::Get.new(uri)
      req["Accept"] = "application/json"

      Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
        http.request(req)
      end
    end
  end
end
