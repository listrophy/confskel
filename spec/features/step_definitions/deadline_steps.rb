module DeadlineSteps
  step "an existing deadline :name" do |name|
    step "I go to the Deadlines section"
    step "I create a new deadline '#{name}'"
    step "I go to the Deadlines section"
  end

  step "I create a new deadline :name" do |name|
    click_link 'New Deadlines'
    fill_in 'Name', with: name
    step "fill in the deadline start time"
    step "fill in the deadline end time"
    click_button 'Create Deadlines'
    page.should have_content 'Deadlines was successfully created.'
  end

  step "fill in the deadline start time" do
    select '2012', from: 'deadlines_start_1i'
    select 'January', from: 'deadlines_start_2i'
    select '10', from: 'deadlines_start_3i'
    select '00', from: 'deadlines_start_4i'
    select '00', from: 'deadlines_start_5i'
  end

  step "fill in the deadline end time" do
    select '2013', from: 'deadlines_end_1i'
    select 'January', from: 'deadlines_end_2i'
    select '11', from: 'deadlines_end_3i'
    select '00', from: 'deadlines_end_4i'
    select '00', from: 'deadlines_end_5i'
  end

  step "I should see my new deadline, :name in the index page" do |name|
    step "I go to the Deadlines section"
    step "I should see '#{name}'"
  end

  step "I change some details/fields for the deadline :name" do |name|
    @new_deadline_name = "Deadline ##{Random.rand 10000..99999}"
    find("a[href='/admin/deadlines/#{Deadlines.where(name: name).first.id}/edit']").click
    fill_in 'Name', with: @new_deadline_name
  end

  step "I save those changes to the deadline" do
    click_button 'Update Deadlines'
  end

  step "I should see my changes to the deadline reflected in the index page" do
    step "I go to the Deadlines section"
    page.should have_content @new_deadline_name
  end

  step "I delete some deadline :name" do |name|
    find("a[href='/admin/deadlines/#{Deadlines.where(name: name).first.id}'].delete_link").click
    step "I go to the Deadlines section"
  end
end
