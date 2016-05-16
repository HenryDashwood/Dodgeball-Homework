require_relative('../db/sql_runner')

class Team

  attr_reader :name, :id

  def initialize(options)
    @name = options['name']
    @id = options['id'].to_i
  end

  def save
    sql = "INSERT INTO Team (name, id) VALUES ('#{@name}', #{@id});"
    return Team.map_item(sql)
  end

  def update
    sql = "UPDATE Team SET name = '#{@name}' WHERE id = #{@id}"
    return Team.map_item(sql)
  end

  def delete
    sql = "DELETE FROM Team WHERE id = #{@id}"
    return Team.map_item(sql)
  end

  def self.map_items(sql)
    teams = SqlRunner.run(sql)
    result = teams.map {|team| Team.new(team)}
    return result
  end

  def self.map_item(sql)
    result = Team.map_items(sql)
    return result.first
  end

end