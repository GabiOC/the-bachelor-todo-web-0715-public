require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here

  contestants_array = data[season]
  winner_hash = contestants_array.find do |person_hash|
    person_hash["status"] == "Winner"
  end

  winner_hash["name"].split[0]

  # winner = nil
  # data.each do |season_num, contestants_array|
  # 	if season_num == season
  # 	  contestants_array.each do |contestant|
		# 	  if contestant["status"] == "Winner"
  # 				winner = contestant["name"].split[0]
  # 			end
  # 		end
  # 	end
  # end
  # winner
end

def get_contestant_name(data, occupation)
  # code here
  name = nil
  data.each do |season_num, contestants_array|
  	contestants_array.each do |contestant|
  		if contestant["occupation"] == occupation
  			name = contestant["name"]
  		end
  	end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  # contestants = []
  # data.each do |season_num, contestants_array|
  # 	contestants_array.each do |contestant|
  # 		if contestant["hometown"] == hometown
  # 			contestants << contestant["name"]
  # 		end
  # 	end
  # end
  # contestants.length

  all_season_arrays = data.values
  nested_people = all_season_arrays.map do |season_array|
    season_array.select do |contestant_hash|
      contestant_hash["hometown"] == hometown
    end
  end
  nested_people.flatten.length
end

def get_occupation(data, hometown)
  # code here
  occupation = []
  data.each do |season_num, contestants_array|
  	contestants_array.each do |contestant|
  		if contestant["hometown"] == hometown
  			occupation << contestant["occupation"]
  		end
  	end
  end
  occupation[0]
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  data.each do |season_num, contestants_array|
  	if season_num == season
  		contestants_array.each do |contestant|
			ages << contestant["age"].to_i.to_f
  		end
  	end
  end
  average = (ages.reduce(:+) / ages.length).round
  average
end
