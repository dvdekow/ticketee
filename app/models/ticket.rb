class Ticket < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  belongs_to :state
  attr_accessible :description, :title, :user
  validates :title, :presence => true
  validates :description, :presence => true
  has_attached_file :asset
  has_many :comments
end
