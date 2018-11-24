class CreateColocations < ActiveRecord::Migration[5.2]
  def change
    create_table :colocations do |t|
      t.text :address
      t.text :name

      t.timestamps
    end
  end
end
