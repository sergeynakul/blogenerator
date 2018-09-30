class CreateUserProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_profiles do |t|
      t.references :user, foreign_key: true
      t.string :firstname
      t.string :lastname
      t.date :date_of_birth
      t.string :sex
      t.binary :avatar

      t.timestamps
    end
  end
end
