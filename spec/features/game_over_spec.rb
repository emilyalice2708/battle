feature 'Game Over' do
    scenario 'player 2 loses' do
        sign_in_and_play
        allow(Kernel).to receive(:rand).and_return(100)
        click_button("Attack")
        expect(page).to have_content("GAME OVER")
        expect(page).to have_content("MARIO WINS")
    end

    scenario 'player 1 loses' do
        sign_in_and_play
        click_button("Attack")
        click_link("Continue")
        allow(Kernel).to receive(:rand).and_return(100)
        click_button("Attack")
        expect(page).to have_content("GAME OVER")
        expect(page).to have_content("LUIGI WINS")
    end
end