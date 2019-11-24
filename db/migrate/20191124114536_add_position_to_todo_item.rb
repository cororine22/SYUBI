class AddPositionToTodoItem < ActiveRecord::Migration[5.1]
  def change
    add_column :steps, :position, :integer
  end
end
