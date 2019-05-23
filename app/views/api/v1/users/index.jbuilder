json.array! @users do |p|
  json.id p.id
    json.name p.name.to_s
    json.email p.email.to_s
    json.password_digest p.password_digest

  
  end
  