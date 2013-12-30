class Hospital < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :hospital_zip, :hospital_address, :hospital_name, :doctor_incharge,
				  :hospital_city, :hospital_phone, :email, :password

   def self.search(search, group)
   	if search
   		find(:all, :conditions => ['zip LIKE ? AND bloodgroup LIKE ?', "%#{search}%", "%#{group}%"])

   	else
   		find(:all)
   	end
   end
end
