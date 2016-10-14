feature "view players Hit Points" do
  scenario "displays Hit Points" do
   sign_in_and_play
   expect(page).to have_content "andrew: 100 HP"
   end

   scenario "reduce player's hit points" do
    sign_in_and_play
    click_button "Attack andrew!"
    click_button "Keep fighting!!"
    expect(page).not_to have_content "andrew: 100 HP"
    expect(page).to have_content "andrew: 90 HP"
  end

end
