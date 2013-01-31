module ConferenceOptionSteps
  step "There are no conference options" do
    ConferenceOptions.count.should == 0
  end

  step "There is an existing set of conference options" do
    ConferenceOptions.create proposals_closed: DateTime.new(2013, 2, 3), proposals_open: DateTime.new(2012, 3, 4)
  end

  step "I make a new set of conference options" do
    click_link 'New Conference Options'
    step "fill in the closed proposals time"
    step "fill in the open proposals time"
    click_button 'Create Conference options'
    page.should have_content 'Conference options was successfully created.'
  end

  step "update the open proposals time" do
    select '2014', from: 'conference_options_proposals_open_1i'
    select 'January', from: 'conference_options_proposals_open_2i'
    select '10', from: 'conference_options_proposals_open_3i'
    select '00', from: 'conference_options_proposals_open_4i'
    select '00', from: 'conference_options_proposals_open_5i'
  end

  step "fill in the open proposals time" do
    select '2013', from: 'conference_options_proposals_open_1i'
    select 'January', from: 'conference_options_proposals_open_2i'
    select '10', from: 'conference_options_proposals_open_3i'
    select '00', from: 'conference_options_proposals_open_4i'
    select '00', from: 'conference_options_proposals_open_5i'
  end

  step "fill in the closed proposals time" do
    select '2013', from: 'conference_options_proposals_closed_1i'
    select 'January', from: 'conference_options_proposals_closed_2i'
    select '10', from: 'conference_options_proposals_closed_3i'
    select '00', from: 'conference_options_proposals_closed_4i'
    select '00', from: 'conference_options_proposals_closed_5i'
  end

  step "I should see my new set of conference options on the index page" do
    step "I am on the 'Conference Options' section"
    page.should have_content 'Call for proposals'
    page.should have_css ".open"
    page.should have_css ".closed"
  end

  step "I change some conference option" do
    step "I edit the conference options"
    step "update the open proposals time"
    click_button 'Update Conference options'
  end

  step 'I should see my changes reflected on the index page' do
    step "I am on the 'Conference Options' section"
    within('.open') do
      page.should have_content('2014')
    end
  end

  step "I edit the conference options" do
    step "I am on the 'Conference Options' section"
    click_link 'Edit'
  end

  step "I try to make a new set of conference options" do
    step "I am on the 'Conference Options' section"
    click_link 'New Conference Options'
    step "fill in the closed proposals time"
    step "fill in the open proposals time"
    click_button 'Create Conference options'
  end

  step "I should see an error telling me I can only make one set of conference options" do
    within '.errors' do
      page.should have_content 'There can no more than a single set of conference options'
    end
  end

  step "I delete the conference options" do
    step "I am on the 'Conference Options' section"
    click_link 'Delete'
  end

  step "I should see a message indicating my conference options were deleted" do
    page.should have_content 'Conference options was successfully destroyed.'
  end

  step "I should no longer see any conference options on the index page" do
    page.should have_content 'There are no Conference Options yet.'
  end
end
