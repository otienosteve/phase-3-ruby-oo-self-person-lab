# your code goes here
require "pry"
class Person
    attr_reader :name
    def initialize(name)
        @name=name
        @bank_account=25
        @happiness=8
        @hygiene=8
    end
    def bank_account
    @bank_account
    end
    def bank_account=(bank_account)
        @bank_account=bank_account
    end
   
    def happiness=(happiness)
       if happiness>10 
        @happiness=10
       elsif happiness <0
        @happiness=0
        else 
        @happiness=happiness
       end
       
    end
    def happiness
        @happiness
    end
    def hygiene
        @hygiene
    end
    def hygiene=(hygiene)
    if hygiene>10 
    @hygiene=10
    elsif hygiene <0
    @hygiene=0
    else 
    @hygiene=hygiene
    end
    end
    def  happy?
    if @happiness>7
        true
    else
        false
    end 
    end
    #isclean
    def  clean?
    if @hygiene>7
    true
    else
    false
    end 
    end
    #addmoney
    def  get_paid(amount)
        @bank_account+=amount
        "all about the benjamins"
    end
    def take_bath
     hygiene=self.hygiene+=4
    # binding.pry
    '♪ Rub-a-dub just relaxing in the tub ♫'
    end
    def work_out
        hygiene=self.hygiene-=3
        happiness=self.happiness+=2
        # binding.pry
        '♪ another one bites the dust ♫'
    end
    def call_friend(pers)
        happiness=(self.happiness+=3)
        pers.happiness=(pers.happiness+=3)
        "Hi #{pers.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend,topic)
        if topic=="politics"
            # binding.pry
            self.happiness=(self.happiness-=2)
            friend.happiness=(friend.happiness-2)
           
        "blah blah partisan blah lobbyist"
        elsif topic=="weather"
            self.happiness=(self.happiness+=1)
            friend.happiness=(friend.happiness+=1)
          
        "blah blah sun blah rain"
        else
        "blah blah blah blah blah"
        end
    
    end
end
jane=Person.new("Jane")

jane.happiness=10
# p jane.take_bath
jim=Person.new("Jim")
jim.start_conversation(jane,'politics')