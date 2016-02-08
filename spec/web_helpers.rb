def sign_in_and_play
	visit('/')
	fill_in :markateer_name, with: 'Elaine' 
	click_button 'Submit'  
end