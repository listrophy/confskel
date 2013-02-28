module StaticTextSteps
  step 'I create new static text :title with a paragraph' do |title|
    @title = title
    @text  = """
      Fusce a metus eu diam varius congue nec nec sapien. Vestibulum orci tortor, sollicitudin ac euismod non, placerat ac augue. Nunc convallis accumsan justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec malesuada vehicula lectus, viverra sodales ipsum gravida nec. Integer gravida nisi ut magna mollis molestie. Nullam pharetra accumsan sagittis. Proin tristique rhoncus orci, eget vulputate nisi sollicitudin et. Quisque lacus augue, mollis non mollis et, ullamcorper in purus. Morbi et sem orci. Praesent accumsan odio in ante ullamcorper id pellentesque mauris rhoncus. Duis vitae neque dolor. Duis sed purus at eros bibendum cursus nec a nulla. Donec turpis quam, ultricies id pretium sit amet, gravida eget leo.
    """

    click_link 'New Static Text'
    fill_in 'Title', with: @title
    fill_in 'Text', with: @text
    click_on 'Create Static text'
  end

  step 'I should see my new static text, and some of that paragraph on the index page' do
    step 'I go to the "Static Texts" section'
    step "I should see '#{@title}'"
    step "I should see '#{@text}'"
  end

  step 'some static text :title' do |title|
    step "I create new static text '#{title}' with a paragraph"
  end

  step "I change the text for the static text item :title" do |title|
    @new_text = """
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus. Sed sit amet ipsum mauris. Maecenas congue ligula ac quam viverra nec consectetur ante hendrerit. Donec et mollis dolor. Praesent et diam eget libero egestas mattis sit amet vitae augue. Nam tincidunt congue enim, ut porta lorem lacinia consectetur. Donec ut libero sed arcu vehicula ultricies a non tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut gravida lorem. Ut turpis felis, pulvinar a semper sed, adipiscing id dolor. Pellentesque auctor nisi id magna consequat sagittis. Curabitur dapibus enim sit amet elit pharetra tincidunt feugiat nisl imperdiet. Ut convallis libero in urna ultrices accumsan. Donec sed odio eros. Donec viverra mi quis quam pulvinar at malesuada arcu rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In rutrum accumsan ultricies. Mauris vitae nisi at sem facilisis semper ac in est.
    """

    find("a[href='/admin/static_texts/#{StaticText.where(title: title).first.id}/edit']").click

    fill_in 'Text', with: @new_text
  end

  step 'I save those changes to the static text' do
    click_on 'Update Static text'
  end

  step 'I should see my changes to the static text reflected in the index page' do
    step "I should see '#{@new_text}'"
  end

  step 'I delete some static text :title' do |title|
    step 'I go to the "Static Texts" section'
    within "#static_text_#{StaticText.where(title: title).first.id}" do
      click_on 'Delete'
    end
  end
end
