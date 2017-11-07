class Invitation < ApplicationRecord
  belongs_to :user
  # belongs_to :host, :class_name => "User", through: :event, source: :host
  belongs_to :event
end
