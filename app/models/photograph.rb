class Photograph < ActiveRecord::Base
  has_many :tag_hashes, :dependent => :destroy
  belongs_to :user
  mount_uploader :image, ImageUploader
  attr_accessor :photograph

  validates :title, presence: true
  validates :description, presence: true
  validates :image, presence: true

end
