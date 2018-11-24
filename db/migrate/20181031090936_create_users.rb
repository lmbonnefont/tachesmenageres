class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :mail_address
      t.text :password
      t.text :name

      t.timestamps
    end
  end
end
