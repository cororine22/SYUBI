class Step < ApplicationRecord
    belongs_to :task
    acts_as_list scope: :parent

    validates :title, presence: true
    validates :title, length: { in: 1..20}
    validates :detail, length: { maximum: 140}
    
    enum status: {未着手: 0, 進行中: 1,完了: 2}
end
