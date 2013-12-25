class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   attr_accessible :email, :password, :address, :phone, :bloodgroup, :name, :zip, :availability, :lastdonated, :age, :city, :gender

   def self.search(search, group)
   	if search
   		find(:all, :conditions => ['zip LIKE ? AND bloodgroup LIKE ?', "%#{search}%", "%#{group}%"])

   	else
   		find(:all)
   	end
   end
end
