class CreateGachires < ActiveRecord::Migration
  def change
    create_table :gachires do |t|

      t.text "content"

      t.integer "gachilist_id"

      t.timestamps null: false
    end
  end
end
