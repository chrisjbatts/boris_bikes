class Person
  def initialize(name, age)
    @name, @age = name, age
  end

  attr_accessor(:age, :name)


  def name
    @name
  end

  def age
    @age
  end

  def age=(new_age)
    age = new_age
  end
  
end

chris = Person.new("Chris", 20)

def say_hello_to person
  puts "hello #{person.name}! I've heard that you are #{person.age} years old, right?"
end

say_hello_to chris

chris.age=(22)

say_hello_to(chris)

chris.name = "Crispy"

say_hello_to(chris)