class CreateKidneys < ActiveRecord::Migration
  def change
    create_table :kidneys do |t|
      t.string :kidneydonor
      t.string :kidneydonated_to
      t.string :kidneybloodgroup
      t.string :kidneybonemarrow
      t.references :hospital, index: true
      t.datetime :date
      t.string :kidneytissue_type

      t.timestamps
    end
  end
end
