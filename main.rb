require 'sinatra'
require 'resurfaceio/all'

logger = HttpLogger.new(rules: 'include debug')

get '/' do
  response_body = 'Hello Sinatra!'
  HttpMessage.send(logger, request, response, response_body)
  response_body
end

post '/' do
  request_body = request.body.read
  response_body = 'Posted to Sinatra: ' + request_body
  HttpMessage.send(logger, request, response, response_body, request_body)
  response_body
end
