feature 'Adding tags' do
  scenario 'so i can add a tag to a new link' do
    visit ('/links/new')
    fill_in 'url', with: 'http:/www.reddit.com'
    fill_in 'title', with: 'Reddit'
    fill_in 'tags', with: 'General'
    click_button 'Submit'
    link = Link.first
    expect(link.tags.map(&:name)).to include('General')
  end
end
