class AddCategoryToListItems < ActiveRecord::Migration[5.2]
  def change
    add_column :list_items, :category, :string
  end
end
