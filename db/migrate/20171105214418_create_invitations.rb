class CreateInvitations < ActiveRecord::Migration[5.1]
  def change
    create_table :invitations do |t|
      t.references :event, foreign_key: true
      t.references :invited_user, foreign_key: true
      t.boolean :attending

      t.timestamps
    end
  end
end
