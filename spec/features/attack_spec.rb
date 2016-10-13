xfeature "attack player 2" do 
  scenario "attack player and get confirmation" do
 	sign_in_and_play
 	click_button "Attack Andrew!"
  	expect(page).to have_content "jini attacked andrew"
  	click_button "Attack Jini!"
  	expect(page).to have_content "jini attacked andrew"
  end
 end