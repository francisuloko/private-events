require 'rails_helper'

RSpec.describe User, type: :feature do
  it 'Sign up with valid inputs' do
    visit 'users/sign_up'
    fill_in 'user[name]', with: 'Host'
    fill_in 'user[email]', with: 'host@gmail.com'
    fill_in 'user[password]', with: '123456'
    fill_in 'user[password_confirmation]', with: '123456'
    click_on 'Submit'
    sleep(3)
    visit root_path
    expect(page).to have_content('Host')
  end

  it 'Sign up with invalid inputs' do
    visit 'users/sign_up'
    fill_in 'user[name]', with: ''
    fill_in 'user[email]', with: 'host'
    fill_in 'user[password]', with: '123456'
    fill_in 'user[password_confirmation]', with: '123456'
    click_on 'Submit'
    sleep(3)
    visit root_path
    expect(page).to_not have_content('Welcome! You have signed up successfully.')
  end

  let(:user) { User.create(name: 'Host', email: 'abc@abc.com', password: '123456') }
  scenario 'Log in with valid inputs' do
    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Log in'
    sleep(3)
    expect(page).to have_content('Signed in successfully.')
  end

  scenario 'Log in with invalid inputs' do
    visit new_user_session_path
    fill_in 'Email', with: 'Banana'
    fill_in 'Password', with: user.password
    click_on 'Log in'
    sleep(3)
    expect(page).to_not have_content('Signed in successfully.')
  end
end
