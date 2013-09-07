class AddPasswordDigestToMentorUsers < ActiveRecord::Migration
  def change
    add_column :mentor_users, :password_digest, :string
  end
end
