class Url < ActiveRecord::Base
  # Remember to create a migration!
  before_create :shorten_my_link
  validates :original_url, format: { with: /https?:\/\/[\w]*.?[\w]+.[\w]{2,4}/i }
  validates :original_url, presence: true
  validates :original_url, uniqueness: true
  

  def increase_page_count
    self.click_count += 1
    self.save
  end

  def self.find_or_create(attr)
    self.where(attr).first || self.create(attr)
  end


  def shorten_my_link  
    self.shortened_url = rand(10000).to_s
  end
end

