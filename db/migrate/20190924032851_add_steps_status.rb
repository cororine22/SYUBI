class AddStepsStatus < ActiveRecord::Migration[5.1]
  def change
    add_column :steps, :status, :integer, default: 0, null: false
  end
end
