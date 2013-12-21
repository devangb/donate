class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :searchgroup
      t.string :searchzip

      t.timestamps
    end
  end
end
