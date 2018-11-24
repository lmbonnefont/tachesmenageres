class CreateUserTans < ActiveRecord::Migration[5.2]
  def change
    create_table :user_tans do |t|
      t.integer :score
      t.references :user, foreign_key: true
      t.references :tache_menagere, foreign_key: true

      t.timestamps
    end
  end
end
