class CreateJoinTableBetweenUsersAndNominations < ActiveRecord::Migration
  def change
    create_table :users_nominations, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :nomination, index: true
    end
  end
end
