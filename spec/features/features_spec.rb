feature 'Enter names' do

		# before do
		# include Capybara::DSL
		# Capybara.default_driver = :selenium
		# end

	scenario 'submit names' do 
		visit ('/')
		fill_in :player_1_name, with: 'Elaine' 
		fill_in :player_2_name, with: 'Sharon' 
		click_button 'Submit'  
		expect(page).to have_content 'Elaine vs Sharon'  #what is 'page'
	end
end

feature 'Submit choice' do

	scenario 'see Player 2 submit choice' do
		visit ('/')
		fill_in :player_1_name, with: 'Elaine' 
		fill_in :player_2_name, with: 'Sharon' 
		click_button 'Submit' 
		expect(page).to have_content 'Elaine: Paper'  #what is 'page'
		expect(page).to have_content 'Sharon: Rock'  #what is 'page'
	end
end