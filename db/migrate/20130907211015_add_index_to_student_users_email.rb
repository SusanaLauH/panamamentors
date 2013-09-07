class AddIndexToStudentUsersEmail < ActiveRecord::Migration
  def change
    add_index :student_users, :email, unique: true
  end
end
