feature 'attack player 2' do
  scenario 'reduce player 2 hp by 10 after attack' do
    sign_in_and_play
    click_button('Attack')
    within 'div.hpdiv' do
      expect(page).to have_content 'Player 2 now has 90 hp'
    end
  end
end
