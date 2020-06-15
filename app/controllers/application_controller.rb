require 'sinatra/base'

class App < Sinatra::Base
    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      puts params
      @team = Team.new(params[:team])
      params[:team][:heroes].each do |params|
        Hero.new(params)
      end
      @heroes = Hero.all
      erb :team
    end
end
