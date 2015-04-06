class Message < ActiveRecord::Base
  default_scope -> { order(level: :asc, created_at: :desc) }

  validates :nickname, presence: true
  validates :msg, presence: true
  enum level: [:admin, :top, :normal]
end
