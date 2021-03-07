class MultiGame < ApplicationRecord
    has_many :multi_scores, dependent: :destroy  
    has_many :players, dependent:  :destroy
end
