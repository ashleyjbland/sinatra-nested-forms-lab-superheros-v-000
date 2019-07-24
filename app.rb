require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @team = Team.new(params[:team])
    params[:team][:heroes].each do |details|
      Hero.new(details)
      end
    @heroes = Hero.all
    erb :team
  end


end
