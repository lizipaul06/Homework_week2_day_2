class River


  attr_reader :fishes, :name
  attr_writer :fishes

  def initialize (name)
    @name = name
    @fishes = ["fish_1", "fish_2", "fish_3", "fish_4"]

  end

  def check_name(name)
    if @name = name
      return name
    end
    return  "This is not a river"
  end

  def count_fish
    return @fishes.count
  end


  def lose_fish(fish)
    @fishes.delete(fish)

    return @fishes
  end

end
