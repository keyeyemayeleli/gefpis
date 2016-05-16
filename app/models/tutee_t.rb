class TuteeT < ActiveRecord::Base
	belongs_to :module_t
	has_many :tpr_ts
	has_many :worksheet_ts
	def to_label
		"#{self.last_name}, #{self.first_name} "
	end
end
