class CreateListItems < ActiveRecord::Migration[5.2]
  def change
    create_table :list_items do |t|
      t.string :name
      t.string :description
      t.string :img_url

      t.timestamps
    end
  end
end
