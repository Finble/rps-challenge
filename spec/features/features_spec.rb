feature 'Enter names' do

		# before do
		# include Capybara::DSL
		# Capybara.default_driver = :selenium
		# end

	scenario 'submit names' do 
		sign_in_and_play  
		expect(page).to have_content 'Elaine vs Sharon'  #what is 'page' = HTML page, so why index ends in .erb and not .html?
	end
end

feature 'Submit choice' do

	scenario 'see Player 2 submit choice' do
		sign_in_and_play
		expect(page).to have_content 'Elaine: Paper'  
		expect(page).to have_content 'Sharon: Rock'  
	end
end