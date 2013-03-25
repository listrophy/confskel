ActiveAdmin.register Proposal do

  member_action :approve, method: :put do

    proposal = Proposal.find params[:id]
    speaker = Speaker.new name: proposal.name, twitter: proposal.twitter

    if speaker.save
      flash[:message] = """
        Speaker \"#{speaker.name}\" has been approved.
        You can fill in extra details here, or you can come back later;
        everything has been saved up to this point
      """
      redirect_to edit_admin_speaker_path(speaker.id)
    else
      flash[:error] = 'Cannot approve a speaker without a name'
      redirect_to admin_proposals_path
    end

  end

  index do
    column do |proposal|
      if Speaker.exists? name: proposal.name
        link_to 'View speaker', admin_speaker_path(Speaker.find_by_name(proposal.name))
      else
        link_to 'Approve', approve_admin_proposal_path(proposal), method: :put
      end
    end
    column :title
    column :name
    column :email
    column :twitter
    column :session_type
    column :audience
    column 'Description' do |proposal|
      truncate(proposal.description, {length: 140})
    end
    column 'Justification' do |proposal|
      truncate(proposal.justification, {length: 140})
    end
    column 'Given Before' do |proposal|
      truncate(proposal.given_before, {length: 140})
    end
    default_actions
  end

end
