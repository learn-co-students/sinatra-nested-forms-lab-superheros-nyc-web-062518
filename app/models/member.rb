class Member
  attr_accessor :name, :power, :bio
  @@all = []
  def initialize(argument)
    @name = argument[:name]
    @power = argument[:power]
    @bio = argument[:bio]
    # binding.pry
    @@all << self
  end

  def self.all
    @@all
  end
end
