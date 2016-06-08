json.array!(@events) do |event|
  json.extract! event, :id, :location, :total_amount, :paid_by_amar, :paid_by_akbar, :paid_by_anthony
  json.url event_url(event, format: :json)
end
