class AddYearIdAndMonthIdToList < ActiveRecord::Migration
  def change
    add_column :lists, :year_id, :integer
    add_column :lists, :month_id, :integer
  end
end
