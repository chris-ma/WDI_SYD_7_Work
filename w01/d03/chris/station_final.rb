

subway = { 
  :n => ["34th", "N28th", "N23rd", "Union Square", "N8th"],
  :l => ["8th", "6th", "Union Square", "3rd", "1st"],
  :six => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"],
}


puts "What line do you want to depart? (n), (l), (six):"
depart_line = gets.chomp

case depart_line
  when "n"
  puts " Pick a station to depart: 34th, N28th, N23rd, Union Square, N8th "
  depart_station = gets.chomp
  #union_square = 3

  when "l"
  puts "Pick a station to depart: 8th, 6th, Union Square, 3rd, 1st "
  depart_station = gets.chomp 
  #union_square = 2

when "six"
  puts "Pick a station to depart: Grand Central, 33rd, 28th, 23rd, Union Square, Astor Place "
  depart_station = gets.chomp 
  #union_square = 4

end 

puts "What line do you want to arrive? (n), (l), (six):"
arrive_line = gets.chomp

case arrive_line
when "n"
  puts " Pick a station to arrive: 34th, N28th, N23rd, Union Square, N8th "
  depart_station = gets.chomp
when "l"
  puts "Pick a station to arrive: 8th, 6th, Union Square, 3rd, 1st "
  depart_station = gets.chomp 
when "six"
  puts "Pick a station to arrive: Grand Central, 33rd, 28th, 23rd, Union Square, Astor Place "
  depart_station = gets.chomp 
end


    def journey_split(depart_station = 0, depart_line = 0, arrive_station = 0, arrive_line = 0) 
      to_union =  subway[depart_station].index(depart_line)  ##needs to pull the right union square based on line selected
      from_union = subway[arrive_station].index(arrive_line)
    #going to union
      union = to_union.index("Union Square")
      depart = to_union.index(depart_station)
      journey1 = (union.to_i - depart.to_i).abs
    #union to destination
      union2 = from_union.index("Union Square")
      arrive = from_union.index(end_stop)
      journey2 = (union2.to_i - arrive.to_i).abs

      number = journey1 + journey2
    end

    def journey_same(depart_station, depart_line, arrive_station, arrive_line) 
      newlist = []
      newlist = subway.fetch(depart_line)
      pos1 = newlist.index(depart_station)
      pos2 = newlist.index(arrive_station)
      return (pos1.to_i - pos2.to_i).abs

  
    end

    def pick_track(depart_station, depart_line, arrive_station, arrive_line) 
      if depart_line == arrive_line
        journey_same(depart_station, depart_line, arrive_station, arrive_line) 
        else
        journey_split(depart_station, depart_line, arrive_station, arrive_line) 
        end
      end
    



puts "Your trip will be #{number} stops"