feature 'hitpoints' do
  scenario 'displaying hitpoints' do
    sign_in_and_play
    within 'div.names' do
      expect(page).to have_content '100 hp vs 100 hp'
    end
  end
end
