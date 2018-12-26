class Announcement < ApplicationRecord

  validates_presence_of :title, :body

  private
end