class Order < ActiveRecord::Base
	validates :address, :city, :postcode, presence: true

	belongs_to :listing
	belongs_to :buyer, class_name: "User"
end
