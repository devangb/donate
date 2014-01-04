class AddVerifiedToHospitals < ActiveRecord::Migration
  def change
    add_column :hospitals, :verify, :boolean
  end
end
