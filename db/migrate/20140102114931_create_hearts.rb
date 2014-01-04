class CreateHearts < ActiveRecord::Migration
  def change
    create_table :hearts do |t|
      t.string :heartdonor
      t.string :heartdonated_to
      t.string :heartbloodgroup
      t.string :heartbonemarrow
      t.references :hospital, index: true
      t.string :date

      t.timestamps
    end
  end
end
