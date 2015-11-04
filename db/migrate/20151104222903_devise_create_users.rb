class DeviseCreateUsers < ActiveRecord::Migration

  def change
    create_table(:users) do |t|
      t.string :provider
      t.string :uid
      t.index :provider
      t.index :uid
    end
  end

end
