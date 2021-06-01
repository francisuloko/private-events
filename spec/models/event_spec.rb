require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'Associations' do
    it { should have_many(:event_attendees) }
    it { should have_many(:attendees) }
    it { should belong_to(:creator).class_name('User') }
  end
end

RSpec.describe Event, type: :model do
  subject do
    User.create(id: 10, name: 'Foo', email: 'foo@bar.com', password: '123456')
    
    Event.new(name: 'Event name',
              description: 'Lorem ipsum',
              event_date: DateTime.now,
              location: 'Earth',
              creator_id: 10)
  end

  it 'has all required field' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a description' do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a date' do
    subject.event_date = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a location' do
    subject.location = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a creator_id logged in' do
    subject.creator_id = 999
    expect(subject).to_not be_valid
  end
end
