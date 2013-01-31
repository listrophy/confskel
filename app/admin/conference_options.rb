ActiveAdmin.register ConferenceOptions do
  # There should only be one set of options per site...
  # so we won't need a lot of pagination-related options
  # on this index page
  config.batch_actions = false
  config.filters       = false
  config.paginate      = false

  index download_links: false, as: :block do |conference_option|
    #
    # Call for proposals
    #
    open   = conference_option.proposals_open
    closed = conference_option.proposals_closed

    h2 "Call for proposals:"
    div class: "open" do
      "Open at: " + open.strftime("%A, %B #{open.day.ordinalize} %Y at %l:%M%P")
    end
    div class: "closed" do
      "Closed at: " + closed.strftime("%A, %B #{closed.day.ordinalize} %Y at %l:%M%P")
    end

    #
    # Note: display new options here...
    #

    # edit/delete links for _all_ conference options (there should only be one instance)
    div do
      span link_to 'Edit', edit_resource_path(conference_option)
      span link_to 'Delete', resource_path(conference_option), method: :delete, data: { confirm: I18n.t('active_admin.delete_confirmation') }
    end
  end

  form do |f|
    f.semantic_errors
    f.inputs
    f.actions
  end
end
