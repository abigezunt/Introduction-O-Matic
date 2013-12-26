class User < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  belongs_to :event
  # validates :image, :attachment_presence => true

  def self.sample
  	sample = User.take(5)
  	sample << User.last
  end
end
