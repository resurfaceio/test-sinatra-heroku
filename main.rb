require 'sinatra'

get '/' do
  response_body = 'Hello Sinatra!'
  logger.log request, nil, response, response_body
  response_body
end

post '/' do
  request_body = request.body.read
  response_body = 'Posted to Sinatra: ' + request_body
  logger.log request, request_body, response, response_body
  response_body
end
