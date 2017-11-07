class AddHostIdForeignKeyToEvents < ActiveRecord::Migration[5.1]
  def change
    change_column :events, :host_id, :integer, foreign_key: true
  end
end
