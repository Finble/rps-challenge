def sign_in_and_play
	visit('/')
	fill_in :markateer_name, with: 'Elaine' 
	# fill_in :player_2_name, with: 'Sharon' 
	click_button 'Submit'  
end