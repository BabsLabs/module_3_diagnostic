class PotterHouseSearch
  attr_reader(:house)

  def initialize(house)
    @house = house
  end

  def member_count
    members.count
  end

  def members
    response = Faraday.get "https://www.potterapi.com/v1/characters" do |req|
      req.params['key'] = ENV['POTTER_API_KEY']
      req.params['house'] = @house
    end

    members = JSON.parse(response.body, symbolize_names: true)

    order_members = members.find_all {|member| member[:orderOfThePhoenix]}

    order_members.map do |member_data|
      Character.new(member_data)
    end
  end

end