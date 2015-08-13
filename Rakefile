task :upload do
  require 'typhoeus'

  Typhoeus::Config.verbose = true

  url = "http://localhost:4567/upload"
  headers = {"content-type" => "multipart/form-data"}
  body = {
    file: File.open((File.dirname(__FILE__) + '/images/pluto.jpg'), 'r')
  }
  response = Typhoeus.put(url, headers: headers, body: body)
  puts "Response code: #{response.code}"
end
