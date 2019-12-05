class CreateJenres < ActiveRecord::Migration[5.2]
  def change
    create_table :jenres do |t|

      t.timestamps
      t.string :genre_name, null: false
      t.datetime :deleted_at, default: false
    end
  end
end
