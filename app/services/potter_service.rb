class PotterService

  def members_by_house(house)
    response = Faraday.get "https://www.potterapi.com/v1/characters" do |req|
      req.params['key'] = ENV['POTTER_API_KEY']
      req.params['house'] = house
    end

    members = JSON.parse(response.body, symbolize_names: true)

    order_members = members.find_all {|member| member[:orderOfThePhoenix]}
  end
end