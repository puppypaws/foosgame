class TeamsController < ApplicationController

    def index
        @teams = Team.all
      end

    def new
    end

    def create
        @team = Team.new(team_params)

        @team.save
        redirect_to @team
    end

    def show
        @team = Team.find(params[:id])
    end

private

    def team_params
        params.require(:team).permit(:name)
    end

end