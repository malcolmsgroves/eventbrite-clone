class User < ApplicationRecord
  has_many :hosted_events, foreign_key: :host_id, class_name: 'Event'
  has_many :invitations

  has_many :invited_events, through: :invitations,
                            source: :event,
                            class_name: 'Event'
  validates :username, presence: true,
                       length: { maximum: 50 },
                       uniqueness: { case_sensitive: false }
  before_save { username.downcase! }


  # add method to retrieve attending EventsController
  # method for invited but not attending evnets
  # method for upcoming events
  # method for past events

  def upcoming_events
    invited_events.upcoming_events
  end

  def past_events
    invited_events.past_events
  end

=begin
  has_many :sent_invitations, through: :hosted_events,
                              source: :invitation,
                              class_name: 'Invitation'
  has_many :invited_events, through: :received_invitations,
                            source: :event
=end
end
