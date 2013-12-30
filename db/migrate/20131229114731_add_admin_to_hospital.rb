class AddAdminToHospital < ActiveRecord::Migration
  def change
    add_column :hospitals, :admin, :boolean, default: false
  end
end
