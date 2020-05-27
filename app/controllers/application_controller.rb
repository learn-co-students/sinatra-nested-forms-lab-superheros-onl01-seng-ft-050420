require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :new
    end 

    post '/teams' do
        # binding.pry
        @team = Team.create(name: params[:team][:name], motto: params[:team][:motto])

        params[:team][:hero].each do |details|
            hero = SuperHero.new(details)
            @team.super_heros << hero
        end

        erb :team
    end 


end
