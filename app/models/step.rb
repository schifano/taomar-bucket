class Step < ActiveRecord::Base
	belongs_to :list
    # Syntax here is different in Rails 4
	scope :completed, -> { where(completed: true) }
    scope :incompleted, -> { where(completed: false) }

end
