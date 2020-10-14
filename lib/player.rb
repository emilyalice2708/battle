class Player
    attr_reader :name, :points
    INITIAL_HP = 100

    def initialize(name)
        @name = name
        @points = INITIAL_HP
    end

    def attack(player)
        player.injured
    end

    def injured
        @points -=10
    end

end