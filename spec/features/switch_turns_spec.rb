feature 'switch turns' do
    scenario 'displaying current turn' do
        sign_in_and_play
        expect(page).to have_content("Mario, go!")
    end

    scenario 'displaying new turn after attack' do
        sign_in_and_play
        click_button("Attack")
        click_link("Continue")
        expect(page).to have_content("Luigi, go!")
    end
end