class Category < ActiveRecord::Base
  has_many :categorizations
  has_many :specialties
  validates :name, presence: true, uniqueness: true
  validates :bullhorn_id, presence: true, uniqueness: true
end
