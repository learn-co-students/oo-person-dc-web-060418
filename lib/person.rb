class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(num)
    @happiness = self.change_val(num)
  end

  def hygiene=(num)
    @hygiene = self.change_val(num)
  end

  def change_val(num)
    num = 10 if num > 10
    num = 0 if num < 0
    num
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    self.bank_account += salary
    'all about the benjamins'
  end

  def take_bath
    self.hygiene +=4
    '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    '♪ another one bites the dust ♫'
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
    when 'politics'
      friend.happiness -= 2
      self.happiness -= 2
      "blah blah partisan blah lobbyist"
    when 'weather'
      friend.happiness += 1
      self.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end