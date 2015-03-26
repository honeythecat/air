require 'rails_helper'

describe 'the add a rental process' do

  it "adds a new rental" do
    visit rentals_path
    click_on "Create Property"
    fill_in 'Location', :with => 'Epicodus'
    fill_in 'Price', :with => '1'
    click_on 'Create Rental'
    expect(page).to have_content 'Rentals'
  end

  it 'gives an error when no location is entered' do
    visit new_rental_path
    click_on 'Create Rental'
    expect(page).to have_content 'errors'
  end
end
