class AddDetails < ActiveRecord::Migration[5.1]
  def change
    add_column :steps, :detail, :string
  end
end
