class CreateTableNominationsUsers < ActiveRecord::Migration
  def change
    create_table :nominations_users do |t|
      t.belongs_to :nomination, index: true
      t.belongs_to :user, index: true
    end
  end
end
