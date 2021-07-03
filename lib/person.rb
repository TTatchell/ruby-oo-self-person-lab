class Person 
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(number)
        if number > 10
            @happiness = 10
        elsif number < 0
            @happiness = 0
        else
            @happiness = number
        end
    end

    def hygiene=(number)
        if number > 10
            @hygiene = 10
        elsif number < 0
            @hygiene = 0
        else
            @hygiene = number
        end
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid(money)
        @bank_account += money
        'all about the benjamins'
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

    def call_friend(instance)
        self.happiness += 3
        instance.happiness += 3
        "Hi #{instance.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(instance, topic)
        if topic == "politics"
            self.happiness -=2
            instance.happiness -=2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            instance.happiness += 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end


end