class Event < ActiveRecord::Base
  validates :location, presence: true
  validates :total_amount, presence: true
  validates :paid_by_amar, presence: true
  validates :paid_by_akbar, presence: true
  validates :paid_by_anthony, presence: true

  enum event_types: [:lunch, :dinner, :snacks]
end
