feature 'Testing form' do
  scenario 'Players enter their names' do
    sign_in_and_play
    expect(page).to have_content 'John vs. Steve'
  end
end
