def sign_in
  visit('/')
  fill_in('name', with: 'Giacomo')
  click_button 'Submit'
end
