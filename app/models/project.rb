class Project < ActiveRecord::Base
  belongs_to :Category
  validates :name, :presence => true
end
