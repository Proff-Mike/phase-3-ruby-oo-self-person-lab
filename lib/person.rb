# your code goes here

class Person
  attr_reader  :name, :happy
  attr_accessor :bank_account, :happiness, :hygiene, :get_paid, :call_friend

  def initialize(name)
      @name = name
      @bank_account = bank_account = 25
      @happiness = happiness = 8
      @hygiene = hygiene = 8
  end

  def happiness=(score)
      @happiness = score
      if self.happiness < 0
         @happiness = 0
      elsif self.happiness > 10
         @happiness = 10
      end
  end

  def hygiene=(score)
      @hygiene = score
      if @hygiene < 0
         @hygiene= 0
      elsif @hygiene > 10
         @hygiene = 10
      end
  end

  def happy?
      if self.happiness > 7
          true
      else
          false
      end 
  end

  def clean?
      if self.hygiene > 7
          true
      else
          false   
      end 
  end

  def get_paid(amount)
      @bank_account += amount
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

  def call_friend(friend)
      self.happiness += 3
      friend.happiness += 3
      "Hi #{friend.name}! It's #{self.name}. How are you?"
  end 
  
  def start_conversation(person, topic)
      if topic == "politics"
          self.happiness -= 2
          person.happiness -= 2
          "blah blah partisan blah lobbyist"
      elsif topic == "weather"
          self.happiness += 1
          person.happiness +=1
          "blah blah sun blah rain"
      else
          "blah blah blah blah blah"
      end
  end

end
