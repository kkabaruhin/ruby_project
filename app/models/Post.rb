class Post < ApplicationRecord
  belongs_to :admin_user

  validates_presence_of :title, :body
  scope :owned, ->(user) {where(admin_users: user) }

  private
end