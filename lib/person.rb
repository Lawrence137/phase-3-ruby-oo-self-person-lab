# your code goes here
class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene 
    end

    def happiness=(new_value)
        @happiness = new_value.clamp(0, 10)
      end
    
      def hygiene=(new_value)
        @hygiene = new_value.clamp(0, 10)
      end
    
      def happy?
        @happiness > 7
      end
    
      def clean?
        @hygiene > 7
      end
    
      def get_paid(salary_amount)
        @bank_account += salary_amount
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

   
end