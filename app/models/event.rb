class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'

  has_many :event_attendees, foreign_key: :attended_event_id
  has_many :attendees, through: :event_attendees

  scope :future, -> { where('event_date >= ?', Date.today).order('event_date ASC') }
  scope :past, -> { where('event_date <  ?', Date.today).order('event_date DESC') }

  validates :name, :description, :location, :event_date, presence: true
end
