class ChangeStutusColumnToSteps < ActiveRecord::Migration[5.1]
  def change
    change_column :steps, :status, :integer
  end
end
