class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :tname
      t.integer :list_id

      t.timestamps
    end
  end
end
