#User Story 1 - enter name

feature 'Enter names' do

		# before do
		# include Capybara::DSL
		# Capybara.default_driver = :selenium
		# end

	scenario 'markateer submits name' do 
		sign_in_and_play  
		expect(page).to have_content 'Elaine'  #what is 'page' = HTML page, so why index ends in .erb and not .html?
	end
end



feature 'Play the game' do

	before do
		visit('/')
		fill_in :markateer_name, with: 'Elaine' 
		click_button 'Submit'  
	end

#User Story 2 - review the options

	scenario 'see the options' do

		expect(page).to have_content 'Rock'
		expect(page).to have_content 'Paper'
		expect(page).to have_content 'Scissors'

	end
end