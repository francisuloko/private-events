class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :created_events, foreign_key: :creator_id, class_name: 'Event', dependent: :destroy

  has_many :event_attendees, foreign_key: :attendee_id, dependent: :destroy
  has_many :attended_events, through: :event_attendees

  validates :name, presence: true, length: { minimum: 2 }

  def attend!(event)
    event_attendees.create!(attended_event_id: event.id)
  end

  def cancel!(event)
    event_attendees.find_by(attended_event_id: event.id).destroy
  end
end