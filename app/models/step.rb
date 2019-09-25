class Step < ApplicationRecord
    belongs_to :task

    validates :detail, presence: true
    
    enum status: {未着手: 0, 進行中: 1,完了: 2}
end
