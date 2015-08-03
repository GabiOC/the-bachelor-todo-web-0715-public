def get_first_name_of_season_winner(data, season)
  # code here
  winner = nil
  data.each do |season_num, biog|
  	if season_num == season
  		biog.each do |info|
			if info["status"] == "Winner"
  				winner = info["name"].split[0]
  			end
  		end
  	end
  end
  winner
end

def get_contestant_name(data, occupation)
  # code here
  name = nil
  data.each do |season_num, biog|
  	biog.each do |info|
  		if info["occupation"] == occupation
  			name = info["name"]
  		end
  	end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  contestants = []
  data.each do |season_num, biog|
  	biog.each do |info|
  		if info["hometown"] == hometown
  			contestants << info["name"]
  		end
  	end
  end
  contestants.length
end

def get_occupation(data, hometown)
  # code here
  occupation = []
  data.each do |season_num, biog|
  	biog.each do |info|
  		if info["hometown"] == hometown
  			occupation << info["occupation"]
  		end
  	end
  end
  occupation[0]
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  data.each do |season_num, biog|
  	if season_num == season
  		biog.each do |info|
			ages << info["age"].to_i.to_f
  		end
  	end
  end
  average = (ages.reduce(:+) / ages.length).round
  average
end
