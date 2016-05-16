require('minitest/autorun')
require_relative('../models/league')
require_relative('../models/match')
require_relative('../models/team')

class TestLeague < Minitest::Test

  def setup
    match1 = Match.new({'home_team' => 'Average_Joes', 'away_team' = ''})
    

  end

  def test_match_winner
    
  end

  def test_total_wins

  end



end