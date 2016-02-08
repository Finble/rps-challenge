feature 'Enter names' do

		# before do
		# include Capybara::DSL
		# Capybara.default_driver = :selenium
		# end

	scenario 'submitting names' do 
		visit ('/')
		fill_in :player_1_name, with: 'Elaine' 
		fill_in :player_2_name, with: 'Sharon' 
		click_button 'Submit'  
		expect(page).to have_content 'Elaine vs Sharon'
	end

end