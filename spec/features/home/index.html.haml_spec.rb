require 'rails_helper'

describe 'Home' do

  it 'will have a logo name SusuBank' do
    visit root_path
    expect(page).to have_content('SusuBank')
  end
  it 'will have an About Us link' do
    visit root_path
    expect(page).to have_content('About Us')
  end

  it 'will have a Contact Us link' do
    visit root_path
    expect(page).to have_content('Contact Us')
  end

  it 'will have a Learn More link' do
    visit root_path
    expect(page).to have_content('Learn More')
  end

end


