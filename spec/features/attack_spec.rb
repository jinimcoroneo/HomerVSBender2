feature "attack player 2" do
  scenario "attack player and get confirmation" do
 	sign_in_and_play
 	click_button "Attack andrew!"
  expect(page).to have_content "Direct hit! andrew has 90 HP"

  end
end
