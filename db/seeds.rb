require 'faker'

Sponsor.delete_all
Sponsor.create(Array.new(rand(10..20)) do
  name = Faker::Company.name

  {
    name: name,
    twitter: "@#{name.split(/\W/).first.downcase}",
    website: Faker::Internet.url,
    description: Faker::Lorem.paragraphs.join("\n"),
  }
end)

num_locations = rand(10..20)
Location.delete_all
Location.create(Array.new(num_locations) do
  {
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraphs.join("\n"),
  }
end)


Proposal.delete_all
Proposal.create(Array.new(rand(10..20)) do
  name = Faker::Name.name
  {
    name: Faker::Name.name,
    email: Faker::Internet.email,
    twitter: "@#{name.split(/\W/).first.downcase}",
    title: Faker::Lorem.words.join(' '),
    description: Faker::Lorem.paragraphs.join("\n"),
    audience: Faker::Lorem.words.join(' '),
    justification: Faker::Lorem.paragraphs.join("\n"),
    given_before: Faker::Lorem.paragraphs.join("\n"),
    session_type: Faker::Lorem.words.join(' '),
  }
end)

StaticText.delete_all
StaticText.create(Array.new(rand(10..20)) do
  {
    title: Faker::Lorem.words.join(' '),
    text: Faker::Lorem.paragraphs.join("\n"),
  }
end)

Deadlines.delete_all
Deadlines.create(Array.new(rand(10..20)) do
  { name: Faker::Name.name }
end)

num_speakers = rand(10..20)
Speaker.delete_all
Speaker.create(Array.new(num_speakers) do
  name = Faker::Name.name

  {
    name: name,
    twitter: "@#{name.split(/\W/).first.downcase}",
    website: Faker::Internet.url,
    bio: Faker::Lorem.paragraphs.join("\n"),
    company_name: Faker::Company.name,
    company_url: Faker::Internet.url,
  }
end)

Session.delete_all
Session.create(Array.new(rand(10..20)) do
  {
    title: Faker::Lorem.words.join(' '),
    description: Faker::Lorem.paragraphs.join("\n"),
    session_type: Faker::Lorem.words.join(' '),
    room: "#{Faker::Lorem.words.join(' ')} ##{Faker::Address.building_number}",
    location_id: rand(0...num_locations),
    speaker_id: rand(0...num_speakers),
  }
end)
