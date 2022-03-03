class SeedContainerFillingLevels
    attr_reader :level

    def initialize(container)
        @container = container
        @container.container_filling_levels.destroy_all
        @level = 50
    end

    def call
        (0...180).to_a.reverse.each do |i|
            time = (Time.now - i.days).beginning_of_day
            compute_level
            ContainerFillingLevel.create!(container: @container, level: @level, at: time)
        end
    end

    def compute_level
        @level += rand(5..15)
        if @level >= 100
            @level = 100
        end
        if @level > 80 && [true, false].sample
            @level = 0
        end
    end
end
