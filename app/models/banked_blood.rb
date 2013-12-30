class BankedBlood < ActiveRecord::Base

	attr_accessible :donor, :bloodgroup, :donated_to, :date
end
