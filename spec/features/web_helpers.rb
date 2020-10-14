def sign_in_and_play
    visit('/')
    fill_in :Player_1_Name, with: "Mario"
    fill_in :Player_2_Name, with: "Luigi"
    click_button("Submit")
end