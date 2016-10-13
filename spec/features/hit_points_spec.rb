feature "view players Hit Points" do 
  scenario "displays Hit Points" do
   sign_in_and_play
   expect(page).to have_content "andrew: 100HP"
   expect(page).to have_content "jini: 100HP"
   end
end

