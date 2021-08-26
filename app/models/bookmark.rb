class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6, too_short: "%{count} characters is the maximum allowed" }
  validates :list, uniqueness: { scope: [:movie] }
end
