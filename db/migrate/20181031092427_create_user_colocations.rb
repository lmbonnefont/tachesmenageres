class CreateUserColocations < ActiveRecord::Migration[5.2]
  def change
    create_table :user_colocations do |t|
      t.references :user, foreign_key: true
      t.references :colocation, foreign_key: true

      t.timestamps
    end
  end
end
