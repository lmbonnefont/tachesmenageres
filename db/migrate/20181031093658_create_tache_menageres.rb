class CreateTacheMenageres < ActiveRecord::Migration[5.2]
  def change
    create_table :tache_menageres do |t|
      t.text :name
      t.integer :frequence
      t.references :user, foreign_key: true
      t.references :colocation, foreign_key: true

      t.timestamps
    end
  end
end
