json.array! @users do |p|
  json.id p.id
    json.name p.name.to_s
    json.email p.email.to_s
    json.password_digest p.password_digest
    json.tipo p.tipo.to_s
    json.active p.active
    json.age p.age
    json.dni p.dni
    json.phone p.phone
    json.perfil p.perfil
    json.created_at p.created_at
    json.updated_at p.updated_at
    json.resources p.resources do |resource|
      json.id resource.id
      json.name resource.name
      json.localization resource.localization
      json.created_at resource.created_at
      json.updated_at resource.updated_at
  end
  end
  