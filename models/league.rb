require_relative('../db/sql_runner')

class League

  def initialize(options)
    @id = options['id'].to_i
    @table = table
  end

  def total_wins
    total = 0
    for team in @teams
      total += win.quanity
    end
    return total
  end

end