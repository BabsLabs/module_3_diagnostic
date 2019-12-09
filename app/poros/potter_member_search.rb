class PotterMemberSearch
  attr_reader(:house)

  def initialize(house)
    @house = house
  end

  def member_count
    members.count
  end

  def members
    service = PotterService.new
    service.members_by_house(house).map do |member_data|
      Character.new(member_data)
    end
  end


end