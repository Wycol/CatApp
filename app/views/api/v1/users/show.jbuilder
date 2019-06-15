      json.id @user.id
      json.name @user.name.to_s
      json.email @user.email.to_s
      json.password_digest @user.password_digest
      json.tipo @user.tipo.to_s
      json.active @user.active
      json.age @user.age
      json.dni @user.dni
      json.phone @user.phone
      json.perfil @user.perfil
      json.resources @user.resources do |resource|
            json.id resource.id
            json.name resource.name
            json.localization resource.localization
            json.created_at resource.created_at
            json.updated_at resource.updated_at
          end
    
