# notice we didn't need to require app file, as it is in the spec_helper

# write a feature test that checks that the homepage says Testing infra working!

# feature 'Testing infrastructure' do
#  scenario 'Can run app and check page content' do
#    visit('/')
#    expect(page).to have_content 'Testing infrastructure working!'
#  end
# end

feature 'Testing form' do
  scenario 'Players enter their names' do
    visit('/')
    fill_in :Player1_name, with: 'John'
    fill_in :Player2_name, with: 'Steve'
    click_button 'Submit'
    expect(page).to have_content 'John vs. Steve'
  end
end

feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    visit('/')
    fill_in :Player1_name, with: 'John'
    fill_in :Player2_name, with: 'Steve'
    click_button 'Submit'
    expect(page).to have_content 'Steve: 8'
  end
end
# feature 'hit points' do
#   scenario 'Player 2' do
#     visit('/play')
#     expect(page).to have_content '8'
#   end
# end
