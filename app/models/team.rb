class Team
  attr_accessor :name, :motto
  @@all = []
  def initialize(argument)
    @name = argument[:name]
    @motto = argument[:motto]
    @@all << self
  end

  def self.all
    @@all
  end
end
