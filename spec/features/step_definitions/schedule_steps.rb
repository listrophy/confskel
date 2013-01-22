module ScheduleSteps
  step "a conference organizer goes to the schedule section of the admin panel" do
    visit '/admin/sessions'
    page.should have_content 'Sessions'
  end

  step "the admin creates a new session for :talk_name" do |talk_name|
    click_link 'New Session'
    fill_in 'Title', with: talk_name
    fill_in 'Location', with: 'Room 123'
    fill_in 'Speaker', with: 'Bob Loblaw'
    fill_in 'Type', with: 'Talk'
    step "fill in the start time"
    step "fill in the end time"
  end

  step "the admin should see :talk_name" do |talk_name|
    visit '/admin/sessions'
    page.should have_content talk_name
  end

  step "fill in the start time" do
    select '2013', from: 'session_start_1i'
    select 'January', from: 'session_start_2i'
    select '10', from: 'session_start_3i'
    select '00', from: 'session_start_4i'
    select '00', from: 'session_start_5i'
  end

  step "fill in the end time" do
    select '2013', from: 'session_start_1i'
    select 'January', from: 'session_start_2i'
    select '11', from: 'session_start_3i'
    select '00', from: 'session_start_4i'
    select '00', from: 'session_start_5i'
  end
end

