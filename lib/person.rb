require "pry"

class Person
  attr_accessor :bank_account
  attr_reader :happiness, :hygiene, :bank_account
  
  
  def initialize(name)
    @name = name
    @happiness = 8
    @hygiene = 8
    @bank_account = 25
  end
  
  def name
    @name
  end

  
  def happiness=(happiness)
    if happiness > 10
     @happiness = 10
    elsif happiness < 0
      @happiness = 0
     else
       @happiness = happiness
    end
  end
  
  def hygiene=(hygiene)
    if hygiene > 10
      @hygiene = 10
    elsif hygiene < 0
      @hygiene = 0
    else
      @hygiene = hygiene
    end
  end 
  
  def happy?
    @happiness > 7
  end
  
  def clean?
    @hygiene > 7
  end
  
  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end
  
  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  
  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end
  
  def call_friend(obj)
    self.happiness += 3
    obj.happiness += 3
    "Hi #{obj.name}! It's #{self.name}. How are you?"
  end
  
  def start_conversation(obj, topic)
    if topic == "politics"
      self.happiness -= 2
      obj.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      obj.happiness += 1
      return "blah blah sun blah rain"
    end
    "blah blah blah blah blah"
  end
  
end