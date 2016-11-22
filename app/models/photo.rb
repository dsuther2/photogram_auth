class Photo < ActiveRecord::Base
  #Photo user_id: presence
  validates :user_id, :presence => true

  #associations
  #Photos have many comments, a comment belongs to a photo
  has_many :comments

  #Photos have many likes, a like belongs to a photo
  has_many :likes

  #Photos have many fans through likes (source: user):
  has_many :fans, :through => :likes, :source => :user

  #Users have many photos, a photo belongs to a user
  belongs_to :user

end
