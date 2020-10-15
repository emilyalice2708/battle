feature 'Viewing hit points' do
    scenario 'View player 2 HP' do
      sign_in_and_play
      expect(page).to have_content("Luigi: 100HP")
    end
  end

feature 'reducing hit points' do
    scenario 'Player 1 attacks Player 2' do
      sign_in_and_play
      click_button("Attack")
      expect(page).to have_content(90)
    end
  end