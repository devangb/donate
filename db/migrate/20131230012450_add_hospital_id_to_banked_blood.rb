class AddHospitalIdToBankedBlood < ActiveRecord::Migration
  def change
    add_column :banked_bloods, :hospital_id, :reference
  end
end
