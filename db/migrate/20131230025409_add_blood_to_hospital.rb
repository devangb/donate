class AddBloodToHospital < ActiveRecord::Migration
  def change
    add_column :hospitals, :donor, :string
    add_column :hospitals, :bloodgroup, :string
    add_column :hospitals, :donated_to, :string
    add_column :hospitals, :date, :datetime
  end
end
