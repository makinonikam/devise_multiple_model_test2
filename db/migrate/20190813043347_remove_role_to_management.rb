class RemoveRoleToManagement < ActiveRecord::Migration[5.2]
  def change
    remove_column :managements, :role
  end
end
