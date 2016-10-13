def sign_in_and_play
   visit ('/')
   fill_in :player_1_name, with: "jini"
   fill_in :player_2_name, with: "andrew"
   click_button "Let's get ready to rumble!"
end
