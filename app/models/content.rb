class Content < ApplicationRecord
  validates :url, presence: true
  validates :name, presence: true
  validates :first_plan, presence: true
  belongs_to :user
end
