require 'spec_helper'

feature 'Homepage' do
  scenario "when visiting the homepage" do
    visit ('/')
    expect(page).to have_content('Rock-Paper-Scissors Game!')
  end
end

feature 'Enter name' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content('Mike')
  end
end
