class Comment < ActiveRecord::Base

  #user_id: presence
  validates :user_id, :presence => true

  #photo_id: presence
  validates :photo_id, :presence => true

  #body: presence
  validates :body, :presence => true

  #associations
  #Photos have many comments, a comment belongs to a photo
  belongs_to :photo

  #Users have many comments, a comment belongs to a user
  belongs_to :user

end
