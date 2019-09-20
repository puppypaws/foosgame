class PlayersController < ApplicationController

    def index
        @players = Player.all
      end

    def new
        @teams = Team.all 
    end

    def create
        @player = Player.new(player_params)

        @player.save
        redirect_to @player
    end

    def show
        @player = Player.find(params[:id])

        if params[:team_id].to_i != @player.team.id
            puts "Team does not exist"
        end
    end

private

    def player_params
        params.require(:player).permit(:firstname, :lastname, :team_id)
    end
    
end        