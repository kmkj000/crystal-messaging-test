require "http/client"

# TODO: Write documentation for `Line::Push::Crystal`
module Line::Push::Crystal
  VERSION = "0.1.0"

  CHANNEL_TOKEN = ENV["CHANNEL_TOKEN"] ||= nil
  if CHANNEL_TOKEN == nil
    puts "CHANNEL_TOKEN is nil\nexport CHANNEL_TOKEN=****"
  else
    header = HTTP::Headers.new()
    header.add("Content-Type", "application/json")
    header.add("Authorization", CHANNEL_TOKEN.to_s)
    puts header

  end

end
