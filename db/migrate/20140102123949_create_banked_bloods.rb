class CreateBankedBloods < ActiveRecord::Migration
  def change
    create_table :banked_bloods do |t|
      t.string :donor
      t.string :bloodgroup
      t.string :donated_to
      t.datetime :date
      t.references :hospital, index: true

      t.timestamps
    end
  end
end
