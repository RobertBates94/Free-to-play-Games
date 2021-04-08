class API

def self.get_data
response = RestClient.get

url = URI("https://brianiswu-nflarrest-v1.p.rapidapi.com/crime/arrests/%7Bcrimeid%7D")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["x-rapidapi-key"] = '867d3746aamshc5cd5427e755571p165803jsnc13b1432949c'
request["x-rapidapi-host"] = 'brianiswu-nflarrest-v1.p.rapidapi.com'

response = http.request(request)
puts response.read_body
binding.pry
end


end