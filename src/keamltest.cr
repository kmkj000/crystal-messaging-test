require "kemal"
require "logger"



log = Logger.new(STDOUT)
log.level = Logger::INFO



# Matches GETo"http://host:port/"
post "/" do |context|
  headers = context.request.headers
  log.info(headers)
  "Hello World!"
end

# Creates a WebSocket handler.
# Matches "wk://host:port/socket"
ws "/socket" do |socket|
  socket.send "Hello from Kemal!"
end

Kemal.run

