class API

def self.get_data

require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://free-to-play-games-database.p.rapidapi.com/api/filter?tag=3d.mmorpg.fantasy.pvp&platform=pc")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["x-rapidapi-key"] = ENV["key"]
request["x-rapidapi-host"] = 'free-to-play-games-database.p.rapidapi.com'

response = http.request(request)
link = JSON.parse(response.read_body)

    link.each do |games|
        Games.new(games)
    end

end


end