
feature 'Attack' do
    scenario 'Player 1 can attack Player 2' do
      sign_in_and_play
      click_button("Attack")
      expect(page).to have_content("Attack landed!")
    end

    scenario 'Player 2 can attack Player 1' do
      sign_in_and_play
      click_button("Attack")
      click_link("Continue")
      click_button("Attack")
      expect(page).to have_content("Attack landed!")
    end
end
  