class Bear
attr_reader :name, :type
def initialize(name, type)
  @name = name
  @type = type
  @stomach = []
end

def add_fish_to_stomach(fish, river)
 river.lose_fish(fish)
 return  @stomach.push(fish)
end



def roar
  return "ROAR! I'm a bear!"
end


def food_count
  @stomach.count
end


end
