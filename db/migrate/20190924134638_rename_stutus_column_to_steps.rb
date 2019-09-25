class RenameStutusColumnToSteps < ActiveRecord::Migration[5.1]
  def change
    rename_column :steps, :stutus, :status :integer
  end
end
