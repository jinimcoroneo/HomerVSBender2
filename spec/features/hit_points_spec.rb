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

feature "lose a battle" do
  scenario "player loses when hit points reach 0" do
    sign_in_and_play
    9.times do
      click_button "Attack andrew!"
      click_button "Keep fighting!!"
    end
    click_button "Attack andrew!"
    expect(page).to have_content "GAME OVER! andrew loses!"

  end
end
