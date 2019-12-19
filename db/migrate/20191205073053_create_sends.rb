class CreateSends < ActiveRecord::Migration[5.2]
  def change
    create_table :sends do |t|

      t.timestamps
      t.integer :user_id, null: false
      t.string :name, null: false
      t.string :postcode, null: false
      t.string :address, null: false
      t.datetime :deleted_at
    end
  end
end
