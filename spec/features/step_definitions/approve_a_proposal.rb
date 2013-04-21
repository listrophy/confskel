module ApproveAProposalSteps
  step "a proposal exists for :name the potential speaker" do |name|
    @proposal = Proposal.create name: name
  end

  step "a proposal exists for a potential speaker without a name" do
    @nameless_proposal = Proposal.create
  end

  step "I should see an 'Approve' link for the proposal for :name" do |name|
    # thanks http://stackoverflow.com/a/12851999
    page.should have_xpath("//tr[contains(.,'#{name}')]/td/a", text: 'Approve')
  end

  step "I should see a message indicating :name was added as a speaker" do |name|
    page.should have_text("Speaker \"#{name}\" has been approved.")
  end

  step "I approve :name the potential speaker" do |name|
    find(:xpath, "//tr[contains(.,'#{name}')]/td/a", text: 'Approve').click
  end

  step "a speaker exists who is called :name" do |name|
    Speaker.create name: name
  end

  step "I should be on the Edit speakers page for that speaker" do
    current_url.should == edit_admin_speaker_url(Speaker.where(name: @proposal.name).first)
  end

  step "I should not see an 'Approve' link for the proposal without a name" do
    within("#proposal_#{@nameless_proposal.id}") do
      page.should_not have_css('td', text: 'Approve')
    end
  end
end
