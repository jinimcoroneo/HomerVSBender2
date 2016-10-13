feature "Enter names" do 
  scenario "submitting names" do
 	sign_in_and_play
  	expect(page).to have_content "jini"
  	expect(page).to have_content "VS."
  	expect(page).to have_content "andrew"
  end
 end