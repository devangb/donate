class Hospital < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :hospital_zip, :hospital_address, :hospital_name, :doctor_incharge,
				  :hospital_city, :hospital_phone, :email, :password, :donor, :donated_to, :bloodgroup, :date,
          :kidneydonor, :kidneydonated_to, :kidneybloodgroup, :kidneybonemarrow, :kidney_date, :kidneytissue_type

  has_many :banked_bloods
  has_many :kidneys

   def self.search(search)
   	if search
   		find(:all, :conditions => ['hospital_zip LIKE ?', "%#{search}%"])

   	else
   		find(:all)
   	end
   end
end
