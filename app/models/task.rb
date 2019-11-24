class Task < ApplicationRecord
    has_many :steps, -> { order(position: :asc) }

    validates :title, presence: true
    validates :title, length: { in: 1..20}
end
