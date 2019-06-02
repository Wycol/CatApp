json.array! @missPeople do |person|
    json.id person.id
    json.image person.image.to_s
    json.name person.name.to_s
    json.lastname person.lastname.to_s
    json.age person.age
    json.gender person.gender
  end