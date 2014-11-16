module Animal
# Define Animal as a class
  class Animal

    # Set up accessors and mutators for the attributes of an Animal
    # attr_accessor sets up both for you
    attr_accessor :name, :age, :gender, :species, :toys

    # Used when creating a new animal.
    #   Example:
    #       Animal.new('Timmy', 4, 'male', 'toad')
    def initialize(name, age, gender, species)

  self.name = name
  self.age = age
  self.gender = gender
  self.species = species

    end



    # When we display the animal using puts or print, the
    #   to_s method is called to pretty print an Animal
    def to_s
      p "here's the animal that you have enquired:"
      p "Name: #{self.name}"
      p "Age: #{self.age}"
      p "Gender: #{self.gender}"
      p "Species: #{self.species}"

    end
  end
end