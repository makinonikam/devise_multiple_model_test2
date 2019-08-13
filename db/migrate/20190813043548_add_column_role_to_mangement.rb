class AddColumnRoleToMangement < ActiveRecord::Migration[5.2]
  def change
    add_column :managements, :role, :string
  end
end
