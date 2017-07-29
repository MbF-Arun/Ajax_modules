class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.string :name
      t.string :restid

      t.timestamps
    end
  end
end
