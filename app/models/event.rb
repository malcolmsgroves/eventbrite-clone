class Event < ApplicationRecord
  belongs_to :host, class_name: 'User'
  has_many :invitations
  has_many :invitees, through: :invitations,
                      source: :user,
                      class_name: 'User'

  validates :name, presence: true, length: { maximum: 50 }
  validates :date, presence: true
  validates :location, presence: true
  validates :description, length: { maximum: 250 }
  

  def self.upcoming_events
    self.where('date >= ?', Date.today).order(date: :desc).all
  end

  def self.past_events
    self.where('date < ?', Date.today).order(date: :desc).all
  end


=begin
  has_many :invited_users, through: :invitations,
                           source: :invited_user
  has_many :invitations
  # has_many :invitees, through: :invitations, source: :invited_user
=end
end
