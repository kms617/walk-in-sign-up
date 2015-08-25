class Candidate < ActiveRecord::Base
  has_many :categorizations
  def formatted_name
    "#{first_name} #{last_name}"
  end
end
