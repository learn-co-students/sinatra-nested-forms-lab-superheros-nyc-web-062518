require 'sinatra/base'
require 'pry'

class App < Sinatra::Base
    #wtf is this syntax
    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'super_hero'
    end

    post '/teams' do
      @team = Team.new(params[:team])
      params[:team][:members].each do |member|
        Member.new(member)
      end

      @team_members = Member.all
      erb :'team'
    end
end
