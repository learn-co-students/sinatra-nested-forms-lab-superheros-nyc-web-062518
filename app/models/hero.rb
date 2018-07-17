class Hero
  attr_accessor :name, :bio, :power

  @@all = []

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    self.all.clear
  end
end
