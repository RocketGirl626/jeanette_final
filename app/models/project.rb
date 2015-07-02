class Project < ActiveRecord::Base
  belongs_to :Category
  validates :name, :presence => true
  validates :description, :presence => true
  validates :github, :presence => true
end
