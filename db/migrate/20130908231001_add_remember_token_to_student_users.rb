class AddRememberTokenToStudentUsers < ActiveRecord::Migration
  def change
    add_column :student_users, :remember_token, :string
    add_index  :student_users, :remember_token
  end
end
