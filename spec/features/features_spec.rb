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

feature 'Submit choice' do

	scenario 'see markateer submit choice' do
		sign_in_and_play
		expect(page).to have_content 'Elaine: Paper'   
	end
end