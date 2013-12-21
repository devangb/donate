class AddBloodgroupToUser < ActiveRecord::Migration
  def change
    add_column :users, :bloodgroup, :string
  end
end
