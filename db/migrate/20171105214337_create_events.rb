class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.references :host, foreign_key: true
      t.datetime :date
      t.string :location

      t.timestamps
    end
  end
end
