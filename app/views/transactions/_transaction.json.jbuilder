json.extract! transaction, :id, :account_id, :tx_date, :tx_amount, :tx_type, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
