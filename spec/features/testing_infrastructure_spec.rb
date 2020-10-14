require './app.rb'
#feature 'Testing infrastructure' do
 # scenario 'Can run app and check page content' do
 #   visit('/')
 #   expect(page).to have_content 'Testing infrastructure'
 # end
# end

feature 'testing players names are displayed on-screen' do
  scenario 'Names entered in a form' do
    sign_in_and_play
    expect(page).to have_content("Mario VS. Luigi")
  end
end

feature ' Player1 can see Player 2s hit points' do
  scenario 'game play' do
    sign_in_and_play
    expect(page).to have_content("Luigi: 100HP")
  end
end
