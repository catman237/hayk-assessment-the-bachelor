require 'pry'

def get_first_name_of_season_winner(data, season)
  winner = data[season].find {  |contestant| contestant["status"] == "Winner" }
  winner["name"].split[0]
end

def get_contestant_name(data, occupation)
  women = data.values.flatten.find {  |contestant| contestant["occupation"] == occupation}
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
  winner = data.values.flatten.find {  |contestant| contestant["hometown"] == hometown}
  winner["occupation"]
end

def get_average_age_for_season(data, season)
  # code here
end


    