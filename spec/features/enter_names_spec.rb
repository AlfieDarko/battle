feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    within 'div.names' do
      expect(page).to have_content 'Dave vs Mittens'
    end
  end
end
