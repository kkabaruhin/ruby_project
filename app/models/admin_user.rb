class AdminUser < ApplicationRecord
  ADMIN_ROLE = 'admin'
  AUTHOR_ROLE = 'author'
  GUEST_ROLE = 'guest'
  ROLES =[ADMIN_ROLE, AUTHOR_ROLE, GUEST_ROLE]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable

  validates :role, inclusion: {in: ROLES, message: 'Undefined role'}
end
