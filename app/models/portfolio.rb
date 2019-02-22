class Portfolio < ApplicationRecord
  validates_presence_of :title, :main_image, :body, :thumb_image

  def self.angular 
    where(subtitle: 'Angular')
  end 


end
