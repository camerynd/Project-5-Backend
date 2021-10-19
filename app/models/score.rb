class Score < ApplicationRecord
    belongs_to :user

    def self.highest_score
        ordered_items = self.all.sort_by{|item| item.score}
        ordered_items.last(5).reverse()
    end 

end
