class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
##ASK ABOUT THIS:(is there a dif way to do this, or pluck)
  def list_roles
    self.characters.map do |character|
        "#{character.name} - #{character.show.name}"
    end
  end
end
