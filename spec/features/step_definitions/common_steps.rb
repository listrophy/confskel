module Turnip::Steps
  step "I am logged in" do
    unless AdminUser.find_by_email('admin@example.com')
      AdminUser.create! email: 'admin@example.com',
        password: 'password',
        password_confirmation: 'password'
    end

    visit '/admin/login'
    fill_in 'Email', with: 'admin@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Login'
  end
end
