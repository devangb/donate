class AddLastdonatedToUser < ActiveRecord::Migration
  def change
    add_column :users, :lastdonated, :datetime
  end
end
