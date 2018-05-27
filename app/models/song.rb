class Song < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }, uniqueness: {case_sensitive: false}
  validates :artist, presence: true, length: { maximum: 40 }
  validates :anime, presence: true, length: { maximum: 100 }
  validates :nbre_vote, presence: true, numericality: true, inclusion: { in: 0..1000 }
  has_attached_file :photo
  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
