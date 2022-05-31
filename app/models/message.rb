class Message < ApplicationRecord
    validates :body, presence: true

    scope :filter_by_body, ->  (body) { where('body ILIKE ?', "%#{body}%") }
end
