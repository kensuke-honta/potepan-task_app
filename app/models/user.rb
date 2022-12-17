class User < ApplicationRecord
    validates :title, presence: true,length: { in: 1..20 }
    validates :start_at, presence: true
    validates :end_at, presence: true
    validates :memo, length: { in: 0..500 }
    
    
    validate  :day_after_today 
        def day_after_today
            if start_at == nil || end_at < Date.today
              errors.add(:end_at, 'は、今日以降の日付を入力して下さい') 
            end
        end
end