class MemberT < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  	validates :email, presence: true
	validates :password, presence: true
	validates :id_number, presence: true
	validates :year_course, presence: true
	validates :scholarship, presence: true
	validates :committee, presence: true
	validates :membership, presence: true
	validates :contact_no, presence: true
	validates :first_name, presence: true
	validates :last_name, presence: true

	has_many :module_ts
	has_many :tpr_ts
	has_many :evaluation_ts
	has_many :worksheet_ts

	def to_label
		"#{self.id_number}"
	end
end
