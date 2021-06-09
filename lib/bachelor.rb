require 'pry'

def get_first_name_of_season_winner(data, season)
  winner = data[season].find {  |contestant| contestant["status"] == "Winner" }
  winner["name"].split[0]
end

def get_contestant_name(data, occupation)
  women = data.values.flatten.find {  |contestant| contestant["occupation"] == occupation }
  women["name"]
end

def count_contestants_by_hometown(data, hometown)
  data.values.flatten.reduce(0) do  |sum, contestant|
    if contestant["hometown"] == hometown
      sum + 1
    else
      sum
    end
  end
end

def get_occupation(data, hometown)
  # how can i use this without a var
  winner = data.values.flatten.find {  |contestant| contestant["hometown"] == hometown }
  winner["occupation"]
end

def get_average_age_for_season(data, season)
  total_ages = data[season].reduce(0) do  |count, contestant| 
    count + contestant["age"].to_f
  end
  (total_ages/data[season].length).round
end


    