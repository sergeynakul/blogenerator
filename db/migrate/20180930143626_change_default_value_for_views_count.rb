class ChangeDefaultValueForViewsCount < ActiveRecord::Migration[5.2]
  def change
    change_column_default :posts, :views_count, 0
  end
end
