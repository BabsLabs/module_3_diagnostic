require 'rails_helper'

describe "user can search for members of a house" do
  it "when they submit a vaild house name" do

    visit '/'

    select 'Gryffindor', from: :house
    click_on 'Search For Members'

    expect(current_path).to eq(search_path)

    within '#house_member_count' do
      expect(page).to have_content('21')
    end 

    expect(page).to have_css('.member', count: 21)

    within(first.('.member')) do
      expect(page).to have_css('.name')
      # expect(page).to have_css('.member_role')
      expect(page).to have_css('.house')
      # expect(page).to have_css('.member_patronus')
    end

  end
end



# We will be using the /characters  route
# User Story:
# As a user,
# When I visit "/"
# And I Select "Gryffindor" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"
# Then I should see a total of the number of members for that house. (21 for Gryffindor)
# Then I should see a list of 21 members
# And for each of the members I should see:
# - The name of the member
# - The members role (if it exists)
# - The house the member belongs to
# - The Patronus of the member (if it exists)