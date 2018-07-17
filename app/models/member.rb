class Member
  attr_reader :name, :power, :bio
  @@all = []

  def initialize(argument)
    @name = argument[:name]
    @power = argument[:power]
    @bio = argument[:bio]
    @@all << self
  end

  def self.all
    @@all
  end


end
