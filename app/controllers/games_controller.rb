class GamesController < ApplicationController

  def play_rock

    @computer_move = ["scissors","rock","paper"].sample
    if @computer_move == "rock"
      @outcome = "tie"
    elsif @computer_move == "scissors"
      @outcome = "lost"
    else
      @outcome = "win"
    end

    # i have to tell rails what HTML play to display. And the convention here is to name that page the name of your controller and then dio into the action.
    render("games/play_rock.html.erb") #embeded ruby
    #it looks, under app/views/games/


  end
end
