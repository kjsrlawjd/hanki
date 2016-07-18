class CreateGachilists < ActiveRecord::Migration
  def change
    create_table :gachilists do |t|

      t.string "title"
      t.string "content"




      t.timestamps null: false
    end
  end
end
