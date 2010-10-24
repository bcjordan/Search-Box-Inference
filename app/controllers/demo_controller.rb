class DemoController < ApplicationController
  def index
  end

# models/project.rb
def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

end
