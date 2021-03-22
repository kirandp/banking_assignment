class Transaction < ApplicationRecord
	belongs_to :account

	validate :calculate_account_balance
	validates :tx_amount,:tx_type, presence: true


	def calculate_account_balance
	  if self.account_id.present?
		account = Account.find(self.account_id)
		if tx_type == "Debit" 
			if account.balance.to_i - tx_amount.to_i > 0
			    account.balance = account.balance.to_i - tx_amount.to_i 
			else 
			    errors.add(:base, "Not sufficient balance...") 
		    end 
		else
			account.balance = account.balance.to_i + tx_amount.to_i
		end
		account.save
	  end
	end

end
