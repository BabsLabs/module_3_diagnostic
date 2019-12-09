class Character
  attr_reader :name, :role, :house

  def initialize(character_attributes)
    @name = character_attributes[:name]
    @role = character_attributes[:role]
    @house = character_attributes[:house]
  end
end