json.array! @missPeople do |person|
    json.id person.id
    json.image person.image.to_s
    json.name person.name.to_s
    json.lastname person.lastname.to_s
    json.age person.age
    json.gender person.gender
    json.description person.description
    json.height person.height
    json.weight person.weight
    json.eye person.eye
    json.race person.race
    json.hair person.hair
    json.hair_color person.hair_color
    json.complexion person.complexion
    json.created_at person.created_at
    json.updated_at person.updated_at
  end