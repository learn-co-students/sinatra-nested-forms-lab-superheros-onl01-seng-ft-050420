require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :team
    end

    post '/teams' do
        @team = SuperheroTeam.new(params[:team])
        params[:team][:heros].each {|hero_details| Superheros.new(hero_details)}
        @heros = Superheros.all
        erb :super_hero
    end


end
