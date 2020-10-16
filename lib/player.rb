require_relative 'game'

class Player
    attr_reader :name, :points
    INITIAL_HP = 100

    def initialize(name)
        @name = name
        @points = INITIAL_HP
    end

    def injured
        @damage = Kernel.rand(20)
        @points -= @damage
    end

end