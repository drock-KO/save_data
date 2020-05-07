require 'net/http'
require 'uri'
require 'rexml/document'

api_key = ENV["HOTPEPPER_API_KEY"]

url = URI.parse(URI.escape("http://webservice.recruit.co.jp/hotpepper/gourmet/v1/?key=#{api_key}&address=名古屋&free_drink=1&count=5"))
res = Net::HTTP.start(url.host, url.port){|http|
    http.get(url.path + "?" + url.query);
}

doc = REXML::Document.new(res.body)
doc.elements.each('results/shop/') {|i|puts i.elements['name'].text}