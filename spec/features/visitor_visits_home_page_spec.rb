require 'rails_helper'

feature 'Visitor visits home page' do
  scenario 'successfully' do
    visit root_path

    expect(page).to have_content('Pelada Tech')
  end
end
