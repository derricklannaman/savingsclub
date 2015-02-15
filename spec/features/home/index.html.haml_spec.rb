require 'rails_helper'

describe 'Home' do

  before :example do
    visit root_path
  end

  it 'will have a logo name SusuBank' do
    expect(page).to have_content('SusuBank')
  end

  it 'will have an About Us link' do
    expect(page).to have_content('About Us')
  end

  it 'will have a Contact Us link' do
    expect(page).to have_content('Contact Us')
  end

  it 'will have a Learn More link' do
    expect(page).to have_content('Learn More')
  end

  context 'when a user clicks a link' do

    it 'the About Us link renders about page' do
      click_link('About Us')
      expect(current_path).to eq(about_path)
    end

    it 'the Contact Us link renders contact page' do
      click_link('Contact Us')
      expect(current_path).to eq(contact_path)
    end

    it 'the Learn more link renders learn more page' do
      click_link('Learn More')
      expect(current_path).to eq(learn_path)
    end
  end

end


