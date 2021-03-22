class Account < ApplicationRecord
	belongs_to :user
	has_many :transactions, dependent: :destroy
	accepts_nested_attributes_for :transactions, allow_destroy: true

    validates :ac_type, :opening_date,:status,:user_id, presence: true

	before_create :change_ac_id
	def change_ac_id
		acc_id = Random.new.bytes(5).bytes.join[0,5]
		self.ac_no=acc_id
		self.balance=self.transactions[0].tx_amount
	end

end
