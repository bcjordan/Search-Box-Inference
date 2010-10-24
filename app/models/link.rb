class Link < ActiveRecord::Base
  validates :name, :presence => true
  validates :url, :presence => true
  
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}"])
    else
      find(:all)
    end
  end
end
