feature 'submit new link' do
  scenario 'creates a new entry' do
    visit('/links/new')
    fill_in('url', with: 'https://www.reddit.com')
    fill_in('title', with: 'Reddit')
    fill_in('tags', with: 'General')
    click_button 'Submit'

    within 'ul#links' do
      expect(page).to have_content("Reddit")
    end
  end
end

feature 'viewing links' do
    scenario 'check that I can see links that I have stored' do
      Link.create(url: 'https://www.reddit.com', title: 'Reddit')
      visit ('/links')
      expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).to have_content("https://www.reddit.com")
    end
  end
end
