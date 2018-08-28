# your code goes here
require 'pry'
class Person
	def self.attr_out_of_ten(*args)
		args.each do |arg|
			self.class_eval("def #{arg};@#{arg};end")
			self.class_eval %Q{
				def #{arg}=(val)
					if val < 0
						@#{arg} = 0
					elsif val > 10
						@#{arg} = 10
					else
						@#{arg} = val
					end
				end
					}
		end
	end

	attr_reader :name
	attr_accessor :bank_account
	attr_out_of_ten :happiness, :hygiene

	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end

	def clean?
		@hygiene > 7
	end

	def happy?
		@happiness > 7
	end


	def get_paid(salary)
		self.bank_account += salary
		"all about the benjamins"
	end

	def take_bath
		self.hygiene += 4
		"♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		self.happiness += 2
		self.hygiene -= 3
		"♪ another one bites the dust ♫"
	end

	def call_friend(friend)
		self.happiness += 3
		friend.happiness += 3
		"Hi #{friend.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(starter, topic)
		if topic == "politics"
			self.happiness -= 2
			starter.happiness -= 2
			return "blah blah partisan blah lobbyist"
		elsif topic == "weather"
			self.happiness += 1
			starter.happiness += 1
			return "blah blah sun blah rain"
		else
			return "blah blah blah blah blah"
		end
	end
end
