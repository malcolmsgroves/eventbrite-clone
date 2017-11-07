class AddForeignKeyToInvitation < ActiveRecord::Migration[5.1]
  def change
    rename_column :invitations, :invited_user_id, :user_id
  end
end
