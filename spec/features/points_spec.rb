feature 'Viewing hit points' do
    scenario 'View player 2 HP' do
      sign_in_and_play
      expect(page).to have_content("Luigi: 100HP")
    end

    scenario 'View player 1 HP' do
      sign_in_and_play
      expect(page).to have_content("Mario: 100HP")
    end
  end

feature 'reducing hit points' do
    scenario 'Player 1 attacks Player 2' do
      sign_in_and_play
      allow(Kernel).to receive(:rand).and_return(10)
      click_button("Attack")
      expect(page).to have_content("Luigi: 90")
    end

    scenario 'Player 2 can attack Player 1' do
      sign_in_and_play
      allow(Kernel).to receive(:rand).and_return(10)
      click_button("Attack")
      click_link("Continue")
      click_button("Attack")
      expect(page).to have_content("Mario: 90")
    end
  end