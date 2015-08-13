require 'bundler'
Bundler.require

get '/' do
  'Hello world!'
end

put '/upload' do
  puts params[:file]

  filename     = params[:file][0]
  content_type = params[:file][1]
  file         = params[:file][2]

  file_path = "/tmp/#{filename}"
  File.open(file_path, 'wb') do |f|
    f.write(file.read)
  end

  send_file(
    File.open(file_path, 'r'),
    type: content_type,
    disposition: 'inline'
  )

end
