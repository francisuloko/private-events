class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'

  has_many	:event_attendees, foreign_key: :attended_event_id
  has_many	:attendees, through: :event_attendees

  scope :future, -> { where('Date >= ?', Date.today).order('Date ASC') }
  scope :past, -> { where('Date <  ?', Date.today).order('Date DESC') }

  validates :name, :description, :location, :event_date, presence: true
end
