class SearchController < ApplicationController

  def index
    render locals: {
      search_results: PotterHouseSearch.new(params[:house])
    }




    # house = params[:house]
    # key = ENV['POTTER_API_KEY']

    # I COULD NOT GET THE CONNECTION OBJECT TO WORK AND SPENT WAY TOO LONG TRYING!
    # conn = Faraday.new(url: "https://www.potterapi.com/") do |faraday|
    #   faraday.params['key'] = key
    #   faraday.params['house'] = house
    # end
    #
    # response = conn.get("/v1/characters")
    #
    # binding.pry

    # response = Faraday.get "https://www.potterapi.com/v1/characters" do |req|
    #   req.params['key'] = key
    #   req.params['house'] = house
    # end
    #
    # members = JSON.parse(response.body, symbolize_names: true)
    #
    # @order_members = members.find_all {|member| member[:orderOfThePhoenix]}
  end

end