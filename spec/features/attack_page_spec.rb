feature 'attack page' do
  scenario 'should confirm attack' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('You have been attacked')
  end
end
