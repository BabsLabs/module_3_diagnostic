class SearchController < ApplicationController

  def index
    render locals: {
      search_results: PotterMemberSearch.new(params[:house])
    }
  end

end