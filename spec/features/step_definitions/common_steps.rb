module Turnip::Steps
  def route_like(str)
    str.parameterize.underscore
  end

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

  step "I am on the :section section" do |section|
    step "I go to the #{section} section"
  end

  step "I go to the :section section" do |section|
    visit "/admin/#{route_like section}"
    within '#page_title' do
      page.should have_content section
    end
  end
end
