class CreateMentorUsers < ActiveRecord::Migration
  def change
    create_table :mentor_users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password
      t.string :studies_level
      t.string :field
      t.string :interests

      t.timestamps
    end
  end
end
