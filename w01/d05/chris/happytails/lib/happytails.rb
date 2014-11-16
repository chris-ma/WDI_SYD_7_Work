
# Define Animal as a class
require_relative = "shelter"
require_relative = "animal"
require_relative = "client"

              # shelter = Shelter.new("1","2")


      # class Start


          # def database
          # @list_animals=[
          #     Animal.new("Fido",2,"male","dog","bone")
          # ]
          # @list_clients= [
          # Client.new("James",2,35,0,1)
          # ]
          # end


           def menu
            system 'clear'  #clears the screen
            puts "Shelter Program"
            puts "==============="
            puts "1  | list animals" 
            puts "2  | list clients"
            puts "3  | input animal details"
            puts "4  | input client details"
            puts "q  | quit"

            gets.chomp.downcase

            end

             

# class Happytrails

           # def animal_database 
           # if @animal_array == []
           #  animal_information = "no animals"
           #      else
           #        animal_information = @animal_array.inject(" ") do |animal_information, animal|
           #          animal_output << "Animal information: Name:#{@name} Age:#{@age} Gender:#{@gender} Species:#{@species}"
           #      end
           #  end
           #  return animal_information

           # end  

          def new_animal

          p "please input your animal details:"
          p "Animal name:"
          name = gets.chomp.to_s
          p "Animal age:"
          age = gets.chomp.to_i
          p "Animal gender"
          gender = gets.chomp.to_s
          p "Animal species"
          species = gets.chomp.to_s
          p "number of toys"
          toys = gets.chomp.to_i

          @animal_array = Animal.new(name, age, gender, species, toys)
          puts "You have added: #{shelter.animal_array}"

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
          
          # @client_array << Client.new(name, children, age, pets)
          # puts "You have added: #{shelter.client_array}"
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

      # end


          response = menu
                while response != 'q'
                case response
                  when '1'
                  animal_database
                  when '2'
                  client_database
                  when '3'
                    new_animal
                  when "4"
                    new_client
                  
                    else
                    p "Please try again"
                    menu
                    end
                  
                  end   
# end