class Message < ApplicationRecord
  belongs_to :user
  validates :body, presence: true, length: { minimum: 1, maximum: 300 }
  scope :custom_display, -> { order(:created_at).last(10) }
end
