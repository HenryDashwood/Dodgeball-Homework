require_relative('../db/sql_runner')

class Match

  attr_reader :home_team_id, :away_team_id

  def initialize(options)
    @id = options['id'].to_i
    @home_team_id = options['home_team_id'].to_i
    @away_team_id = options['away_team_id'].to_i
    @winning_team = options['winning_team_id'].to_i
  end

  def save
    sql = "INSERT INTO Match (home_team_id, away_team_id) VALUES (#{@home_team_id}, #{@away_team_id});"
    return Team.map_item(sql)
  end

  def update
    sql = "UPDATE Match SET home_team_id = #{home_team_id}, away_team_id = #{away_team_id;} WHERE id = #{@id}"
    return Team.map_item(sql)
  end

  def delete
    sql = "DELETE FROM Match WHERE id = #{@id}"
    return Team.map_item(sql)
  end

  def self.map_items(sql)
    matches = SqlRunner.run(sql)
    result = matches.map {|match| Match.new(match)}
    return result
  end

  def self.map_item(sql)
    result = Match.map_items(sql)
    return result.first
  end

  def match_winner(sql)
    @winning_team = winning_team_id.to_i()
    sql = "UPDATE Match SET winning_team_id = #{@winning_team} WHERE id = #{@id} RETURNING *;"
  end



end