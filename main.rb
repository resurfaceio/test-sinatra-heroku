require 'sinatra'
logger = nil

get '/' do
  response_body = 'Hello Sinatra!'
  logger.log request, nil, response, response_body unless logger.nil?
  response_body
end

post '/' do
  request_body = request.body.read
  response_body = 'Posted to Sinatra: ' + request_body
  logger.log request, request_body, response, response_body unless logger.nil?
  response_body
end
