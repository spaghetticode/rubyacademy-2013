require 'spec_helper'

describe 'homepage' do
  it 'shows the friends index page' do
    visit '/'
    page.should have_content 'Listing friends'
  end

  it 'creates a new friend' do
    visit '/'
    click_link 'New Friend'
    fill_in 'Name', :with => 'Andrea'
    fill_in 'Age', :with => '33'
    click_button 'Create Friend'
    page.should have_content 'Friend was successfully created'
  end

  it 'works with js', :js => true do
    visit '/'
    click_link 'js!'
    page.should have_content 'javascript generated content'
  end
end