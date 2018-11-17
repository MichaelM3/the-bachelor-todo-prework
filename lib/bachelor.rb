def get_first_name_of_season_winner(data, season)
  data[season].each do |lady|
    if lady["status"] == "Winner"
      return lady["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, info|
    info.each do |value|
      if value["occupation"] == occupation
        return value["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, people|
    people.each do |info|
      if info["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, people|
    people.each do |info|
      if info["hometown"] == hometown
        return info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age = 0
  i = 0
  data.each do |seasons, people|
    if seasons == season
      people.each do |info|
        age += info["age"].to_i
      end
      i = people.length
    end
  end
  return (age / i.to_f).round
end
