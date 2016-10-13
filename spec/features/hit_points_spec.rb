feature "view players Hit Points" do 
  scenario "displays Hit Points" do
   sign_in_and_play
   click_button "Attack andrew!"
   expect(page).to have_content "Direct hit! andrew has 90HP"
   end
end

