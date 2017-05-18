json.extract! user_account, :id, :name, :acc_val_before, :created_at, :updated_at
json.url user_account_url(user_account, format: :json)
