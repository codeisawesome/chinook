class Album < ActiveRecord::Base

  def self.starts_with(first_letter)
    where('title ILIKE ?', first_letter + '%')
  end

  def self.last_5
    order('created_at').limit(5)
  end

  def self.first_created
    order(created_at: :asc).first_created
  end
  
end
