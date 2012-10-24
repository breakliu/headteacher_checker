class AddGnameToPost < ActiveRecord::Migration
  def change
    add_column :posts, :gname, :string
  end
end
