# notice we didn't need to require app file, as it is in the spec_helper

# write a feature test that checks that the homepage says Testing infra working!
feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
