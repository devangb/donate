class Kidney < ActiveRecord::Base
  belongs_to :hospital

  attr_accessible :kidneydonor, :kidneydonated_to, :kidneybloodgroup, :kidneybonemarrow, :date, :kidneytissue_type
end
