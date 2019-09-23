class RenameStepsId < ActiveRecord::Migration[5.1]
  def change
    rename_column :steps, :steps_id, :task_id
  end
end
