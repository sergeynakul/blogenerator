json.extract! user_profile, :id, :user_id, :firstname, :lastname, :date_of_birth, :sex, :avatar, :created_at, :updated_at
json.url user_profile_url(user_profile, format: :json)
