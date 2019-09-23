class CreateProgresses < ActiveRecord::Migration[5.1]
  def change
    create_table :progresses do |t|
      t.string :title
      t.integer :tasks_id

      t.timestamps
    end
  end
end
