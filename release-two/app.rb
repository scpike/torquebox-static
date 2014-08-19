require 'sinatra/base'
require 'torquebox'
# require 'torquebox-messaging' # if you plan on using JMS messaging

class App < Sinatra::Base

  get '/' do
    'Version 2 Released!'
  end
end
