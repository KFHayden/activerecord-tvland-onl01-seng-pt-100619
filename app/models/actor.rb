class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    self.first_name+" "+last_name
  end
  
  def list_roles
    self.characters.map do |t|
      "#{t.name} - #{t.show.name}"
    end[0]
  end
  
end