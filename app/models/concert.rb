class Concert < ActiveRecord::Base
  attr_accessible :date, :full_desc, :name_art, :price, :song, :time_dur, :title, :user_id, :image

  validates_presence_of :title, :date, :full_desc, :name_art, :user_id

  has_attached_file :image
 
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "50x50>" }

  belongs_to :user
  
end
