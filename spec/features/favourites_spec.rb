

feature 'viewing links' do
    scenario 'check that I can see links that I have stored' do
      Link.create(url: 'https://www.reddit.com', title: 'Reddit')
      visit ('/links')
      expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).to have_content("reddit.com")
    end
  end
end
