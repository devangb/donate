class AddAvailabilityToUser < ActiveRecord::Migration
  def change
    add_column :users, :availability, :boolean
  end
end
