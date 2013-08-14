class Project < ActiveRecord::Base
  attr_accessible :name
  validates :name, :presence => true, :uniqueness => true
  
  scope :readable_by, lambda { |user| joins (:permissions).where(:permissions => {:action => "view", :user_id => user.id})}
  has_many :tickets, :dependent => :destroy

  def self.for(user)
    user.admin? ? Project : Project.readable_by(user)
  end
end
