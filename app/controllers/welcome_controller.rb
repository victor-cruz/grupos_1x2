class WelcomeController < ApplicationController

  before_filter :load_new_bet_data, :only => [:reload_matches]
  before_filter :load_last_round, :only => [:index]

  def reload_matches
    render 'index.html.erb'
  end

  protected

  def load_new_bet_data
    @bet_data = BetBuilder.new(true)
  end

  def load_last_round
    @round = Round.last_round
  end


end