class List < ActiveRecord::Base
  # attr_accessible :complete, :description, :list_id
  # not needed in Rails 4
  has_many :steps
end
