class SearchController < ApplicationController

  def index
    render locals: {
      search_results: PotterHouseSearch.new(params[:house])
    }
  end

end