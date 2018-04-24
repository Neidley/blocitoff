class FixUsersTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :users
    create_table(:users) do |t|
      t.column :email, :string
      t.column :password_digest, :string
    end
  end
end
