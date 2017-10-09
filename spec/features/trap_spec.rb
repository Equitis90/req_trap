require 'rails_helper'

RSpec.feature 'Trap', type: :feature, js: true do
  scenario 'user open main page' do
    visit '/'

    expect(page).to have_selector('h1', text: 'This is the Request trap app!', count: 1)
  end

  scenario 'user create request and open requests page to view result' do
    visit '/new_req'
    visit '/new_req/requests'

    expect(page).to have_selector('h2', text: 'new_req', count: 1)
    expect(page).to have_selector('div.thumbnail', count: 1)
  end

  scenario 'user create multiple requests and watch them adding to request windows' do
    visit '/new_req'

    reqs = open_new_window

    within_window reqs do
      visit '/new_req/requests'
      page.find('h2', text: 'new_req')
      expect(page).to have_selector('div.thumbnail', count: 1)
    end

    switch_to_window(windows.first)

    within_window windows.first do
      visit '/new_req'
    end

    switch_to_window(windows.last)
    expect(page).to have_selector('div.thumbnail', count: 2)
  end
end
