class Candidate < ActiveRecord::Base
  def formatted_name
    "#{first_name} #{last_name}"
  end
end
