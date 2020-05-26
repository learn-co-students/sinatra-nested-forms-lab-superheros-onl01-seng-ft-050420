require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :new
    end 

    post '/teams' do
        # binding.pry
        @team = Team.new(params[:team])

        params[:team][:hero].each do |details|
            SuperHero.new(details)
        end

        @super_heros = SuperHero.all 

        erb :team
    end 


end
