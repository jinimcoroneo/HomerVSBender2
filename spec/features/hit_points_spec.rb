feature "view players Hit Points" do 
  scenario "displays Hit Points" do
   sign_in_and_play
   expect(page).to have_content "andrew: 50HP"
   expect(page).to have_content "jini: 50HP"
   end
end

