class DeviseTokenAuthCreateUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :provider, :string, null: false, default: 'email', index: true
    add_column :users, :uid, :text, null: false, default: '', index: true
    add_column :users, :tokens, :string
  end
end
