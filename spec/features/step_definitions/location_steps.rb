module LocationSteps
  step "I create a new location :name" do |name|
    step "I am on the Locations section"
    click_link 'New Location'
    fill_in 'Name', with: name
    fill_in 'Address', with: '123 bla lane'
    fill_in 'Description', with: """
      Fusce a metus eu diam varius congue nec nec sapien. Vestibulum orci tortor, sollicitudin ac euismod non, placerat ac augue. Nunc convallis accumsan justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec malesuada vehicula lectus, viverra sodales ipsum gravida nec. Integer gravida nisi ut magna mollis molestie. Nullam pharetra accumsan sagittis. Proin tristique rhoncus orci, eget vulputate nisi sollicitudin et. Quisque lacus augue, mollis non mollis et, ullamcorper in purus. Morbi et sem orci. Praesent accumsan odio in ante ullamcorper id pellentesque mauris rhoncus. Duis vitae neque dolor. Duis sed purus at eros bibendum cursus nec a nulla. Donec turpis quam, ultricies id pretium sit amet, gravida eget leo.
    """
    click_button 'Create Location'
  end

  step "a location :name exists" do |name|
    step "I create a new location '#{name}'"
  end

  step "an existing location :name" do |name|
    step "a location '#{name}' exists"
  end

  step "I should see my new location, :name in the index page" do |name|
    step "I am on the Locations section"
    page.should have_content name
  end

  step "I edit location :name" do |name|
    find("a[href='/admin/locations/#{Location.where(name: name).first.id}/edit']").click
  end

  step "I change some fields for the location :name" do |name|
    step "I edit location \"#{name}\""
    @new_location_name = "Location ##{Random.rand 10000..99999}"
    fill_in 'Name', with: @new_location_name
  end

  step "I save those changes to the location" do
    click_button 'Update Location'
  end

  step "I should see my changes to the location reflected in the index page" do
    step "I go to the Locations section"
    page.should have_content @new_location_name
  end

  step "I delete some location :name" do |name|
    step "I go to the Locations section"
    find("a[href='/admin/locations/#{Location.where(name: name).first.id}'].delete_link").click
  end

  step "I upload a location image for :name" do |name|
    step "I go to the Locations section"
    step "I edit location '#{name}'"
    attach_file('Image', 'spec/fixtures/building.jpg')
    step "I save those changes to the location"
  end

  step "I should see the new location image for :name" do |name|
    within('.location') do
      page.should have_css('img')
    end
  end
end
