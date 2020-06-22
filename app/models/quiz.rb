class Quiz < ApplicationRecord
	mount_uploader :img, ImgUploader
	belongs_to :user

	validates :img, presence: true
	validates :choice1, presence: true
	validates :choice2, presence: true
	validates :choice3, presence: true
	validates :choice4, presence: true
	validates :answer, presence: true
end
