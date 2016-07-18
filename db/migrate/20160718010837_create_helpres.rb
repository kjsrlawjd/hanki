class CreateHelpres < ActiveRecord::Migration
  def change
    create_table :helpres do |t|

      t.text "content"

      t.integer "helplist_id"

      t.timestamps null: false
    end
  end
end
