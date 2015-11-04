class CreateNominations < ActiveRecord::Migration
  def change
    create_table :nominations do |t|
      t.integer :user_id
      t.string :nominee
      t.string :specialty
      t.timestamps null: false
    end
  end
end
