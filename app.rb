require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        @words
    end
end