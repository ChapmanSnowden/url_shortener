class Url < ActiveRecord::Base
  # Remember to create a migration!
  before_create :shorten_my_link
  # validate original_link format
  # validate original_link presence
  # validate original_link unique
  

  def increase_page_count
    self.click_count += 1
    self.save
  end

  # def self.find_or_create(attr)
  #   self.where(attr).first || self.create(attr)
  # end


  def shorten_my_link  
    self.shortened_url = rand(10000).to_s
  end
end

