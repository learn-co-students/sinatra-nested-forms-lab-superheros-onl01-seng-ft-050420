require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :form
    end

    post '/teams' do
        # binding.pry
        @team = Team.new(params[:team])
  
        params[:team][:heros].each do |details|
          SuperHero.new(details)
        end

        @heros = SuperHero.all
  
        erb :team
    end

end
