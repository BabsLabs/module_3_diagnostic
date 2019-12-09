class SearchController < ApplicationController

  def index
    house = params[:house]
    key = '$2a$10$2eeaUn9Atva0TzqPe94FeOkfSzRZt9wr8tT3hI.5..qXVMiJqjOKq'

    # I COULD NOT GET THE CONNECTION OBJECT TO WORK AND SPENT WAY TOO LONG TRYING!
    # conn = Faraday.new(url: "https://www.potterapi.com/") do |faraday|
    #   faraday.params['key'] = key
    #   faraday.params['house'] = house
    # end
    #
    # response = conn.get("/v1/characters")
    #
    # binding.pry

    response = Faraday.get "https://www.potterapi.com/v1/characters" do |req|
      req.params['key'] = key
      req.params['house'] = house
    end

    @members = JSON.parse(response.body, symbolize_names: true)
  end

end