class TprT < ActiveRecord::Base
	validates :week_no, presence: true
	validates :tutee_t_id, presence: true
	validates :module_t_id, presence: true

	belongs_to :tutee_t
	belongs_to :member_t
	belongs_to :module_t
end
