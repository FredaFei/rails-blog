class CreateComments < ActiveRecord::Migration[5.2]
  def change
    drop_table :comments
    create_table :comments do |t|
      t.text :comment

      t.timestamps
    end
  end
end
