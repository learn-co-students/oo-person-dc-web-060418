class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(new_total_happiness)
    if new_total_happiness > 10
      @happiness = 10
    elsif new_total_happiness < 0
      @happiness = 0
    else
      @happiness = new_total_happiness
    end
  end

  def hygiene=(new_total_hygiene)
    if new_total_hygiene > 10
      @hygiene = 10
    elsif new_total_hygiene < 0
      @hygiene = 0
    else
      @hygiene = new_total_hygiene
    end
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    change_hygiene(4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    change_happiness(2)
    change_hygiene(-3)
     "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    change_happiness(3)
    change_happiness(3, friend)
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      change_happiness(-2)
      change_happiness(-2, friend)
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      change_happiness(1)
      change_happiness(1, friend)
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

  private

  def change_happiness(amount, person=self)
    person.happiness = person.happiness + amount
  end

  def change_hygiene(amount, person=self)
    person.hygiene = person.hygiene + amount
  end

end
