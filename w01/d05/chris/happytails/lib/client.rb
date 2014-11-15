module Client

  class Client

    attr_accessor :name, :children, :age, :pets

    
    def initialize(name, children, age, pets)

  @name = name
  @children = children
  @age = age
  @pets = pets

    end




    def to_s
      p "Here's the client details that you have enquired:"
      p "Name: #{self.name}"
      p "Children: #{self.children}"
      p "Age: #{self.age}"
      p "Pets: #{self.pets}"

    end
  end
end
