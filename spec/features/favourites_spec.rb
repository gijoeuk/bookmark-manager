

feature 'viewing links' do
  scenario 'check that I can see links that I have stored' do
    Link.create(url: 'https://www.reddit.com', title: 'Reddit')
    visit ('/links')
    expect(page).to contain("reddit.com")
  end
end
