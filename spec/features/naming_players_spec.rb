feature 'players names are displayed on-screen' do
    scenario 'Names entered in a form' do
      sign_in_and_play
      expect(page).to have_content("Mario VS. Luigi")
    end
  end