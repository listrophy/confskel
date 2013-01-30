ActiveAdmin.register Proposal do
  index do
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
