require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
    
        erb :super_hero
    end

    post '/teams' do

        @teams = Team.new(params[:team])
        
        params[:team][:hero].each do  |hero_deets|
            Hero.new(hero_deets)
        end
        @heroes = Hero.all
    
        erb :team
    end


end


# {"team"=>
#     {"name"=>"Shiba",
#      "motto"=>"Shiba's Divas",
#      "hero"=>
#       [{"name"=>"Kevin", "power"=>"Computers", "bio"=>"has a child"},
#        {"name"=>"Kelsey", "power"=>"Thinking", "bio"=>"drinks coffee"},
#        {"name"=>"Ryland", "power"=>"also computers", "bio"=>"wonders"}]}}