class CreateSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :steps do |t|
      t.string :title
      t.integer :task_id
      t.string :detail

      t.timestamps
    end
  end
end
