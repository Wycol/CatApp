json.array! @resources do |resource|
    json.id resource.id
    json.name resource.name.to_s
    json.localization resource.localization.to_s
    json.type resource.category
end