system('clear')
# module Shelter
# Define Animal as a class
require_relative = "animal"
require_relative = "client"
require_relative = "shelter"
  
      # class Start
          def display_title
            system('clear')
            puts "Shelter Program"
            puts "==============="
          end

          def database
          @list_animals=[
              Animal.new("Fido",2,"male","dog","bone")
          ]
          @list_clients= [
          Client.new("James",2,35,0,1)
          ]
          end

          def new_animal
          p "please input your anminal details:"
          p "name:"
          name = gets.chomp.to_s
          p "age:"
          age = gets.chomp.to_i
          p "gender"
          gender = gets.chomp.to_s
          p "species"
          species = gets.chomp.to_s
          p "number of toys"
          toys = gets.chomp.to_s

          input_animal = Animal.new(name, age, gender, species, toys)
          @list_animals << input_animal
          end

          def new_client
          p "please input your details:"
          p "name:"
          name = gets.chomp.to_s
          p "children:"
          children = gets.chomp.to_i
          p "age"
          age = gets.chomp.to_i
          p "pets"
          pets = gets.chomp.to_i
          
          input_client = Client.new(name, children, age, pets)
          @list_clients << input_client
          end

          # def read_selection
          #   input = gets.chomp.downcase
          #   exit if input =='q'
          #   input
          # end

          # def list_client(all_client)
          #   all_client.each do |x|
          #     x.all_client
            
          # end



          def menu
            display_title
            puts "a  | list animals" 
            puts "c  | list clients"
            puts "q  | quit"
            puts "ia | input animal details"
            puts "ic | input client details"

            gets.chomp.downcase
           end
          #  user_choice = read_selection

          #  case user_choice

          #    when 'a'
          #       list_animals(list_clients)
          #     when 'c'
          #       list_clients(list_clients)
          #     when 'ia'
          #       new_animal
          #     when "ic"
          #       new_client
          #     end
          #     running = true
          #   end

          # running = true
          # while running 
          #   running = menu
          # end
             
           
          # end

          response = menu
          while response != 'q'
          case menu
            when 'a'
              database
            when 'c'
              list_clients
            when 'ia'
              new_animal
            when "ic"
              new_client
            
              else
              puts "Please type in  'a' for animals, 'c' for clients or 'q' for quit"
              
              end
            
            end
          
      
      # end

# end