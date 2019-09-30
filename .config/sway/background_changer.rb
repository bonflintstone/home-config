#! /bin/env ruby

require 'faraday'
require 'json'

API_KEY = 'c94d7f9eda5a333dee0bd3face4ba5aa'.freeze
BASE_API = 'https://wall.alphacoders.com/api2.0/get.php'.freeze

def find_image
  response = Faraday.get("#{BASE_API}?auth=#{API_KEY}&method=category&id=10")

  JSON.parse(response.body)['wallpapers'].first
end

def download_image(url)
  Faraday.get(url).body
end

def download_new_image
  image = find_image
  file_name = "/home/bonflintstone/Wallpapers/wallpaper_#{image['id']}.#{image['file_type']}"

  File.write(
    file_name,
    download_image(image['url_image'])
  )

  file_name
rescue StandardError
  sleep 600
end

loop do
  name = download_new_image

  next unless name

  `sway output "*" bg #{name} fill`

  sleep 600
end
