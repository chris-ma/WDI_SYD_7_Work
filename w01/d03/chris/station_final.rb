subways = {
    "n" => {
        stops: ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
    },
        "l" => {
        stops: ["1st", "3rd", "Union Square", "6th", "8th"],
    },
    "six" => {
        stops: ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Aston"],
    },

}

all_subways = subways["n"][:stops] << subways["six"][:stops] << subways["l"][:stops]
full_subways = all_subways.flatten.uniq
alls = ["n", "six", "l"]

puts "What station would you like to get on at?"
puts "Possible options include:"
p full_subways
depart_station = gets.strip
puts "What line would you like to get on at?"
puts "Possible options include:"
p alls
depart_line = gets.strip

"What station would you like to get off at?"
puts "Possible options include:"
p full_subways
arrive_station = gets.strip
puts "What line would you like to get off at?"
puts "Possible options include:"
p alls
arrive_line = gets.strip


def number_stops(depart_station,depart_line,arrive_station,arrive_line,subways)
    start_index = subways[depart_line][:stops].index(depart_station)
    if depart_line == arrive_line
        end_index = subways[arrive_line][:stops].index(arrive_station)
        numstop = end_index - start_index
    else
        to_union = subways[depart_line][:stops].index("Union Square") - subways[depart_line][:stops].index(depart_station)
        from_union = subways[arrive_line][:stops].index(arrive_station) - subways[arrive_line][:stops].index("Union Square")
        numstop = to_union.abs + from_union.abs
    end
end

total_stops = number_stops(depart_station,depart_line,arrive_station,arrive_line,subways)

puts "There are #{total_stops} stops from #{depart_station} on the #{depart_line} to #{arrive_station} on the #{arrive_line}."