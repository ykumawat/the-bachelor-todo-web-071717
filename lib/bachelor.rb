def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |season_num, people|
    if season_num == season
      people.each do |details|
        details.each do |key, value|
          if details["status"] == "Winner"
            return details["name"].split(' ')[0]
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season_num, people|
    people.each do |details|
      if details["occupation"] == occupation
        return details["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season_num, people|
    people.each do |details|
      if details["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_num, people|
    people.each do |details|
      if details["hometown"] == hometown
        return details["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  av_age = []
  data.each do |season_num, people|
    if season_num == season
      people.each do |details|
        av_age << details["age"].to_f
      end
    end
  end
  av_age = (av_age.reduce(:+) / av_age.size.to_f).round
  return av_age
end
