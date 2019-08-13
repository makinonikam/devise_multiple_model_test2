class AddColumnRoleToManagement < ActiveRecord::Migration[5.2]
  def change
    add_column :managements, :role, :integer
  end
end
