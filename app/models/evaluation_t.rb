class EvaluationT < ActiveRecord::Base
	validates :email, presence: true
	validates :password, presence: true

	belongs_to :member_t
end
