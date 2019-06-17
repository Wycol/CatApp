json.id @resource.id
json.name @resource.name.to_s
json.localization @resource.localization.to_s
json.category @resource.category
json.created_at @resource.created_at
json.updated_at @resource.updated_at
json.form_fields @resource.form_fields do |field|
    json.field field.label
    json.value field.value
    json.input_type field.input_type
    json.resource_id field.resource_id
end
json.users @resource.users do |p|
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
end