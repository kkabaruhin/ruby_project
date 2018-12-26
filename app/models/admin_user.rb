class AdminUser < ApplicationRecord
  ADMIN_ROLE = 'admin'
  CITIZEN_ROLE = 'citizen'
  SERVICES_ROLE = 'services'
  GUEST_ROLE = 'guest'
  ROLES =[ADMIN_ROLE, CITIZEN_ROLE, GUEST_ROLE, SERVICES_ROLE]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable

  validates :role, inclusion: {in: ROLES, message: 'Undefined role'}
end
