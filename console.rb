require('pry-byebug')
require('pg')
require_relative('models/league.rb')
require_relative('models/match.rb')
require_relative('models/team.rb')

team1 = Team.new("Average_Joes").save
team2 = Team.new("Globo_Gym_Purple_Cobras").save
team3 = Team.new("Skillz_That_Killz").save

match1 = Match.new({'home_team_id' => team1.id, 'away_team_id' => team2.id})
match2 = Match.new({'home_team_id' => team1.id, 'away_team_id' => team3.id})
match3 = Match.new({'home_team_id' => team2.id, 'away_team_id' => team3.id})

binding.pry
nil
 