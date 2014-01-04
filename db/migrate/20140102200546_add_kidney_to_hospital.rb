class AddKidneyToHospital < ActiveRecord::Migration
  def change
    add_column :hospitals, :kidneydonor, :string
    add_column :hospitals, :kidneydonated_to, :string
    add_column :hospitals, :kidneybloodgroup, :string
    add_column :hospitals, :kidneybonemarrow, :string
    add_column :hospitals, :kidney_date, :datetime
    add_column :hospitals, :kidneytissue_type, :string
  end
end
