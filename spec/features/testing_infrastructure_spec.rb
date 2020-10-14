require './app.rb'
#feature 'Testing infrastructure' do
 # scenario 'Can run app and check page content' do
 #   visit('/')
 #   expect(page).to have_content 'Testing infrastructure'
 # end
# end

feature 'players names are displayed on-screen' do
  scenario 'Names entered in a form' do
    sign_in_and_play
    expect(page).to have_content("Mario VS. Luigi")
  end
end

feature 'Viewing hit points' do
  scenario 'View player 2 HP' do
    sign_in_and_play
    expect(page).to have_content("Luigi: 100HP")
  end
end

feature 'Attack' do
  scenario 'Player 1 can attack Player 2' do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content("Attack landed!")
  end
end