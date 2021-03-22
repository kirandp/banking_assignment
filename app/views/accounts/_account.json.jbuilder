json.extract! account, :id, :ac_no, :ac_type, :opening_date, :closing, :balance, :status, :created_at, :updated_at
json.url account_url(account, format: :json)
