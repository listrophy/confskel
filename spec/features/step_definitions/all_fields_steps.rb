module AllFieldsSteps

  # helpers {{{

  step 'I should see :number fields in an ActiveAdmin index page table' do |number|
    within '.index_table' do
      all('th').length.should == number.to_i
    end
  end

  step 'I should see the :name field in an ActiveAdmin index page table' do |name|
    within '.index_table' do
      begin
        page.should have_css('th', text: name.humanize.titleize)
      rescue
        page.should have_css('th', text: name.humanize)
      end
    end
  end

  step "I should see the :name field in an ActiveAdmin show page" do |name|
    within '.attributes_table' do
      begin
        page.should have_css('th', text: name.humanize.titleize)
      rescue
        page.should have_css('th', text: name.humanize)
      end
    end
  end

  step 'I should see the :name label in an ActiveAdmin edit page' do |name|
    within 'form' do
      begin
        page.should have_css('label', text: name.humanize.titleize)
      rescue
        page.should have_css('label', text: name.humanize)
      end
    end
  end

  # }}} helpers

  # deadlines {{{

  step 'I should see the following fields on the index page for deadlines:' do |fields|
    step 'I go to the Deadlines section'

    # NOTE: we're adding one to allow for the actions (edit/view/delete) heading
    step "I should see #{fields.hashes.length + 1} fields in an ActiveAdmin index page table"

    fields.hashes.map do |hash|
      step "I should see the '#{hash['field']}' field in an ActiveAdmin index page table"
    end
  end

  step 'I should see the following fields on the show page for deadlines:' do |fields|
    step 'I go to the Deadlines section'

    within '.index_table tbody tr:first-of-type' do
      click_on 'View'
    end

    fields.hashes.map do |hash|
      step "I should see the '#{hash['field']}' field in an ActiveAdmin show page"
    end
  end

  step 'I should see the following fields on the edit page for deadlines:' do |fields|
    step 'I go to the Deadlines section'

    within '.index_table tbody tr:first-of-type' do
      click_on 'Edit'
    end

    fields.hashes.map do |hash|
      step "I should see the '#{hash['field']}' label in an ActiveAdmin edit page"
    end
  end

  # }}} deadlines

  # locations {{{

  step 'I should see the following fields on the index page for locations:' do |fields|
    step 'I go to the Locations section'

    # NOTE: we're adding one to allow for the actions (edit/view/delete) heading
    step "I should see #{fields.hashes.length + 1} fields in an ActiveAdmin index page table"

    fields.hashes.map do |hash|
      step "I should see the '#{hash['field']}' field in an ActiveAdmin index page table"
    end
  end

  step 'I should see the following fields on the show page for locations:' do |fields|
    step 'I go to the Locations section'

    within '.index_table tbody tr:first-of-type' do
      click_on 'View'
    end

    fields.hashes.map do |hash|
      step "I should see the '#{hash['field']}' field in an ActiveAdmin show page"
    end
  end

  step 'I should see the following fields on the edit page for locations:' do |fields|
    step 'I go to the Locations section'

    within '.index_table tbody tr:first-of-type' do
      click_on 'Edit'
    end

    fields.hashes.map do |hash|
      step "I should see the '#{hash['field']}' label in an ActiveAdmin edit page"
    end
  end

  # }}} locations

  # proposals {{{

  step 'I should see the following fields on the index page for proposals:' do |fields|
    step 'I go to the Proposals section'

    # NOTE: we're adding one to allow for the actions (edit/view/delete) heading
    step "I should see #{fields.hashes.length + 1} fields in an ActiveAdmin index page table"

    fields.hashes.map do |hash|
      step "I should see the '#{hash['field']}' field in an ActiveAdmin index page table"
    end
  end

  step 'I should see the following fields on the show page for proposals:' do |fields|
    step 'I go to the Proposals section'

    within '.index_table tbody tr:first-of-type' do
      click_on 'View'
    end

    fields.hashes.map do |hash|
      step "I should see the '#{hash['field']}' field in an ActiveAdmin show page"
    end
  end

  step 'I should see the following fields on the edit page for proposals:' do |fields|
    step 'I go to the Proposals section'

    within '.index_table tbody tr:first-of-type' do
      click_on 'Edit'
    end

    fields.hashes.map do |hash|
      step "I should see the '#{hash['field']}' label in an ActiveAdmin edit page"
    end
  end

  # }}} proposals

  # sessions {{{

  step 'I should see the following fields on the index page for sessions:' do |fields|
    step 'I go to the Sessions section'

    # NOTE: we're adding one to allow for the actions (edit/view/delete) heading
    step "I should see #{fields.hashes.length + 1} fields in an ActiveAdmin index page table"

    fields.hashes.map do |hash|
      step "I should see the '#{hash['field']}' field in an ActiveAdmin index page table"
    end
  end

  step 'I should see the following fields on the show page for sessions:' do |fields|
    step 'I go to the Sessions section'

    within '.index_table tbody tr:first-of-type' do
      click_on 'View'
    end

    fields.hashes.map do |hash|
      step "I should see the '#{hash['field']}' field in an ActiveAdmin show page"
    end
  end

  step 'I should see the following fields on the edit page for sessions:' do |fields|
    step 'I go to the Sessions section'

    within '.index_table tbody tr:first-of-type' do
      click_on 'Edit'
    end

    fields.hashes.map do |hash|
      step "I should see the '#{hash['field']}' label in an ActiveAdmin edit page"
    end
  end

  # }}} sessions

  # speakers {{{

  step 'I should see the following fields on the index page for speakers:' do |fields|
    step 'I go to the Speakers section'

    # NOTE: we're adding one to allow for the actions (edit/view/delete) heading
    step "I should see #{fields.hashes.length + 1} fields in an ActiveAdmin index page table"

    fields.hashes.map do |hash|
      step "I should see the '#{hash['field']}' field in an ActiveAdmin index page table"
    end
  end

  step 'I should see the following fields on the show page for speakers:' do |fields|
    step 'I go to the Speakers section'

    within '.index_table tbody tr:first-of-type' do
      click_on 'View'
    end

    fields.hashes.map do |hash|
      step "I should see the '#{hash['field']}' field in an ActiveAdmin show page"
    end
  end

  step 'I should see the following fields on the edit page for speakers:' do |fields|
    step 'I go to the Speakers section'

    within '.index_table tbody tr:first-of-type' do
      click_on 'Edit'
    end

    fields.hashes.map do |hash|
      step "I should see the '#{hash['field']}' label in an ActiveAdmin edit page"
    end
  end

  # }}} speakers

  # sponsors {{{

  step 'I should see the following fields on the index page for sponsors:' do |fields|
    step 'I go to the Sponsors section'

    # NOTE: we're adding one to allow for the actions (edit/view/delete) heading
    step "I should see #{fields.hashes.length + 1} fields in an ActiveAdmin index page table"

    fields.hashes.map do |hash|
      step "I should see the '#{hash['field']}' field in an ActiveAdmin index page table"
    end
  end

  step 'I should see the following fields on the show page for sponsors:' do |fields|
    step 'I go to the Sponsors section'

    within '.index_table tbody tr:first-of-type' do
      click_on 'View'
    end

    fields.hashes.map do |hash|
      step "I should see the '#{hash['field']}' field in an ActiveAdmin show page"
    end
  end

  step 'I should see the following fields on the edit page for sponsors:' do |fields|
    step 'I go to the Sponsors section'

    within '.index_table tbody tr:first-of-type' do
      click_on 'Edit'
    end

    fields.hashes.map do |hash|
      step "I should see the '#{hash['field']}' label in an ActiveAdmin edit page"
    end
  end

  # }}} sponsors

end
