class CreateStudentUsers < ActiveRecord::Migration
  def change
    create_table :student_users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password
      t.string :studies_level
      t.string :field
      t.string :interests
      t.string :mentor

      t.timestamps
    end
  end
end
