task :upload_typhoeus do
  require 'typhoeus'

  Typhoeus::Config.verbose = true

  url = "http://localhost:4567/upload"
  headers = {"content-type" => "multipart/form-data"}
  file = File.open((File.dirname(__FILE__) + '/images/pluto.jpg'), 'r')
  body = {file: file}

  response = Typhoeus.put(url, headers: headers, body: body)
  puts "Response code: #{response.code}"
end

task :upload_ethon do
  require 'ethon'

  url = "http://localhost:4567/upload"
  headers = {"content-type" => "multipart/form-data"}
  file = File.open((File.dirname(__FILE__) + '/images/pluto.jpg'), 'r')
  body = {file: file}

  easy = Ethon::Easy.new
  easy.http_request(url, :put, body: body, headers: headers)
  easy.perform
end
