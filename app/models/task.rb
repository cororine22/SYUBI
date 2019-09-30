class Task < ApplicationRecord
    has_many :steps

    validates :title, presence: true
    validates :title, length: { in: 1..20}
end
